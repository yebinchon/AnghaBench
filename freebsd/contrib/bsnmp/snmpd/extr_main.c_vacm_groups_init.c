
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SLIST_INSERT_HEAD (int *,int *,int ) ;
 int vacm_default_group ;
 int vacm_grouplist ;
 int vge ;

void
vacm_groups_init(void)
{
 SLIST_INSERT_HEAD(&vacm_grouplist, &vacm_default_group, vge);
}
