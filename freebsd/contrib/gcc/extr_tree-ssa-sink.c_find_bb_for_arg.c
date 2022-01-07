
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef int * basic_block ;
struct TYPE_2__ {int * src; } ;


 scalar_t__ PHI_ARG_DEF (scalar_t__,int) ;
 TYPE_1__* PHI_ARG_EDGE (scalar_t__,int) ;
 int PHI_NUM_ARGS (scalar_t__) ;

__attribute__((used)) static basic_block
find_bb_for_arg (tree phi, tree def)
{
  int i;
  bool foundone = 0;
  basic_block result = ((void*)0);
  for (i = 0; i < PHI_NUM_ARGS (phi); i++)
    if (PHI_ARG_DEF (phi, i) == def)
      {
 if (foundone)
   return ((void*)0);
 foundone = 1;
 result = PHI_ARG_EDGE (phi, i)->src;
      }
  return result;
}
