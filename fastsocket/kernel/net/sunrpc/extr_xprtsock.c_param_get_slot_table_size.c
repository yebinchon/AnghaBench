
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {int dummy; } ;


 int param_get_uint (char*,struct kernel_param*) ;

__attribute__((used)) static int param_get_slot_table_size(char *buffer, struct kernel_param *kp)
{
 return param_get_uint(buffer, kp);
}
