
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tracepoint_entry {void** funcs; int refcount; } ;


 int EEXIST ;
 int ENOMEM ;
 void* ERR_PTR (int ) ;
 int WARN_ON (int) ;
 void** allocate_probes (int) ;
 int debug_print_probes (struct tracepoint_entry*) ;
 int memcpy (void**,void**,int) ;

__attribute__((used)) static void *
tracepoint_entry_add_probe(struct tracepoint_entry *entry, void *probe)
{
 int nr_probes = 0;
 void **old, **new;

 WARN_ON(!probe);

 debug_print_probes(entry);
 old = entry->funcs;
 if (old) {

  for (nr_probes = 0; old[nr_probes]; nr_probes++)
   if (old[nr_probes] == probe)
    return ERR_PTR(-EEXIST);
 }

 new = allocate_probes(nr_probes + 2);
 if (new == ((void*)0))
  return ERR_PTR(-ENOMEM);
 if (old)
  memcpy(new, old, nr_probes * sizeof(void *));
 new[nr_probes] = probe;
 new[nr_probes + 1] = ((void*)0);
 entry->refcount = nr_probes + 1;
 entry->funcs = new;
 debug_print_probes(entry);
 return old;
}
