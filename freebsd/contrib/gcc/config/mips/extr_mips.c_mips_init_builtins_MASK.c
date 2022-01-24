#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
typedef  struct builtin_description {int target_flags; size_t function_type; int /*<<< orphan*/  name; } const builtin_description ;
struct bdesc_map {scalar_t__ proc; size_t size; struct builtin_description const* bdesc; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* builtin_function ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 size_t FUNC0 (struct bdesc_map const*) ; 
 int /*<<< orphan*/  BUILT_IN_MD ; 
 size_t MIPS_DF_FTYPE_DF ; 
 size_t MIPS_DF_FTYPE_DF_DF ; 
 size_t MIPS_DI_FTYPE_DI_SI ; 
 size_t MIPS_DI_FTYPE_DI_SI_SI ; 
 size_t MIPS_DI_FTYPE_DI_V2HI_V2HI ; 
 size_t MIPS_DI_FTYPE_DI_V4QI_V4QI ; 
 size_t MIPS_INT_FTYPE_DF_DF ; 
 size_t MIPS_INT_FTYPE_SF_SF ; 
 size_t MIPS_INT_FTYPE_V2SF_V2SF ; 
 size_t MIPS_INT_FTYPE_V2SF_V2SF_V2SF_V2SF ; 
 scalar_t__ MIPS_MAX_FTYPE_MAX ; 
 size_t MIPS_SF_FTYPE_SF ; 
 size_t MIPS_SF_FTYPE_SF_SF ; 
 size_t MIPS_SF_FTYPE_V2SF ; 
 size_t MIPS_SI_FTYPE_DI_SI ; 
 size_t MIPS_SI_FTYPE_PTR_SI ; 
 size_t MIPS_SI_FTYPE_SI ; 
 size_t MIPS_SI_FTYPE_SI_SI ; 
 size_t MIPS_SI_FTYPE_V2HI ; 
 size_t MIPS_SI_FTYPE_V2HI_V2HI ; 
 size_t MIPS_SI_FTYPE_V4QI ; 
 size_t MIPS_SI_FTYPE_V4QI_V4QI ; 
 size_t MIPS_SI_FTYPE_VOID ; 
 size_t MIPS_V2HI_FTYPE_SI ; 
 size_t MIPS_V2HI_FTYPE_SI_SI ; 
 size_t MIPS_V2HI_FTYPE_V2HI ; 
 size_t MIPS_V2HI_FTYPE_V2HI_SI ; 
 size_t MIPS_V2HI_FTYPE_V2HI_V2HI ; 
 size_t MIPS_V2HI_FTYPE_V4QI ; 
 size_t MIPS_V2HI_FTYPE_V4QI_V2HI ; 
 size_t MIPS_V2SF_FTYPE_SF_SF ; 
 size_t MIPS_V2SF_FTYPE_V2SF ; 
 size_t MIPS_V2SF_FTYPE_V2SF_V2SF ; 
 size_t MIPS_V2SF_FTYPE_V2SF_V2SF_INT ; 
 size_t MIPS_V2SF_FTYPE_V2SF_V2SF_V2SF_V2SF ; 
 size_t MIPS_V4QI_FTYPE_SI ; 
 size_t MIPS_V4QI_FTYPE_V2HI_V2HI ; 
 size_t MIPS_V4QI_FTYPE_V4QI_SI ; 
 size_t MIPS_V4QI_FTYPE_V4QI_V4QI ; 
 size_t MIPS_VOID_FTYPE_SI_SI ; 
 size_t MIPS_VOID_FTYPE_V2HI_V2HI ; 
 size_t MIPS_VOID_FTYPE_V4QI_V4QI ; 
 int /*<<< orphan*/  NULL_TREE ; 
 scalar_t__ PROCESSOR_MAX ; 
 scalar_t__ TARGET_DSP ; 
 scalar_t__ TARGET_PAIRED_SINGLE_FLOAT ; 
 int /*<<< orphan*/  V2HImode ; 
 int /*<<< orphan*/  V2SFmode ; 
 int /*<<< orphan*/  V4QImode ; 
 struct bdesc_map const* bdesc_arrays ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  double_type_node ; 
 int /*<<< orphan*/  float_type_node ; 
 int /*<<< orphan*/  intDI_type_node ; 
 int /*<<< orphan*/  intHI_type_node ; 
 int /*<<< orphan*/  intQI_type_node ; 
 int /*<<< orphan*/  intSI_type_node ; 
 int /*<<< orphan*/  integer_type_node ; 
 TYPE_1__ lang_hooks ; 
 scalar_t__ mips_arch ; 
 int /*<<< orphan*/  ptr_type_node ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int target_flags ; 
 int /*<<< orphan*/  void_list_node ; 
 int /*<<< orphan*/  void_type_node ; 

void
FUNC5 (void)
{
  const struct builtin_description *d;
  const struct bdesc_map *m;
  tree types[(int) MIPS_MAX_FTYPE_MAX];
  tree V2SF_type_node;
  tree V2HI_type_node;
  tree V4QI_type_node;
  unsigned int offset;

  /* We have only builtins for -mpaired-single, -mips3d and -mdsp.  */
  if (!TARGET_PAIRED_SINGLE_FLOAT && !TARGET_DSP)
    return;

  if (TARGET_PAIRED_SINGLE_FLOAT)
    {
      V2SF_type_node = FUNC3 (float_type_node, V2SFmode);

      types[MIPS_V2SF_FTYPE_V2SF]
	= FUNC2 (V2SF_type_node, V2SF_type_node, NULL_TREE);

      types[MIPS_V2SF_FTYPE_V2SF_V2SF]
	= FUNC2 (V2SF_type_node,
				    V2SF_type_node, V2SF_type_node, NULL_TREE);

      types[MIPS_V2SF_FTYPE_V2SF_V2SF_INT]
	= FUNC2 (V2SF_type_node,
				    V2SF_type_node, V2SF_type_node,
				    integer_type_node, NULL_TREE);

      types[MIPS_V2SF_FTYPE_V2SF_V2SF_V2SF_V2SF]
	= FUNC2 (V2SF_type_node,
				    V2SF_type_node, V2SF_type_node,
				    V2SF_type_node, V2SF_type_node, NULL_TREE);

      types[MIPS_V2SF_FTYPE_SF_SF]
	= FUNC2 (V2SF_type_node,
				    float_type_node, float_type_node, NULL_TREE);

      types[MIPS_INT_FTYPE_V2SF_V2SF]
	= FUNC2 (integer_type_node,
				    V2SF_type_node, V2SF_type_node, NULL_TREE);

      types[MIPS_INT_FTYPE_V2SF_V2SF_V2SF_V2SF]
	= FUNC2 (integer_type_node,
				    V2SF_type_node, V2SF_type_node,
				    V2SF_type_node, V2SF_type_node, NULL_TREE);

      types[MIPS_INT_FTYPE_SF_SF]
	= FUNC2 (integer_type_node,
				    float_type_node, float_type_node, NULL_TREE);

      types[MIPS_INT_FTYPE_DF_DF]
	= FUNC2 (integer_type_node,
				    double_type_node, double_type_node, NULL_TREE);

      types[MIPS_SF_FTYPE_V2SF]
	= FUNC2 (float_type_node, V2SF_type_node, NULL_TREE);

      types[MIPS_SF_FTYPE_SF]
	= FUNC2 (float_type_node,
				    float_type_node, NULL_TREE);

      types[MIPS_SF_FTYPE_SF_SF]
	= FUNC2 (float_type_node,
				    float_type_node, float_type_node, NULL_TREE);

      types[MIPS_DF_FTYPE_DF]
	= FUNC2 (double_type_node,
				    double_type_node, NULL_TREE);

      types[MIPS_DF_FTYPE_DF_DF]
	= FUNC2 (double_type_node,
				    double_type_node, double_type_node, NULL_TREE);
    }

  if (TARGET_DSP)
    {
      V2HI_type_node = FUNC3 (intHI_type_node, V2HImode);
      V4QI_type_node = FUNC3 (intQI_type_node, V4QImode);

      types[MIPS_V2HI_FTYPE_V2HI_V2HI]
	= FUNC2 (V2HI_type_node,
				    V2HI_type_node, V2HI_type_node,
				    NULL_TREE);

      types[MIPS_SI_FTYPE_SI_SI]
	= FUNC2 (intSI_type_node,
				    intSI_type_node, intSI_type_node,
				    NULL_TREE);

      types[MIPS_V4QI_FTYPE_V4QI_V4QI]
	= FUNC2 (V4QI_type_node,
				    V4QI_type_node, V4QI_type_node,
				    NULL_TREE);

      types[MIPS_SI_FTYPE_V4QI]
	= FUNC2 (intSI_type_node,
				    V4QI_type_node,
				    NULL_TREE);

      types[MIPS_V2HI_FTYPE_V2HI]
	= FUNC2 (V2HI_type_node,
				    V2HI_type_node,
				    NULL_TREE);

      types[MIPS_SI_FTYPE_SI]
	= FUNC2 (intSI_type_node,
				    intSI_type_node,
				    NULL_TREE);

      types[MIPS_V4QI_FTYPE_V2HI_V2HI]
	= FUNC2 (V4QI_type_node,
				    V2HI_type_node, V2HI_type_node,
				    NULL_TREE);

      types[MIPS_V2HI_FTYPE_SI_SI]
	= FUNC2 (V2HI_type_node,
				    intSI_type_node, intSI_type_node,
				    NULL_TREE);

      types[MIPS_SI_FTYPE_V2HI]
	= FUNC2 (intSI_type_node,
				    V2HI_type_node,
				    NULL_TREE);

      types[MIPS_V2HI_FTYPE_V4QI]
	= FUNC2 (V2HI_type_node,
				    V4QI_type_node,
				    NULL_TREE);

      types[MIPS_V4QI_FTYPE_V4QI_SI]
	= FUNC2 (V4QI_type_node,
				    V4QI_type_node, intSI_type_node,
				    NULL_TREE);

      types[MIPS_V2HI_FTYPE_V2HI_SI]
	= FUNC2 (V2HI_type_node,
				    V2HI_type_node, intSI_type_node,
				    NULL_TREE);

      types[MIPS_V2HI_FTYPE_V4QI_V2HI]
	= FUNC2 (V2HI_type_node,
				    V4QI_type_node, V2HI_type_node,
				    NULL_TREE);

      types[MIPS_SI_FTYPE_V2HI_V2HI]
	= FUNC2 (intSI_type_node,
				    V2HI_type_node, V2HI_type_node,
				    NULL_TREE);

      types[MIPS_DI_FTYPE_DI_V4QI_V4QI]
	= FUNC2 (intDI_type_node,
				    intDI_type_node, V4QI_type_node, V4QI_type_node,
				    NULL_TREE);

      types[MIPS_DI_FTYPE_DI_V2HI_V2HI]
	= FUNC2 (intDI_type_node,
				    intDI_type_node, V2HI_type_node, V2HI_type_node,
				    NULL_TREE);

      types[MIPS_DI_FTYPE_DI_SI_SI]
	= FUNC2 (intDI_type_node,
				    intDI_type_node, intSI_type_node, intSI_type_node,
				    NULL_TREE);

      types[MIPS_V4QI_FTYPE_SI]
	= FUNC2 (V4QI_type_node,
				    intSI_type_node,
				    NULL_TREE);

      types[MIPS_V2HI_FTYPE_SI]
	= FUNC2 (V2HI_type_node,
				    intSI_type_node,
				    NULL_TREE);

      types[MIPS_VOID_FTYPE_V4QI_V4QI]
	= FUNC2 (void_type_node,
				    V4QI_type_node, V4QI_type_node,
				    NULL_TREE);

      types[MIPS_SI_FTYPE_V4QI_V4QI]
	= FUNC2 (intSI_type_node,
				    V4QI_type_node, V4QI_type_node,
				    NULL_TREE);

      types[MIPS_VOID_FTYPE_V2HI_V2HI]
	= FUNC2 (void_type_node,
				    V2HI_type_node, V2HI_type_node,
				    NULL_TREE);

      types[MIPS_SI_FTYPE_DI_SI]
	= FUNC2 (intSI_type_node,
				    intDI_type_node, intSI_type_node,
				    NULL_TREE);

      types[MIPS_DI_FTYPE_DI_SI]
	= FUNC2 (intDI_type_node,
				    intDI_type_node, intSI_type_node,
				    NULL_TREE);

      types[MIPS_VOID_FTYPE_SI_SI]
	= FUNC2 (void_type_node,
				    intSI_type_node, intSI_type_node,
				    NULL_TREE);

      types[MIPS_SI_FTYPE_PTR_SI]
	= FUNC2 (intSI_type_node,
				    ptr_type_node, intSI_type_node,
				    NULL_TREE);

      types[MIPS_SI_FTYPE_VOID]
	= FUNC1 (intSI_type_node, void_list_node);
    }

  /* Iterate through all of the bdesc arrays, initializing all of the
     builtin functions.  */

  offset = 0;
  for (m = bdesc_arrays; m < &bdesc_arrays[FUNC0 (bdesc_arrays)]; m++)
    {
      if (m->proc == PROCESSOR_MAX || (m->proc == mips_arch))
	for (d = m->bdesc; d < &m->bdesc[m->size]; d++)
	  if ((d->target_flags & target_flags) == d->target_flags)
	    lang_hooks.builtin_function (d->name, types[d->function_type],
					 d - m->bdesc + offset,
					 BUILT_IN_MD, NULL, NULL);
      offset += m->size;
    }
}