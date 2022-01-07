
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
struct version_info {TYPE_1__* iv; } ;
struct ivopts_data {int relevant; } ;
struct TYPE_2__ {int ssa_name; } ;


 int SSA_NAME_VERSION (int ) ;
 TYPE_1__* alloc_iv (int ,int ) ;
 int bitmap_set_bit (int ,int ) ;
 int gcc_assert (int) ;
 struct version_info* name_info (struct ivopts_data*,int ) ;

__attribute__((used)) static void
set_iv (struct ivopts_data *data, tree iv, tree base, tree step)
{
  struct version_info *info = name_info (data, iv);

  gcc_assert (!info->iv);

  bitmap_set_bit (data->relevant, SSA_NAME_VERSION (iv));
  info->iv = alloc_iv (base, step);
  info->iv->ssa_name = iv;
}
