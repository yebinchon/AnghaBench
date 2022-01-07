
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kparam_array {scalar_t__ num; int set; int elemsize; int elem; int max; } ;
struct kernel_param {int flags; int name; struct kparam_array* arr; } ;


 int param_array (int ,char const*,int,int ,int ,int ,int ,int ,unsigned int*) ;

int param_array_set(const char *val, struct kernel_param *kp)
{
 const struct kparam_array *arr = kp->arr;
 unsigned int temp_num;

 return param_array(kp->name, val, 1, arr->max, arr->elem,
      arr->elemsize, arr->set, kp->flags,
      arr->num ?: &temp_num);
}
