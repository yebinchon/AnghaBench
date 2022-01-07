
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int basic_block ;


 int BB_END (int ) ;
 int any_condjump_p (int ) ;

__attribute__((used)) static bool
rtl_block_ends_with_condjump_p (basic_block bb)
{
  return any_condjump_p (BB_END (bb));
}
