
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* record_layout_info ;
struct TYPE_3__ {int offset_align; int bitpos; int offset; } ;


 int normalize_offset (int *,int *,int ) ;

void
normalize_rli (record_layout_info rli)
{
  normalize_offset (&rli->offset, &rli->bitpos, rli->offset_align);
}
