
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
typedef struct builtin_description {int target_flags; size_t function_type; int name; } const builtin_description ;
struct bdesc_map {scalar_t__ proc; size_t size; struct builtin_description const* bdesc; } ;
struct TYPE_2__ {int (* builtin_function ) (int ,int ,int,int ,int *,int *) ;} ;


 size_t ARRAY_SIZE (struct bdesc_map const*) ;
 int BUILT_IN_MD ;
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
 int NULL_TREE ;
 scalar_t__ PROCESSOR_MAX ;
 scalar_t__ TARGET_DSP ;
 scalar_t__ TARGET_PAIRED_SINGLE_FLOAT ;
 int V2HImode ;
 int V2SFmode ;
 int V4QImode ;
 struct bdesc_map const* bdesc_arrays ;
 int build_function_type (int ,int ) ;
 int build_function_type_list (int ,int ,int ,...) ;
 int build_vector_type_for_mode (int ,int ) ;
 int double_type_node ;
 int float_type_node ;
 int intDI_type_node ;
 int intHI_type_node ;
 int intQI_type_node ;
 int intSI_type_node ;
 int integer_type_node ;
 TYPE_1__ lang_hooks ;
 scalar_t__ mips_arch ;
 int ptr_type_node ;
 int stub1 (int ,int ,int,int ,int *,int *) ;
 int target_flags ;
 int void_list_node ;
 int void_type_node ;

void
mips_init_builtins (void)
{
  const struct builtin_description *d;
  const struct bdesc_map *m;
  tree types[(int) MIPS_MAX_FTYPE_MAX];
  tree V2SF_type_node;
  tree V2HI_type_node;
  tree V4QI_type_node;
  unsigned int offset;


  if (!TARGET_PAIRED_SINGLE_FLOAT && !TARGET_DSP)
    return;

  if (TARGET_PAIRED_SINGLE_FLOAT)
    {
      V2SF_type_node = build_vector_type_for_mode (float_type_node, V2SFmode);

      types[MIPS_V2SF_FTYPE_V2SF]
 = build_function_type_list (V2SF_type_node, V2SF_type_node, NULL_TREE);

      types[MIPS_V2SF_FTYPE_V2SF_V2SF]
 = build_function_type_list (V2SF_type_node,
        V2SF_type_node, V2SF_type_node, NULL_TREE);

      types[MIPS_V2SF_FTYPE_V2SF_V2SF_INT]
 = build_function_type_list (V2SF_type_node,
        V2SF_type_node, V2SF_type_node,
        integer_type_node, NULL_TREE);

      types[MIPS_V2SF_FTYPE_V2SF_V2SF_V2SF_V2SF]
 = build_function_type_list (V2SF_type_node,
        V2SF_type_node, V2SF_type_node,
        V2SF_type_node, V2SF_type_node, NULL_TREE);

      types[MIPS_V2SF_FTYPE_SF_SF]
 = build_function_type_list (V2SF_type_node,
        float_type_node, float_type_node, NULL_TREE);

      types[MIPS_INT_FTYPE_V2SF_V2SF]
 = build_function_type_list (integer_type_node,
        V2SF_type_node, V2SF_type_node, NULL_TREE);

      types[MIPS_INT_FTYPE_V2SF_V2SF_V2SF_V2SF]
 = build_function_type_list (integer_type_node,
        V2SF_type_node, V2SF_type_node,
        V2SF_type_node, V2SF_type_node, NULL_TREE);

      types[MIPS_INT_FTYPE_SF_SF]
 = build_function_type_list (integer_type_node,
        float_type_node, float_type_node, NULL_TREE);

      types[MIPS_INT_FTYPE_DF_DF]
 = build_function_type_list (integer_type_node,
        double_type_node, double_type_node, NULL_TREE);

      types[MIPS_SF_FTYPE_V2SF]
 = build_function_type_list (float_type_node, V2SF_type_node, NULL_TREE);

      types[MIPS_SF_FTYPE_SF]
 = build_function_type_list (float_type_node,
        float_type_node, NULL_TREE);

      types[MIPS_SF_FTYPE_SF_SF]
 = build_function_type_list (float_type_node,
        float_type_node, float_type_node, NULL_TREE);

      types[MIPS_DF_FTYPE_DF]
 = build_function_type_list (double_type_node,
        double_type_node, NULL_TREE);

      types[MIPS_DF_FTYPE_DF_DF]
 = build_function_type_list (double_type_node,
        double_type_node, double_type_node, NULL_TREE);
    }

  if (TARGET_DSP)
    {
      V2HI_type_node = build_vector_type_for_mode (intHI_type_node, V2HImode);
      V4QI_type_node = build_vector_type_for_mode (intQI_type_node, V4QImode);

      types[MIPS_V2HI_FTYPE_V2HI_V2HI]
 = build_function_type_list (V2HI_type_node,
        V2HI_type_node, V2HI_type_node,
        NULL_TREE);

      types[MIPS_SI_FTYPE_SI_SI]
 = build_function_type_list (intSI_type_node,
        intSI_type_node, intSI_type_node,
        NULL_TREE);

      types[MIPS_V4QI_FTYPE_V4QI_V4QI]
 = build_function_type_list (V4QI_type_node,
        V4QI_type_node, V4QI_type_node,
        NULL_TREE);

      types[MIPS_SI_FTYPE_V4QI]
 = build_function_type_list (intSI_type_node,
        V4QI_type_node,
        NULL_TREE);

      types[MIPS_V2HI_FTYPE_V2HI]
 = build_function_type_list (V2HI_type_node,
        V2HI_type_node,
        NULL_TREE);

      types[MIPS_SI_FTYPE_SI]
 = build_function_type_list (intSI_type_node,
        intSI_type_node,
        NULL_TREE);

      types[MIPS_V4QI_FTYPE_V2HI_V2HI]
 = build_function_type_list (V4QI_type_node,
        V2HI_type_node, V2HI_type_node,
        NULL_TREE);

      types[MIPS_V2HI_FTYPE_SI_SI]
 = build_function_type_list (V2HI_type_node,
        intSI_type_node, intSI_type_node,
        NULL_TREE);

      types[MIPS_SI_FTYPE_V2HI]
 = build_function_type_list (intSI_type_node,
        V2HI_type_node,
        NULL_TREE);

      types[MIPS_V2HI_FTYPE_V4QI]
 = build_function_type_list (V2HI_type_node,
        V4QI_type_node,
        NULL_TREE);

      types[MIPS_V4QI_FTYPE_V4QI_SI]
 = build_function_type_list (V4QI_type_node,
        V4QI_type_node, intSI_type_node,
        NULL_TREE);

      types[MIPS_V2HI_FTYPE_V2HI_SI]
 = build_function_type_list (V2HI_type_node,
        V2HI_type_node, intSI_type_node,
        NULL_TREE);

      types[MIPS_V2HI_FTYPE_V4QI_V2HI]
 = build_function_type_list (V2HI_type_node,
        V4QI_type_node, V2HI_type_node,
        NULL_TREE);

      types[MIPS_SI_FTYPE_V2HI_V2HI]
 = build_function_type_list (intSI_type_node,
        V2HI_type_node, V2HI_type_node,
        NULL_TREE);

      types[MIPS_DI_FTYPE_DI_V4QI_V4QI]
 = build_function_type_list (intDI_type_node,
        intDI_type_node, V4QI_type_node, V4QI_type_node,
        NULL_TREE);

      types[MIPS_DI_FTYPE_DI_V2HI_V2HI]
 = build_function_type_list (intDI_type_node,
        intDI_type_node, V2HI_type_node, V2HI_type_node,
        NULL_TREE);

      types[MIPS_DI_FTYPE_DI_SI_SI]
 = build_function_type_list (intDI_type_node,
        intDI_type_node, intSI_type_node, intSI_type_node,
        NULL_TREE);

      types[MIPS_V4QI_FTYPE_SI]
 = build_function_type_list (V4QI_type_node,
        intSI_type_node,
        NULL_TREE);

      types[MIPS_V2HI_FTYPE_SI]
 = build_function_type_list (V2HI_type_node,
        intSI_type_node,
        NULL_TREE);

      types[MIPS_VOID_FTYPE_V4QI_V4QI]
 = build_function_type_list (void_type_node,
        V4QI_type_node, V4QI_type_node,
        NULL_TREE);

      types[MIPS_SI_FTYPE_V4QI_V4QI]
 = build_function_type_list (intSI_type_node,
        V4QI_type_node, V4QI_type_node,
        NULL_TREE);

      types[MIPS_VOID_FTYPE_V2HI_V2HI]
 = build_function_type_list (void_type_node,
        V2HI_type_node, V2HI_type_node,
        NULL_TREE);

      types[MIPS_SI_FTYPE_DI_SI]
 = build_function_type_list (intSI_type_node,
        intDI_type_node, intSI_type_node,
        NULL_TREE);

      types[MIPS_DI_FTYPE_DI_SI]
 = build_function_type_list (intDI_type_node,
        intDI_type_node, intSI_type_node,
        NULL_TREE);

      types[MIPS_VOID_FTYPE_SI_SI]
 = build_function_type_list (void_type_node,
        intSI_type_node, intSI_type_node,
        NULL_TREE);

      types[MIPS_SI_FTYPE_PTR_SI]
 = build_function_type_list (intSI_type_node,
        ptr_type_node, intSI_type_node,
        NULL_TREE);

      types[MIPS_SI_FTYPE_VOID]
 = build_function_type (intSI_type_node, void_list_node);
    }




  offset = 0;
  for (m = bdesc_arrays; m < &bdesc_arrays[ARRAY_SIZE (bdesc_arrays)]; m++)
    {
      if (m->proc == PROCESSOR_MAX || (m->proc == mips_arch))
 for (d = m->bdesc; d < &m->bdesc[m->size]; d++)
   if ((d->target_flags & target_flags) == d->target_flags)
     lang_hooks.builtin_function (d->name, types[d->function_type],
      d - m->bdesc + offset,
      BUILT_IN_MD, ((void*)0), ((void*)0));
      offset += m->size;
    }
}
