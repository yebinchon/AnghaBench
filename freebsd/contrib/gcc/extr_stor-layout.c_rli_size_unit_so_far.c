
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
typedef TYPE_1__* record_layout_info ;
struct TYPE_3__ {int bitpos; int offset; } ;


 int byte_from_pos (int ,int ) ;

tree
rli_size_unit_so_far (record_layout_info rli)
{
  return byte_from_pos (rli->offset, rli->bitpos);
}
