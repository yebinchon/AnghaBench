
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int LOOKUP_COMPLAIN ;
 int lookup_arg_dependent (int ,int ,int ) ;
 int lookup_name_real (int ,int ,int,int,int ,int ) ;

tree
lookup_function_nonclass (tree name, tree args, bool block_p)
{
  return
    lookup_arg_dependent (name,
     lookup_name_real (name, 0, 1, block_p, 0,
         LOOKUP_COMPLAIN),
     args);
}
