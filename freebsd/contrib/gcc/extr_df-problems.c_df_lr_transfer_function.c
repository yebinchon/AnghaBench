
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct df_lr_bb_info {int def; int use; int out; int in; } ;
struct dataflow {int dummy; } ;
typedef int bitmap ;


 int bitmap_ior_and_compl (int ,int ,int ,int ) ;
 struct df_lr_bb_info* df_lr_get_bb_info (struct dataflow*,int) ;

__attribute__((used)) static bool
df_lr_transfer_function (struct dataflow *dflow, int bb_index)
{
  struct df_lr_bb_info *bb_info = df_lr_get_bb_info (dflow, bb_index);
  bitmap in = bb_info->in;
  bitmap out = bb_info->out;
  bitmap use = bb_info->use;
  bitmap def = bb_info->def;

  return bitmap_ior_and_compl (in, use, out, def);
}
