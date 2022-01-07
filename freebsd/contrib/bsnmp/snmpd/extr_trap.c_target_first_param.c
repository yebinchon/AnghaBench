
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_param {int dummy; } ;


 struct target_param* SLIST_FIRST (int *) ;
 int target_paramlist ;

struct target_param *
target_first_param(void)
{
 return (SLIST_FIRST(&target_paramlist));
}
