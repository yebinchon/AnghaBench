
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kparam_array {int* num; int max; int elemsize; int (* get ) (char*,struct kernel_param*) ;scalar_t__ elem; } ;
struct kernel_param {scalar_t__ arg; struct kparam_array* arr; } ;


 int stub1 (char*,struct kernel_param*) ;

int param_array_get(char *buffer, struct kernel_param *kp)
{
 int i, off, ret;
 const struct kparam_array *arr = kp->arr;
 struct kernel_param p;

 p = *kp;
 for (i = off = 0; i < (arr->num ? *arr->num : arr->max); i++) {
  if (i)
   buffer[off++] = ',';
  p.arg = arr->elem + arr->elemsize * i;
  ret = arr->get(buffer + off, &p);
  if (ret < 0)
   return ret;
  off += ret;
 }
 buffer[off] = '\0';
 return off;
}
