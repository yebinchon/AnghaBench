
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loop {unsigned int num_nodes; } ;
struct ivopts_data {struct loop* current_loop; } ;
typedef int basic_block ;


 int find_givs_in_bb (struct ivopts_data*,int ) ;
 int free (int *) ;
 int * get_loop_body_in_dom_order (struct loop*) ;

__attribute__((used)) static void
find_givs (struct ivopts_data *data)
{
  struct loop *loop = data->current_loop;
  basic_block *body = get_loop_body_in_dom_order (loop);
  unsigned i;

  for (i = 0; i < loop->num_nodes; i++)
    find_givs_in_bb (data, body[i]);
  free (body);
}
