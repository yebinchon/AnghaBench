
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
struct ivopts_data {int current_loop; } ;
struct iv {int dummy; } ;
typedef int basic_block ;
struct TYPE_2__ {struct iv* iv; } ;


 int NULL_TREE ;
 int SSA_NAME_DEF_STMT (int ) ;
 int bb_for_stmt (int ) ;
 int flow_bb_inside_loop_p (int ,int ) ;
 TYPE_1__* name_info (struct ivopts_data*,int ) ;
 int set_iv (struct ivopts_data*,int ,int ,int ) ;

__attribute__((used)) static struct iv *
get_iv (struct ivopts_data *data, tree var)
{
  basic_block bb;

  if (!name_info (data, var)->iv)
    {
      bb = bb_for_stmt (SSA_NAME_DEF_STMT (var));

      if (!bb
   || !flow_bb_inside_loop_p (data->current_loop, bb))
 set_iv (data, var, var, NULL_TREE);
    }

  return name_info (data, var)->iv;
}
