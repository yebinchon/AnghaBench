
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filter_entry {int * fn; } ;
typedef int * fn_filter ;


 int SLIST_INSERT_HEAD (int *,struct filter_entry*,int ) ;
 int assert (int ) ;
 int filter_entries ;
 struct filter_entry* malloc (int) ;
 int nm_out_filter ;
 int warn (char*) ;

__attribute__((used)) static int
filter_insert(fn_filter filter_fn)
{
 struct filter_entry *e;

 assert(filter_fn != ((void*)0));

 if ((e = malloc(sizeof(struct filter_entry))) == ((void*)0)) {
  warn("malloc");
  return (0);
 }
 e->fn = filter_fn;
 SLIST_INSERT_HEAD(&nm_out_filter, e, filter_entries);

 return (1);
}
