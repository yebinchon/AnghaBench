
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loop {int num_nodes; } ;
typedef int basic_block ;


 int free (int *) ;
 int * get_loop_body (struct loop*) ;
 int scale_bbs_frequencies_int (int *,int ,int,int) ;

__attribute__((used)) static void
scale_loop_frequencies (struct loop *loop, int num, int den)
{
  basic_block *bbs;

  bbs = get_loop_body (loop);
  scale_bbs_frequencies_int (bbs, loop->num_nodes, num, den);
  free (bbs);
}
