
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct loop {int dummy; } ;
struct ar_data {int* step; int* delta; int stmt; struct loop* loop; } ;
typedef int HOST_WIDE_INT ;


 int BITS_PER_UNIT ;
 scalar_t__ COMPONENT_REF ;
 int DECL_FIELD_BIT_OFFSET (int ) ;
 scalar_t__ DECL_NONADDRESSABLE_P (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_INT_CST_LOW (int ) ;
 int TREE_OPERAND (int ,int) ;
 int for_each_index (int *,int ,struct ar_data*) ;
 int gcc_assert (int) ;
 int idx_analyze_ref ;
 int unshare_expr (int ) ;

__attribute__((used)) static bool
analyze_ref (struct loop *loop, tree *ref_p, tree *base,
      HOST_WIDE_INT *step, HOST_WIDE_INT *delta,
      tree stmt)
{
  struct ar_data ar_data;
  tree off;
  HOST_WIDE_INT bit_offset;
  tree ref = *ref_p;

  *step = 0;
  *delta = 0;


  if (TREE_CODE (ref) == COMPONENT_REF
      && DECL_NONADDRESSABLE_P (TREE_OPERAND (ref, 1)))
    ref = TREE_OPERAND (ref, 0);

  *ref_p = ref;

  for (; TREE_CODE (ref) == COMPONENT_REF; ref = TREE_OPERAND (ref, 0))
    {
      off = DECL_FIELD_BIT_OFFSET (TREE_OPERAND (ref, 1));
      bit_offset = TREE_INT_CST_LOW (off);
      gcc_assert (bit_offset % BITS_PER_UNIT == 0);

      *delta += bit_offset / BITS_PER_UNIT;
    }

  *base = unshare_expr (ref);
  ar_data.loop = loop;
  ar_data.stmt = stmt;
  ar_data.step = step;
  ar_data.delta = delta;
  return for_each_index (base, idx_analyze_ref, &ar_data);
}
