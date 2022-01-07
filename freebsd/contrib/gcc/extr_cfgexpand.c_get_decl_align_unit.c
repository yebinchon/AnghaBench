
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
struct TYPE_2__ {unsigned int stack_alignment_needed; } ;


 unsigned int BITS_PER_UNIT ;
 unsigned int DECL_ALIGN (int ) ;
 unsigned int LOCAL_ALIGNMENT (int ,unsigned int) ;
 unsigned int PREFERRED_STACK_BOUNDARY ;
 int TREE_TYPE (int ) ;
 TYPE_1__* cfun ;

__attribute__((used)) static unsigned int
get_decl_align_unit (tree decl)
{
  unsigned int align;

  align = DECL_ALIGN (decl);
  align = LOCAL_ALIGNMENT (TREE_TYPE (decl), align);
  if (align > PREFERRED_STACK_BOUNDARY)
    align = PREFERRED_STACK_BOUNDARY;
  if (cfun->stack_alignment_needed < align)
    cfun->stack_alignment_needed = align;

  return align / BITS_PER_UNIT;
}
