
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_session {int pevent; struct perf_evlist* evlist; } ;
struct perf_evsel_str_handler {int * handler; int name; } ;
struct TYPE_2__ {int * func; } ;
struct perf_evsel {TYPE_1__ handler; } ;
struct perf_evlist {int dummy; } ;
struct event_format {int id; } ;


 int EEXIST ;
 int ENOENT ;
 int ENOMEM ;
 int free (char*) ;
 struct perf_evsel* perf_evlist__find_tracepoint_by_id (struct perf_evlist*,int ) ;
 struct event_format* pevent_find_event_by_name (int ,char*,char*) ;
 char* strchr (char*,char) ;
 char* strdup (int ) ;

int __perf_session__set_tracepoints_handlers(struct perf_session *session,
          const struct perf_evsel_str_handler *assocs,
          size_t nr_assocs)
{
 struct perf_evlist *evlist = session->evlist;
 struct event_format *format;
 struct perf_evsel *evsel;
 char *tracepoint, *name;
 size_t i;
 int err;

 for (i = 0; i < nr_assocs; i++) {
  err = -ENOMEM;
  tracepoint = strdup(assocs[i].name);
  if (tracepoint == ((void*)0))
   goto out;

  err = -ENOENT;
  name = strchr(tracepoint, ':');
  if (name == ((void*)0))
   goto out_free;

  *name++ = '\0';
  format = pevent_find_event_by_name(session->pevent,
         tracepoint, name);
  if (format == ((void*)0)) {




   goto next;
  }

  evsel = perf_evlist__find_tracepoint_by_id(evlist, format->id);
  if (evsel == ((void*)0))
   goto next;

  err = -EEXIST;
  if (evsel->handler.func != ((void*)0))
   goto out_free;
  evsel->handler.func = assocs[i].handler;
next:
  free(tracepoint);
 }

 err = 0;
out:
 return err;

out_free:
 free(tracepoint);
 goto out;
}
