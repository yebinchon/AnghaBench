
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef int grant_ref_t ;


 int ENOSPC ;
 int get_free_entries (int ) ;

int gnttab_alloc_grant_references(u16 count, grant_ref_t *head)
{
 int h = get_free_entries(count);

 if (h < 0)
  return -ENOSPC;

 *head = h;

 return 0;
}
