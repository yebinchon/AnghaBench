
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_param {int dummy; } ;


 struct target_param* SLIST_NEXT (struct target_param*,int ) ;
 int tp ;

struct target_param *
target_next_param(struct target_param *param)
{
 if (param == ((void*)0))
  return (((void*)0));

 return (SLIST_NEXT(param, tp));
}
