
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct ivopts_data {int current_loop; } ;
struct iv_use {int dummy; } ;


 int IP_END ;
 int IP_NORMAL ;
 int NULL_TREE ;
 int add_candidate_1 (struct ivopts_data*,int ,int ,int,int ,struct iv_use*,int ) ;
 scalar_t__ allow_ip_end_pos_p (int ) ;
 scalar_t__ ip_end_pos (int ) ;
 scalar_t__ ip_normal_pos (int ) ;

__attribute__((used)) static void
add_candidate (struct ivopts_data *data,
        tree base, tree step, bool important, struct iv_use *use)
{
  if (ip_normal_pos (data->current_loop))
    add_candidate_1 (data, base, step, important, IP_NORMAL, use, NULL_TREE);
  if (ip_end_pos (data->current_loop)
      && allow_ip_end_pos_p (data->current_loop))
    add_candidate_1 (data, base, step, important, IP_END, use, NULL_TREE);
}
