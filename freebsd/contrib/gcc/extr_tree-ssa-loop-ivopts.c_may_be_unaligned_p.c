
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef unsigned int HOST_WIDE_INT ;


 unsigned int BITS_PER_UNIT ;
 int BLKmode ;
 unsigned int GET_MODE_ALIGNMENT (int) ;
 scalar_t__ TARGET_MEM_REF ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 unsigned int TYPE_ALIGN (int ) ;
 int get_inner_reference (int ,unsigned int*,unsigned int*,int *,int*,int*,int*,int) ;

__attribute__((used)) static bool
may_be_unaligned_p (tree ref)
{
  tree base;
  tree base_type;
  HOST_WIDE_INT bitsize;
  HOST_WIDE_INT bitpos;
  tree toffset;
  enum machine_mode mode;
  int unsignedp, volatilep;
  unsigned base_align;



  if (TREE_CODE (ref) == TARGET_MEM_REF)
    return 0;




  base = get_inner_reference (ref, &bitsize, &bitpos, &toffset, &mode,
         &unsignedp, &volatilep, 1);
  base_type = TREE_TYPE (base);
  base_align = TYPE_ALIGN (base_type);

  if (mode != BLKmode
      && (base_align < GET_MODE_ALIGNMENT (mode)
   || bitpos % GET_MODE_ALIGNMENT (mode) != 0
   || bitpos % BITS_PER_UNIT != 0))
    return 1;

  return 0;
}
