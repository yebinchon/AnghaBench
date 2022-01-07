
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int basic_block ;
struct TYPE_2__ {int rts_number; } ;


 TYPE_1__* BB_INFO (int ) ;

__attribute__((used)) static int
rpost_cmp (const void *bb1, const void *bb2)
{
  basic_block b1 = *(basic_block *) bb1, b2 = *(basic_block *) bb2;

  return BB_INFO (b2)->rts_number - BB_INFO (b1)->rts_number;
}
