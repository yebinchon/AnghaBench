
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ grant_ref_t ;


 scalar_t__ const GNTTAB_LIST_END ;

int gnttab_empty_grant_references(const grant_ref_t *private_head)
{
 return (*private_head == GNTTAB_LIST_END);
}
