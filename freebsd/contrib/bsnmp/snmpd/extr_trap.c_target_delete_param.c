
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_param {int dummy; } ;


 int SLIST_REMOVE (int *,struct target_param*,int ,int ) ;
 int free (struct target_param*) ;
 int target_param ;
 int target_paramlist ;
 int tp ;

int
target_delete_param(struct target_param *param)
{
 SLIST_REMOVE(&target_paramlist, param, target_param, tp);
 free(param);

 return (0);
}
