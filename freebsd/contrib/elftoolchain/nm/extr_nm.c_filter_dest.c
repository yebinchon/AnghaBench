
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filter_entry {int dummy; } ;


 int SLIST_EMPTY (int *) ;
 struct filter_entry* SLIST_FIRST (int *) ;
 int SLIST_REMOVE_HEAD (int *,int ) ;
 int filter_entries ;
 int free (struct filter_entry*) ;
 int nm_out_filter ;

__attribute__((used)) static void
filter_dest(void)
{
 struct filter_entry *e;

 while (!SLIST_EMPTY(&nm_out_filter)) {
  e = SLIST_FIRST(&nm_out_filter);
  SLIST_REMOVE_HEAD(&nm_out_filter, filter_entries);
  free(e);
 }
}
