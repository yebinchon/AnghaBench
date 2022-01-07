
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ivopts_data {int dummy; } ;
typedef int block_stmt_iterator ;
typedef int basic_block ;


 int bsi_end_p (int ) ;
 int bsi_next (int *) ;
 int bsi_start (int ) ;
 int bsi_stmt (int ) ;
 int find_givs_in_stmt (struct ivopts_data*,int ) ;

__attribute__((used)) static void
find_givs_in_bb (struct ivopts_data *data, basic_block bb)
{
  block_stmt_iterator bsi;

  for (bsi = bsi_start (bb); !bsi_end_p (bsi); bsi_next (&bsi))
    find_givs_in_stmt (data, bsi_stmt (bsi));
}
