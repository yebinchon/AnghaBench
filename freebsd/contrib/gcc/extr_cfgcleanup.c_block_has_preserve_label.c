
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ basic_block ;


 scalar_t__ LABEL_PRESERVE_P (scalar_t__) ;
 scalar_t__ block_label (scalar_t__) ;

__attribute__((used)) static bool
block_has_preserve_label (basic_block bb)
{
  return (bb
          && block_label (bb)
          && LABEL_PRESERVE_P (block_label (bb)));
}
