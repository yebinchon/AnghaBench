
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mips16_constant_pool {int dummy; } ;
typedef int rtx ;


 scalar_t__ CONSTANT_POOL_ADDRESS_P (int ) ;
 scalar_t__ GET_CODE (int ) ;
 int Pmode ;
 scalar_t__ SYMBOL_REF ;
 int add_constant (struct mips16_constant_pool*,int ,int ) ;
 int gen_rtx_LABEL_REF (int ,int ) ;
 int get_pool_constant (int ) ;
 int get_pool_mode (int ) ;

__attribute__((used)) static int
mips16_rewrite_pool_refs (rtx *x, void *data)
{
  struct mips16_constant_pool *pool = data;
  if (GET_CODE (*x) == SYMBOL_REF && CONSTANT_POOL_ADDRESS_P (*x))
    *x = gen_rtx_LABEL_REF (Pmode, add_constant (pool,
       get_pool_constant (*x),
       get_pool_mode (*x)));
  return 0;
}
