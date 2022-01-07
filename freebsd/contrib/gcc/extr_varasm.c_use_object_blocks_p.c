
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int flag_section_anchors ;

__attribute__((used)) static bool
use_object_blocks_p (void)
{
  return flag_section_anchors;
}
