
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int basic_block ;


 int create_basic_block (int *,int *,int ) ;

basic_block
create_empty_bb (basic_block after)
{
  return create_basic_block (((void*)0), ((void*)0), after);
}
