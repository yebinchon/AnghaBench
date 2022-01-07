
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tree ;
struct builtin_description {size_t icode; char* name; int code; int mask; } ;
struct TYPE_8__ {TYPE_2__* operand; } ;
struct TYPE_5__ {int (* pushdecl ) (int ) ;} ;
struct TYPE_7__ {TYPE_1__ decls; } ;
struct TYPE_6__ {int mode; } ;


 size_t ARRAY_SIZE (scalar_t__) ;
 int NULL_TREE ;
 int SPE_BUILTIN_EVABS ;
 int SPE_BUILTIN_EVADDW ;
 int SPE_BUILTIN_EVCMPEQ ;
 int SPE_BUILTIN_EVFSTSTLT ;
 int SPE_BUILTIN_EVLDD ;
 int SPE_BUILTIN_EVLDDX ;
 int SPE_BUILTIN_EVLDH ;
 int SPE_BUILTIN_EVLDHX ;
 int SPE_BUILTIN_EVLDW ;
 int SPE_BUILTIN_EVLDWX ;
 int SPE_BUILTIN_EVLHHESPLAT ;
 int SPE_BUILTIN_EVLHHESPLATX ;
 int SPE_BUILTIN_EVLHHOSSPLAT ;
 int SPE_BUILTIN_EVLHHOSSPLATX ;
 int SPE_BUILTIN_EVLHHOUSPLAT ;
 int SPE_BUILTIN_EVLHHOUSPLATX ;
 int SPE_BUILTIN_EVLWHE ;
 int SPE_BUILTIN_EVLWHEX ;
 int SPE_BUILTIN_EVLWHOS ;
 int SPE_BUILTIN_EVLWHOSX ;
 int SPE_BUILTIN_EVLWHOU ;
 int SPE_BUILTIN_EVLWHOUX ;
 int SPE_BUILTIN_EVLWHSPLAT ;
 int SPE_BUILTIN_EVLWHSPLATX ;
 int SPE_BUILTIN_EVLWWSPLAT ;
 int SPE_BUILTIN_EVLWWSPLATX ;
 int SPE_BUILTIN_EVSEL_CMPGTS ;
 int SPE_BUILTIN_EVSEL_FSTSTEQ ;
 int SPE_BUILTIN_EVSPLATFI ;
 int SPE_BUILTIN_EVSPLATI ;
 int SPE_BUILTIN_EVSTDD ;
 int SPE_BUILTIN_EVSTDDX ;
 int SPE_BUILTIN_EVSTDH ;
 int SPE_BUILTIN_EVSTDHX ;
 int SPE_BUILTIN_EVSTDW ;
 int SPE_BUILTIN_EVSTDWX ;
 int SPE_BUILTIN_EVSTWHE ;
 int SPE_BUILTIN_EVSTWHEX ;
 int SPE_BUILTIN_EVSTWHO ;
 int SPE_BUILTIN_EVSTWHOX ;
 int SPE_BUILTIN_EVSTWWE ;
 int SPE_BUILTIN_EVSTWWEX ;
 int SPE_BUILTIN_EVSTWWO ;
 int SPE_BUILTIN_EVSTWWOX ;
 int SPE_BUILTIN_EVSUBFUSIAAW ;
 int SPE_BUILTIN_EVXOR ;
 int SPE_BUILTIN_MFSPEFSCR ;
 int SPE_BUILTIN_MTSPEFSCR ;
 int TYPE_DECL ;


 scalar_t__ bdesc_1arg ;
 scalar_t__ bdesc_2arg ;
 scalar_t__ bdesc_spe_evsel ;
 scalar_t__ bdesc_spe_predicates ;
 int build_decl (int ,int ,int ) ;
 int build_function_type (int ,int ) ;
 int build_pointer_type (int ) ;
 int char_type_node ;
 int def_builtin (int ,char*,int ,int ) ;
 int enable_mask_for_builtins (struct builtin_description*,size_t,int ,int ) ;
 int gcc_unreachable () ;
 int get_identifier (char*) ;
 TYPE_4__* insn_data ;
 int integer_type_node ;
 TYPE_3__ lang_hooks ;
 int opaque_V2SF_type_node ;
 int opaque_V2SI_type_node ;
 int opaque_p_V2SI_type_node ;
 int short_unsigned_type_node ;
 int signed_char_type_node ;
 int stub1 (int ) ;
 int target_flags ;
 int tree_cons (int ,int ,int ) ;
 int unsigned_type_node ;
 int void_list_node ;
 int void_type_node ;

__attribute__((used)) static void
spe_init_builtins (void)
{
  tree endlink = void_list_node;
  tree puint_type_node = build_pointer_type (unsigned_type_node);
  tree pushort_type_node = build_pointer_type (short_unsigned_type_node);
  struct builtin_description *d;
  size_t i;

  tree v2si_ftype_4_v2si
    = build_function_type
    (opaque_V2SI_type_node,
     tree_cons (NULL_TREE, opaque_V2SI_type_node,
  tree_cons (NULL_TREE, opaque_V2SI_type_node,
      tree_cons (NULL_TREE, opaque_V2SI_type_node,
          tree_cons (NULL_TREE, opaque_V2SI_type_node,
       endlink)))));

  tree v2sf_ftype_4_v2sf
    = build_function_type
    (opaque_V2SF_type_node,
     tree_cons (NULL_TREE, opaque_V2SF_type_node,
  tree_cons (NULL_TREE, opaque_V2SF_type_node,
      tree_cons (NULL_TREE, opaque_V2SF_type_node,
          tree_cons (NULL_TREE, opaque_V2SF_type_node,
       endlink)))));

  tree int_ftype_int_v2si_v2si
    = build_function_type
    (integer_type_node,
     tree_cons (NULL_TREE, integer_type_node,
  tree_cons (NULL_TREE, opaque_V2SI_type_node,
      tree_cons (NULL_TREE, opaque_V2SI_type_node,
          endlink))));

  tree int_ftype_int_v2sf_v2sf
    = build_function_type
    (integer_type_node,
     tree_cons (NULL_TREE, integer_type_node,
  tree_cons (NULL_TREE, opaque_V2SF_type_node,
      tree_cons (NULL_TREE, opaque_V2SF_type_node,
          endlink))));

  tree void_ftype_v2si_puint_int
    = build_function_type (void_type_node,
      tree_cons (NULL_TREE, opaque_V2SI_type_node,
          tree_cons (NULL_TREE, puint_type_node,
       tree_cons (NULL_TREE,
           integer_type_node,
           endlink))));

  tree void_ftype_v2si_puint_char
    = build_function_type (void_type_node,
      tree_cons (NULL_TREE, opaque_V2SI_type_node,
          tree_cons (NULL_TREE, puint_type_node,
       tree_cons (NULL_TREE,
           char_type_node,
           endlink))));

  tree void_ftype_v2si_pv2si_int
    = build_function_type (void_type_node,
      tree_cons (NULL_TREE, opaque_V2SI_type_node,
          tree_cons (NULL_TREE, opaque_p_V2SI_type_node,
       tree_cons (NULL_TREE,
           integer_type_node,
           endlink))));

  tree void_ftype_v2si_pv2si_char
    = build_function_type (void_type_node,
      tree_cons (NULL_TREE, opaque_V2SI_type_node,
          tree_cons (NULL_TREE, opaque_p_V2SI_type_node,
       tree_cons (NULL_TREE,
           char_type_node,
           endlink))));

  tree void_ftype_int
    = build_function_type (void_type_node,
      tree_cons (NULL_TREE, integer_type_node, endlink));

  tree int_ftype_void
    = build_function_type (integer_type_node, endlink);

  tree v2si_ftype_pv2si_int
    = build_function_type (opaque_V2SI_type_node,
      tree_cons (NULL_TREE, opaque_p_V2SI_type_node,
          tree_cons (NULL_TREE, integer_type_node,
       endlink)));

  tree v2si_ftype_puint_int
    = build_function_type (opaque_V2SI_type_node,
      tree_cons (NULL_TREE, puint_type_node,
          tree_cons (NULL_TREE, integer_type_node,
       endlink)));

  tree v2si_ftype_pushort_int
    = build_function_type (opaque_V2SI_type_node,
      tree_cons (NULL_TREE, pushort_type_node,
          tree_cons (NULL_TREE, integer_type_node,
       endlink)));

  tree v2si_ftype_signed_char
    = build_function_type (opaque_V2SI_type_node,
      tree_cons (NULL_TREE, signed_char_type_node,
          endlink));






  enable_mask_for_builtins ((struct builtin_description *) bdesc_2arg,
       ARRAY_SIZE (bdesc_2arg),
       SPE_BUILTIN_EVADDW,
       SPE_BUILTIN_EVXOR);
  enable_mask_for_builtins ((struct builtin_description *) bdesc_1arg,
       ARRAY_SIZE (bdesc_1arg),
       SPE_BUILTIN_EVABS,
       SPE_BUILTIN_EVSUBFUSIAAW);
  enable_mask_for_builtins ((struct builtin_description *) bdesc_spe_predicates,
       ARRAY_SIZE (bdesc_spe_predicates),
       SPE_BUILTIN_EVCMPEQ,
       SPE_BUILTIN_EVFSTSTLT);
  enable_mask_for_builtins ((struct builtin_description *) bdesc_spe_evsel,
       ARRAY_SIZE (bdesc_spe_evsel),
       SPE_BUILTIN_EVSEL_CMPGTS,
       SPE_BUILTIN_EVSEL_FSTSTEQ);

  (*lang_hooks.decls.pushdecl)
    (build_decl (TYPE_DECL, get_identifier ("__ev64_opaque__"),
   opaque_V2SI_type_node));



  def_builtin (target_flags, "__builtin_spe_mtspefscr", void_ftype_int, SPE_BUILTIN_MTSPEFSCR);
  def_builtin (target_flags, "__builtin_spe_mfspefscr", int_ftype_void, SPE_BUILTIN_MFSPEFSCR);
  def_builtin (target_flags, "__builtin_spe_evstddx", void_ftype_v2si_pv2si_int, SPE_BUILTIN_EVSTDDX);
  def_builtin (target_flags, "__builtin_spe_evstdhx", void_ftype_v2si_pv2si_int, SPE_BUILTIN_EVSTDHX);
  def_builtin (target_flags, "__builtin_spe_evstdwx", void_ftype_v2si_pv2si_int, SPE_BUILTIN_EVSTDWX);
  def_builtin (target_flags, "__builtin_spe_evstwhex", void_ftype_v2si_puint_int, SPE_BUILTIN_EVSTWHEX);
  def_builtin (target_flags, "__builtin_spe_evstwhox", void_ftype_v2si_puint_int, SPE_BUILTIN_EVSTWHOX);
  def_builtin (target_flags, "__builtin_spe_evstwwex", void_ftype_v2si_puint_int, SPE_BUILTIN_EVSTWWEX);
  def_builtin (target_flags, "__builtin_spe_evstwwox", void_ftype_v2si_puint_int, SPE_BUILTIN_EVSTWWOX);
  def_builtin (target_flags, "__builtin_spe_evstdd", void_ftype_v2si_pv2si_char, SPE_BUILTIN_EVSTDD);
  def_builtin (target_flags, "__builtin_spe_evstdh", void_ftype_v2si_pv2si_char, SPE_BUILTIN_EVSTDH);
  def_builtin (target_flags, "__builtin_spe_evstdw", void_ftype_v2si_pv2si_char, SPE_BUILTIN_EVSTDW);
  def_builtin (target_flags, "__builtin_spe_evstwhe", void_ftype_v2si_puint_char, SPE_BUILTIN_EVSTWHE);
  def_builtin (target_flags, "__builtin_spe_evstwho", void_ftype_v2si_puint_char, SPE_BUILTIN_EVSTWHO);
  def_builtin (target_flags, "__builtin_spe_evstwwe", void_ftype_v2si_puint_char, SPE_BUILTIN_EVSTWWE);
  def_builtin (target_flags, "__builtin_spe_evstwwo", void_ftype_v2si_puint_char, SPE_BUILTIN_EVSTWWO);
  def_builtin (target_flags, "__builtin_spe_evsplatfi", v2si_ftype_signed_char, SPE_BUILTIN_EVSPLATFI);
  def_builtin (target_flags, "__builtin_spe_evsplati", v2si_ftype_signed_char, SPE_BUILTIN_EVSPLATI);


  def_builtin (target_flags, "__builtin_spe_evlddx", v2si_ftype_pv2si_int, SPE_BUILTIN_EVLDDX);
  def_builtin (target_flags, "__builtin_spe_evldwx", v2si_ftype_pv2si_int, SPE_BUILTIN_EVLDWX);
  def_builtin (target_flags, "__builtin_spe_evldhx", v2si_ftype_pv2si_int, SPE_BUILTIN_EVLDHX);
  def_builtin (target_flags, "__builtin_spe_evlwhex", v2si_ftype_puint_int, SPE_BUILTIN_EVLWHEX);
  def_builtin (target_flags, "__builtin_spe_evlwhoux", v2si_ftype_puint_int, SPE_BUILTIN_EVLWHOUX);
  def_builtin (target_flags, "__builtin_spe_evlwhosx", v2si_ftype_puint_int, SPE_BUILTIN_EVLWHOSX);
  def_builtin (target_flags, "__builtin_spe_evlwwsplatx", v2si_ftype_puint_int, SPE_BUILTIN_EVLWWSPLATX);
  def_builtin (target_flags, "__builtin_spe_evlwhsplatx", v2si_ftype_puint_int, SPE_BUILTIN_EVLWHSPLATX);
  def_builtin (target_flags, "__builtin_spe_evlhhesplatx", v2si_ftype_pushort_int, SPE_BUILTIN_EVLHHESPLATX);
  def_builtin (target_flags, "__builtin_spe_evlhhousplatx", v2si_ftype_pushort_int, SPE_BUILTIN_EVLHHOUSPLATX);
  def_builtin (target_flags, "__builtin_spe_evlhhossplatx", v2si_ftype_pushort_int, SPE_BUILTIN_EVLHHOSSPLATX);
  def_builtin (target_flags, "__builtin_spe_evldd", v2si_ftype_pv2si_int, SPE_BUILTIN_EVLDD);
  def_builtin (target_flags, "__builtin_spe_evldw", v2si_ftype_pv2si_int, SPE_BUILTIN_EVLDW);
  def_builtin (target_flags, "__builtin_spe_evldh", v2si_ftype_pv2si_int, SPE_BUILTIN_EVLDH);
  def_builtin (target_flags, "__builtin_spe_evlhhesplat", v2si_ftype_pushort_int, SPE_BUILTIN_EVLHHESPLAT);
  def_builtin (target_flags, "__builtin_spe_evlhhossplat", v2si_ftype_pushort_int, SPE_BUILTIN_EVLHHOSSPLAT);
  def_builtin (target_flags, "__builtin_spe_evlhhousplat", v2si_ftype_pushort_int, SPE_BUILTIN_EVLHHOUSPLAT);
  def_builtin (target_flags, "__builtin_spe_evlwhe", v2si_ftype_puint_int, SPE_BUILTIN_EVLWHE);
  def_builtin (target_flags, "__builtin_spe_evlwhos", v2si_ftype_puint_int, SPE_BUILTIN_EVLWHOS);
  def_builtin (target_flags, "__builtin_spe_evlwhou", v2si_ftype_puint_int, SPE_BUILTIN_EVLWHOU);
  def_builtin (target_flags, "__builtin_spe_evlwhsplat", v2si_ftype_puint_int, SPE_BUILTIN_EVLWHSPLAT);
  def_builtin (target_flags, "__builtin_spe_evlwwsplat", v2si_ftype_puint_int, SPE_BUILTIN_EVLWWSPLAT);


  d = (struct builtin_description *) bdesc_spe_predicates;
  for (i = 0; i < ARRAY_SIZE (bdesc_spe_predicates); ++i, d++)
    {
      tree type;

      switch (insn_data[d->icode].operand[1].mode)
 {
 case 128:
   type = int_ftype_int_v2si_v2si;
   break;
 case 129:
   type = int_ftype_int_v2sf_v2sf;
   break;
 default:
   gcc_unreachable ();
 }

      def_builtin (d->mask, d->name, type, d->code);
    }


  d = (struct builtin_description *) bdesc_spe_evsel;
  for (i = 0; i < ARRAY_SIZE (bdesc_spe_evsel); ++i, d++)
    {
      tree type;

      switch (insn_data[d->icode].operand[1].mode)
 {
 case 128:
   type = v2si_ftype_4_v2si;
   break;
 case 129:
   type = v2sf_ftype_4_v2sf;
   break;
 default:
   gcc_unreachable ();
 }

      def_builtin (d->mask, d->name, type, d->code);
    }
}
