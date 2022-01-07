
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u64 ;
typedef size_t u32 ;
typedef int sz ;
struct perf_header {scalar_t__ needs_swap; } ;
struct perf_evsel {size_t idx; int needs_swap; size_t ids; size_t* id; int name; int attr; } ;
typedef scalar_t__ ssize_t ;
typedef int nre ;
typedef int nr ;


 size_t bswap_32 (size_t) ;
 size_t bswap_64 (size_t) ;
 void* calloc (size_t,int) ;
 int do_read_string (int,struct perf_header*) ;
 int free (void*) ;
 int free_event_desc (struct perf_evsel*) ;
 void* malloc (size_t) ;
 int memcpy (int *,void*,size_t) ;
 int perf_event__attr_swap (void*) ;
 scalar_t__ read (int,size_t*,int) ;

__attribute__((used)) static struct perf_evsel *
read_event_desc(struct perf_header *ph, int fd)
{
 struct perf_evsel *evsel, *events = ((void*)0);
 u64 *id;
 void *buf = ((void*)0);
 u32 nre, sz, nr, i, j;
 ssize_t ret;
 size_t msz;


 ret = read(fd, &nre, sizeof(nre));
 if (ret != (ssize_t)sizeof(nre))
  goto error;

 if (ph->needs_swap)
  nre = bswap_32(nre);

 ret = read(fd, &sz, sizeof(sz));
 if (ret != (ssize_t)sizeof(sz))
  goto error;

 if (ph->needs_swap)
  sz = bswap_32(sz);


 buf = malloc(sz);
 if (!buf)
  goto error;


 events = calloc(nre + 1, sizeof(*events));
 if (!events)
  goto error;

 msz = sizeof(evsel->attr);
 if (sz < msz)
  msz = sz;

 for (i = 0, evsel = events; i < nre; evsel++, i++) {
  evsel->idx = i;





  ret = read(fd, buf, sz);
  if (ret != (ssize_t)sz)
   goto error;

  if (ph->needs_swap)
   perf_event__attr_swap(buf);

  memcpy(&evsel->attr, buf, msz);

  ret = read(fd, &nr, sizeof(nr));
  if (ret != (ssize_t)sizeof(nr))
   goto error;

  if (ph->needs_swap) {
   nr = bswap_32(nr);
   evsel->needs_swap = 1;
  }

  evsel->name = do_read_string(fd, ph);

  if (!nr)
   continue;

  id = calloc(nr, sizeof(*id));
  if (!id)
   goto error;
  evsel->ids = nr;
  evsel->id = id;

  for (j = 0 ; j < nr; j++) {
   ret = read(fd, id, sizeof(*id));
   if (ret != (ssize_t)sizeof(*id))
    goto error;
   if (ph->needs_swap)
    *id = bswap_64(*id);
   id++;
  }
 }
out:
 if (buf)
  free(buf);
 return events;
error:
 if (events)
  free_event_desc(events);
 events = ((void*)0);
 goto out;
}
