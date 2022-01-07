
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loop_data {int dummy; } ;
struct loop {int * aux; } ;


 struct loop_data* LOOP_DATA (struct loop*) ;
 int free (struct loop_data*) ;

__attribute__((used)) static void
free_loop_data (struct loop *loop)
{
  struct loop_data *data = LOOP_DATA (loop);

  free (data);
  loop->aux = ((void*)0);
}
