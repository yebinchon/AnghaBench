
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct df_urec_bb_info {int kill; int gen; int out; int in; } ;
struct dataflow {int dummy; } ;
typedef int bitmap ;


 int bitmap_ior_and_compl (int ,int ,int ,int ) ;
 struct df_urec_bb_info* df_urec_get_bb_info (struct dataflow*,int) ;

__attribute__((used)) static bool
df_urec_transfer_function (struct dataflow *dflow, int bb_index)
{
  struct df_urec_bb_info *bb_info = df_urec_get_bb_info (dflow, bb_index);
  bitmap in = bb_info->in;
  bitmap out = bb_info->out;
  bitmap gen = bb_info->gen;
  bitmap kill = bb_info->kill;

  return bitmap_ior_and_compl (out, gen, in, kill);
}
