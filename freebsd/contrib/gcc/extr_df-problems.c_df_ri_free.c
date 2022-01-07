
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dataflow {struct dataflow* problem_data; } ;


 int free (struct dataflow*) ;

__attribute__((used)) static void
df_ri_free (struct dataflow *dflow)
{
  free (dflow->problem_data);
  free (dflow);
}
