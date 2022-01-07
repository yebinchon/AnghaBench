
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * output_anchor; } ;
struct TYPE_4__ {scalar_t__ min_anchor_offset; scalar_t__ max_anchor_offset; TYPE_1__ asm_out; } ;


 TYPE_2__ targetm ;

__attribute__((used)) static bool
target_supports_section_anchors_p (void)
{
  if (targetm.min_anchor_offset == 0 && targetm.max_anchor_offset == 0)
    return 0;

  if (targetm.asm_out.output_anchor == ((void*)0))
    return 0;

  return 1;
}
