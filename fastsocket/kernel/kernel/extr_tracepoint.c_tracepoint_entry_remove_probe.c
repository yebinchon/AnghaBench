
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tracepoint_entry {void** funcs; int refcount; } ;


 int ENOENT ;
 int ENOMEM ;
 void* ERR_PTR (int ) ;
 void** allocate_probes (int) ;
 int debug_print_probes (struct tracepoint_entry*) ;

__attribute__((used)) static void *
tracepoint_entry_remove_probe(struct tracepoint_entry *entry, void *probe)
{
 int nr_probes = 0, nr_del = 0, i;
 void **old, **new;

 old = entry->funcs;

 if (!old)
  return ERR_PTR(-ENOENT);

 debug_print_probes(entry);

 for (nr_probes = 0; old[nr_probes]; nr_probes++) {
  if ((!probe || old[nr_probes] == probe))
   nr_del++;
 }

 if (nr_probes - nr_del == 0) {

  entry->funcs = ((void*)0);
  entry->refcount = 0;
  debug_print_probes(entry);
  return old;
 } else {
  int j = 0;


  new = allocate_probes(nr_probes - nr_del + 1);
  if (new == ((void*)0))
   return ERR_PTR(-ENOMEM);
  for (i = 0; old[i]; i++)
   if ((probe && old[i] != probe))
    new[j++] = old[i];
  new[nr_probes - nr_del] = ((void*)0);
  entry->refcount = nr_probes - nr_del;
  entry->funcs = new;
 }
 debug_print_probes(entry);
 return old;
}
