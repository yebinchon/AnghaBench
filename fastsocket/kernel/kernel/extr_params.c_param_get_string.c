
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kparam_string {int maxlen; int string; } ;
struct kernel_param {struct kparam_string* str; } ;


 int strlcpy (char*,int ,int ) ;

int param_get_string(char *buffer, struct kernel_param *kp)
{
 const struct kparam_string *kps = kp->str;
 return strlcpy(buffer, kps->string, kps->maxlen);
}
