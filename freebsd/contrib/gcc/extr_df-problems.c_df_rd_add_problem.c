
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct df {int dummy; } ;
struct dataflow {int dummy; } ;


 struct dataflow* df_add_problem (struct df*,int *,int) ;
 int problem_RD ;

struct dataflow *
df_rd_add_problem (struct df *df, int flags)
{
  return df_add_problem (df, &problem_RD, flags);
}
