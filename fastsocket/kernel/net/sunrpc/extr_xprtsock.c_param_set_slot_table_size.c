
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {int dummy; } ;


 int RPC_MAX_SLOT_TABLE ;
 int RPC_MIN_SLOT_TABLE ;
 int param_set_uint_minmax (char const*,struct kernel_param*,int ,int ) ;

__attribute__((used)) static int param_set_slot_table_size(const char *val, struct kernel_param *kp)
{
 return param_set_uint_minmax(val, kp,
   RPC_MIN_SLOT_TABLE,
   RPC_MAX_SLOT_TABLE);
}
