
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int basic_block ;


 int CDI_DOMINATORS ;
 int dominated_by_p (int ,int ,void*) ;

__attribute__((used)) static bool
rpe_enum_p (basic_block bb, void *data)
{
  return dominated_by_p (CDI_DOMINATORS, bb, data);
}
