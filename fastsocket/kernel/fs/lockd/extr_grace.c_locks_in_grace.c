
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int grace_list ;
 int list_empty (int *) ;

int locks_in_grace(void)
{
 return !list_empty(&grace_list);
}
