
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tracepoint_entry {int refcount; } ;


 int ENOENT ;
 void* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (void*) ;
 struct tracepoint_entry* get_tracepoint (char const*) ;
 int remove_tracepoint (struct tracepoint_entry*) ;
 void* tracepoint_entry_remove_probe (struct tracepoint_entry*,void*) ;

__attribute__((used)) static void *tracepoint_remove_probe(const char *name, void *probe)
{
 struct tracepoint_entry *entry;
 void *old;

 entry = get_tracepoint(name);
 if (!entry)
  return ERR_PTR(-ENOENT);
 old = tracepoint_entry_remove_probe(entry, probe);
 if (IS_ERR(old))
  return old;
 if (!entry->refcount)
  remove_tracepoint(entry);
 return old;
}
