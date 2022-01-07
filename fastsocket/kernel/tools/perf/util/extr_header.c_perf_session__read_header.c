
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
struct perf_trace_event_type {int dummy; } ;
struct perf_header {int frozen; int data_offset; scalar_t__ needs_swap; } ;
struct perf_session {int * evlist; int pevent; scalar_t__ fd_pipe; struct perf_header header; } ;
struct TYPE_7__ {int size; int offset; } ;
struct TYPE_5__ {int size; int offset; } ;
struct perf_file_header {int attr_size; TYPE_3__ event_types; TYPE_1__ attrs; } ;
struct TYPE_6__ {int size; int offset; } ;
struct perf_file_attr {TYPE_2__ ids; int attr; } ;
struct perf_evsel {scalar_t__ needs_swap; } ;
typedef int off_t ;
typedef int f_id ;
struct TYPE_8__ {int nr_events; } ;


 int EINVAL ;
 int ENOMEM ;
 int SEEK_CUR ;
 int SEEK_SET ;
 int errno ;
 int lseek (int,int ,int ) ;
 int * malloc (int) ;
 int perf_event__attr_swap (int *) ;
 int perf_evlist__add (int *,struct perf_evsel*) ;
 int perf_evlist__delete (int *) ;
 int perf_evlist__id_add (int *,struct perf_evsel*,int ,int,int ) ;
 int * perf_evlist__new (int *,int *) ;
 scalar_t__ perf_evlist__prepare_tracepoint_events (int *,int ) ;
 scalar_t__ perf_evsel__alloc_id (struct perf_evsel*,int,int) ;
 struct perf_evsel* perf_evsel__new (int *,int) ;
 scalar_t__ perf_file_header__read (struct perf_file_header*,struct perf_header*,int) ;
 int perf_file_section__process ;
 scalar_t__ perf_header__getbuffer64 (struct perf_header*,int,int *,int) ;
 int perf_header__process_sections (struct perf_header*,int,int *,int ) ;
 int perf_header__read_pipe (struct perf_session*,int) ;
 scalar_t__ read_attr (int,struct perf_header*,struct perf_file_attr*) ;
 TYPE_4__ symbol_conf ;
 int trace_event_count ;
 int * trace_events ;

int perf_session__read_header(struct perf_session *session, int fd)
{
 struct perf_header *header = &session->header;
 struct perf_file_header f_header;
 struct perf_file_attr f_attr;
 u64 f_id;
 int nr_attrs, nr_ids, i, j;

 session->evlist = perf_evlist__new(((void*)0), ((void*)0));
 if (session->evlist == ((void*)0))
  return -ENOMEM;

 if (session->fd_pipe)
  return perf_header__read_pipe(session, fd);

 if (perf_file_header__read(&f_header, header, fd) < 0)
  return -EINVAL;

 nr_attrs = f_header.attrs.size / f_header.attr_size;
 lseek(fd, f_header.attrs.offset, SEEK_SET);

 for (i = 0; i < nr_attrs; i++) {
  struct perf_evsel *evsel;
  off_t tmp;

  if (read_attr(fd, header, &f_attr) < 0)
   goto out_errno;

  if (header->needs_swap)
   perf_event__attr_swap(&f_attr.attr);

  tmp = lseek(fd, 0, SEEK_CUR);
  evsel = perf_evsel__new(&f_attr.attr, i);

  if (evsel == ((void*)0))
   goto out_delete_evlist;

  evsel->needs_swap = header->needs_swap;




  perf_evlist__add(session->evlist, evsel);

  nr_ids = f_attr.ids.size / sizeof(u64);





  if (perf_evsel__alloc_id(evsel, 1, nr_ids))
   goto out_delete_evlist;

  lseek(fd, f_attr.ids.offset, SEEK_SET);

  for (j = 0; j < nr_ids; j++) {
   if (perf_header__getbuffer64(header, fd, &f_id, sizeof(f_id)))
    goto out_errno;

   perf_evlist__id_add(session->evlist, evsel, 0, j, f_id);
  }

  lseek(fd, tmp, SEEK_SET);
 }

 symbol_conf.nr_events = nr_attrs;

 if (f_header.event_types.size) {
  lseek(fd, f_header.event_types.offset, SEEK_SET);
  trace_events = malloc(f_header.event_types.size);
  if (trace_events == ((void*)0))
   return -ENOMEM;
  if (perf_header__getbuffer64(header, fd, trace_events,
          f_header.event_types.size))
   goto out_errno;
  trace_event_count = f_header.event_types.size / sizeof(struct perf_trace_event_type);
 }

 perf_header__process_sections(header, fd, &session->pevent,
          perf_file_section__process);

 lseek(fd, header->data_offset, SEEK_SET);

 if (perf_evlist__prepare_tracepoint_events(session->evlist,
         session->pevent))
  goto out_delete_evlist;

 header->frozen = 1;
 return 0;
out_errno:
 return -errno;

out_delete_evlist:
 perf_evlist__delete(session->evlist);
 session->evlist = ((void*)0);
 return -ENOMEM;
}
