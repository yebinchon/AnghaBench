#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
struct builtin_description {size_t icode; char* name; int /*<<< orphan*/  code; int /*<<< orphan*/  mask; } ;
struct TYPE_8__ {TYPE_2__* operand; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* pushdecl ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_7__ {TYPE_1__ decls; } ;
struct TYPE_6__ {int mode; } ;

/* Variables and functions */
 size_t FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  SPE_BUILTIN_EVABS ; 
 int /*<<< orphan*/  SPE_BUILTIN_EVADDW ; 
 int /*<<< orphan*/  SPE_BUILTIN_EVCMPEQ ; 
 int /*<<< orphan*/  SPE_BUILTIN_EVFSTSTLT ; 
 int /*<<< orphan*/  SPE_BUILTIN_EVLDD ; 
 int /*<<< orphan*/  SPE_BUILTIN_EVLDDX ; 
 int /*<<< orphan*/  SPE_BUILTIN_EVLDH ; 
 int /*<<< orphan*/  SPE_BUILTIN_EVLDHX ; 
 int /*<<< orphan*/  SPE_BUILTIN_EVLDW ; 
 int /*<<< orphan*/  SPE_BUILTIN_EVLDWX ; 
 int /*<<< orphan*/  SPE_BUILTIN_EVLHHESPLAT ; 
 int /*<<< orphan*/  SPE_BUILTIN_EVLHHESPLATX ; 
 int /*<<< orphan*/  SPE_BUILTIN_EVLHHOSSPLAT ; 
 int /*<<< orphan*/  SPE_BUILTIN_EVLHHOSSPLATX ; 
 int /*<<< orphan*/  SPE_BUILTIN_EVLHHOUSPLAT ; 
 int /*<<< orphan*/  SPE_BUILTIN_EVLHHOUSPLATX ; 
 int /*<<< orphan*/  SPE_BUILTIN_EVLWHE ; 
 int /*<<< orphan*/  SPE_BUILTIN_EVLWHEX ; 
 int /*<<< orphan*/  SPE_BUILTIN_EVLWHOS ; 
 int /*<<< orphan*/  SPE_BUILTIN_EVLWHOSX ; 
 int /*<<< orphan*/  SPE_BUILTIN_EVLWHOU ; 
 int /*<<< orphan*/  SPE_BUILTIN_EVLWHOUX ; 
 int /*<<< orphan*/  SPE_BUILTIN_EVLWHSPLAT ; 
 int /*<<< orphan*/  SPE_BUILTIN_EVLWHSPLATX ; 
 int /*<<< orphan*/  SPE_BUILTIN_EVLWWSPLAT ; 
 int /*<<< orphan*/  SPE_BUILTIN_EVLWWSPLATX ; 
 int /*<<< orphan*/  SPE_BUILTIN_EVSEL_CMPGTS ; 
 int /*<<< orphan*/  SPE_BUILTIN_EVSEL_FSTSTEQ ; 
 int /*<<< orphan*/  SPE_BUILTIN_EVSPLATFI ; 
 int /*<<< orphan*/  SPE_BUILTIN_EVSPLATI ; 
 int /*<<< orphan*/  SPE_BUILTIN_EVSTDD ; 
 int /*<<< orphan*/  SPE_BUILTIN_EVSTDDX ; 
 int /*<<< orphan*/  SPE_BUILTIN_EVSTDH ; 
 int /*<<< orphan*/  SPE_BUILTIN_EVSTDHX ; 
 int /*<<< orphan*/  SPE_BUILTIN_EVSTDW ; 
 int /*<<< orphan*/  SPE_BUILTIN_EVSTDWX ; 
 int /*<<< orphan*/  SPE_BUILTIN_EVSTWHE ; 
 int /*<<< orphan*/  SPE_BUILTIN_EVSTWHEX ; 
 int /*<<< orphan*/  SPE_BUILTIN_EVSTWHO ; 
 int /*<<< orphan*/  SPE_BUILTIN_EVSTWHOX ; 
 int /*<<< orphan*/  SPE_BUILTIN_EVSTWWE ; 
 int /*<<< orphan*/  SPE_BUILTIN_EVSTWWEX ; 
 int /*<<< orphan*/  SPE_BUILTIN_EVSTWWO ; 
 int /*<<< orphan*/  SPE_BUILTIN_EVSTWWOX ; 
 int /*<<< orphan*/  SPE_BUILTIN_EVSUBFUSIAAW ; 
 int /*<<< orphan*/  SPE_BUILTIN_EVXOR ; 
 int /*<<< orphan*/  SPE_BUILTIN_MFSPEFSCR ; 
 int /*<<< orphan*/  SPE_BUILTIN_MTSPEFSCR ; 
 int /*<<< orphan*/  TYPE_DECL ; 
#define  V2SFmode 129 
#define  V2SImode 128 
 scalar_t__ bdesc_1arg ; 
 scalar_t__ bdesc_2arg ; 
 scalar_t__ bdesc_spe_evsel ; 
 scalar_t__ bdesc_spe_predicates ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  char_type_node ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct builtin_description*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 TYPE_4__* insn_data ; 
 int /*<<< orphan*/  integer_type_node ; 
 TYPE_3__ lang_hooks ; 
 int /*<<< orphan*/  opaque_V2SF_type_node ; 
 int /*<<< orphan*/  opaque_V2SI_type_node ; 
 int /*<<< orphan*/  opaque_p_V2SI_type_node ; 
 int /*<<< orphan*/  short_unsigned_type_node ; 
 int /*<<< orphan*/  signed_char_type_node ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  target_flags ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  unsigned_type_node ; 
 int /*<<< orphan*/  void_list_node ; 
 int /*<<< orphan*/  void_type_node ; 

__attribute__((used)) static void
FUNC10 (void)
{
  tree endlink = void_list_node;
  tree puint_type_node = FUNC3 (unsigned_type_node);
  tree pushort_type_node = FUNC3 (short_unsigned_type_node);
  struct builtin_description *d;
  size_t i;

  tree v2si_ftype_4_v2si
    = FUNC2
    (opaque_V2SI_type_node,
     FUNC9 (NULL_TREE, opaque_V2SI_type_node,
		FUNC9 (NULL_TREE, opaque_V2SI_type_node,
			   FUNC9 (NULL_TREE, opaque_V2SI_type_node,
				      FUNC9 (NULL_TREE, opaque_V2SI_type_node,
						 endlink)))));

  tree v2sf_ftype_4_v2sf
    = FUNC2
    (opaque_V2SF_type_node,
     FUNC9 (NULL_TREE, opaque_V2SF_type_node,
		FUNC9 (NULL_TREE, opaque_V2SF_type_node,
			   FUNC9 (NULL_TREE, opaque_V2SF_type_node,
				      FUNC9 (NULL_TREE, opaque_V2SF_type_node,
						 endlink)))));

  tree int_ftype_int_v2si_v2si
    = FUNC2
    (integer_type_node,
     FUNC9 (NULL_TREE, integer_type_node,
		FUNC9 (NULL_TREE, opaque_V2SI_type_node,
			   FUNC9 (NULL_TREE, opaque_V2SI_type_node,
				      endlink))));

  tree int_ftype_int_v2sf_v2sf
    = FUNC2
    (integer_type_node,
     FUNC9 (NULL_TREE, integer_type_node,
		FUNC9 (NULL_TREE, opaque_V2SF_type_node,
			   FUNC9 (NULL_TREE, opaque_V2SF_type_node,
				      endlink))));

  tree void_ftype_v2si_puint_int
    = FUNC2 (void_type_node,
			   FUNC9 (NULL_TREE, opaque_V2SI_type_node,
				      FUNC9 (NULL_TREE, puint_type_node,
						 FUNC9 (NULL_TREE,
							    integer_type_node,
							    endlink))));

  tree void_ftype_v2si_puint_char
    = FUNC2 (void_type_node,
			   FUNC9 (NULL_TREE, opaque_V2SI_type_node,
				      FUNC9 (NULL_TREE, puint_type_node,
						 FUNC9 (NULL_TREE,
							    char_type_node,
							    endlink))));

  tree void_ftype_v2si_pv2si_int
    = FUNC2 (void_type_node,
			   FUNC9 (NULL_TREE, opaque_V2SI_type_node,
				      FUNC9 (NULL_TREE, opaque_p_V2SI_type_node,
						 FUNC9 (NULL_TREE,
							    integer_type_node,
							    endlink))));

  tree void_ftype_v2si_pv2si_char
    = FUNC2 (void_type_node,
			   FUNC9 (NULL_TREE, opaque_V2SI_type_node,
				      FUNC9 (NULL_TREE, opaque_p_V2SI_type_node,
						 FUNC9 (NULL_TREE,
							    char_type_node,
							    endlink))));

  tree void_ftype_int
    = FUNC2 (void_type_node,
			   FUNC9 (NULL_TREE, integer_type_node, endlink));

  tree int_ftype_void
    = FUNC2 (integer_type_node, endlink);

  tree v2si_ftype_pv2si_int
    = FUNC2 (opaque_V2SI_type_node,
			   FUNC9 (NULL_TREE, opaque_p_V2SI_type_node,
				      FUNC9 (NULL_TREE, integer_type_node,
						 endlink)));

  tree v2si_ftype_puint_int
    = FUNC2 (opaque_V2SI_type_node,
			   FUNC9 (NULL_TREE, puint_type_node,
				      FUNC9 (NULL_TREE, integer_type_node,
						 endlink)));

  tree v2si_ftype_pushort_int
    = FUNC2 (opaque_V2SI_type_node,
			   FUNC9 (NULL_TREE, pushort_type_node,
				      FUNC9 (NULL_TREE, integer_type_node,
						 endlink)));

  tree v2si_ftype_signed_char
    = FUNC2 (opaque_V2SI_type_node,
			   FUNC9 (NULL_TREE, signed_char_type_node,
				      endlink));

  /* The initialization of the simple binary and unary builtins is
     done in rs6000_common_init_builtins, but we have to enable the
     mask bits here manually because we have run out of `target_flags'
     bits.  We really need to redesign this mask business.  */

  FUNC5 ((struct builtin_description *) bdesc_2arg,
			    FUNC0 (bdesc_2arg),
			    SPE_BUILTIN_EVADDW,
			    SPE_BUILTIN_EVXOR);
  FUNC5 ((struct builtin_description *) bdesc_1arg,
			    FUNC0 (bdesc_1arg),
			    SPE_BUILTIN_EVABS,
			    SPE_BUILTIN_EVSUBFUSIAAW);
  FUNC5 ((struct builtin_description *) bdesc_spe_predicates,
			    FUNC0 (bdesc_spe_predicates),
			    SPE_BUILTIN_EVCMPEQ,
			    SPE_BUILTIN_EVFSTSTLT);
  FUNC5 ((struct builtin_description *) bdesc_spe_evsel,
			    FUNC0 (bdesc_spe_evsel),
			    SPE_BUILTIN_EVSEL_CMPGTS,
			    SPE_BUILTIN_EVSEL_FSTSTEQ);

  (*lang_hooks.decls.pushdecl)
    (FUNC1 (TYPE_DECL, FUNC7 ("__ev64_opaque__"),
		 opaque_V2SI_type_node));

  /* Initialize irregular SPE builtins.  */

  FUNC4 (target_flags, "__builtin_spe_mtspefscr", void_ftype_int, SPE_BUILTIN_MTSPEFSCR);
  FUNC4 (target_flags, "__builtin_spe_mfspefscr", int_ftype_void, SPE_BUILTIN_MFSPEFSCR);
  FUNC4 (target_flags, "__builtin_spe_evstddx", void_ftype_v2si_pv2si_int, SPE_BUILTIN_EVSTDDX);
  FUNC4 (target_flags, "__builtin_spe_evstdhx", void_ftype_v2si_pv2si_int, SPE_BUILTIN_EVSTDHX);
  FUNC4 (target_flags, "__builtin_spe_evstdwx", void_ftype_v2si_pv2si_int, SPE_BUILTIN_EVSTDWX);
  FUNC4 (target_flags, "__builtin_spe_evstwhex", void_ftype_v2si_puint_int, SPE_BUILTIN_EVSTWHEX);
  FUNC4 (target_flags, "__builtin_spe_evstwhox", void_ftype_v2si_puint_int, SPE_BUILTIN_EVSTWHOX);
  FUNC4 (target_flags, "__builtin_spe_evstwwex", void_ftype_v2si_puint_int, SPE_BUILTIN_EVSTWWEX);
  FUNC4 (target_flags, "__builtin_spe_evstwwox", void_ftype_v2si_puint_int, SPE_BUILTIN_EVSTWWOX);
  FUNC4 (target_flags, "__builtin_spe_evstdd", void_ftype_v2si_pv2si_char, SPE_BUILTIN_EVSTDD);
  FUNC4 (target_flags, "__builtin_spe_evstdh", void_ftype_v2si_pv2si_char, SPE_BUILTIN_EVSTDH);
  FUNC4 (target_flags, "__builtin_spe_evstdw", void_ftype_v2si_pv2si_char, SPE_BUILTIN_EVSTDW);
  FUNC4 (target_flags, "__builtin_spe_evstwhe", void_ftype_v2si_puint_char, SPE_BUILTIN_EVSTWHE);
  FUNC4 (target_flags, "__builtin_spe_evstwho", void_ftype_v2si_puint_char, SPE_BUILTIN_EVSTWHO);
  FUNC4 (target_flags, "__builtin_spe_evstwwe", void_ftype_v2si_puint_char, SPE_BUILTIN_EVSTWWE);
  FUNC4 (target_flags, "__builtin_spe_evstwwo", void_ftype_v2si_puint_char, SPE_BUILTIN_EVSTWWO);
  FUNC4 (target_flags, "__builtin_spe_evsplatfi", v2si_ftype_signed_char, SPE_BUILTIN_EVSPLATFI);
  FUNC4 (target_flags, "__builtin_spe_evsplati", v2si_ftype_signed_char, SPE_BUILTIN_EVSPLATI);

  /* Loads.  */
  FUNC4 (target_flags, "__builtin_spe_evlddx", v2si_ftype_pv2si_int, SPE_BUILTIN_EVLDDX);
  FUNC4 (target_flags, "__builtin_spe_evldwx", v2si_ftype_pv2si_int, SPE_BUILTIN_EVLDWX);
  FUNC4 (target_flags, "__builtin_spe_evldhx", v2si_ftype_pv2si_int, SPE_BUILTIN_EVLDHX);
  FUNC4 (target_flags, "__builtin_spe_evlwhex", v2si_ftype_puint_int, SPE_BUILTIN_EVLWHEX);
  FUNC4 (target_flags, "__builtin_spe_evlwhoux", v2si_ftype_puint_int, SPE_BUILTIN_EVLWHOUX);
  FUNC4 (target_flags, "__builtin_spe_evlwhosx", v2si_ftype_puint_int, SPE_BUILTIN_EVLWHOSX);
  FUNC4 (target_flags, "__builtin_spe_evlwwsplatx", v2si_ftype_puint_int, SPE_BUILTIN_EVLWWSPLATX);
  FUNC4 (target_flags, "__builtin_spe_evlwhsplatx", v2si_ftype_puint_int, SPE_BUILTIN_EVLWHSPLATX);
  FUNC4 (target_flags, "__builtin_spe_evlhhesplatx", v2si_ftype_pushort_int, SPE_BUILTIN_EVLHHESPLATX);
  FUNC4 (target_flags, "__builtin_spe_evlhhousplatx", v2si_ftype_pushort_int, SPE_BUILTIN_EVLHHOUSPLATX);
  FUNC4 (target_flags, "__builtin_spe_evlhhossplatx", v2si_ftype_pushort_int, SPE_BUILTIN_EVLHHOSSPLATX);
  FUNC4 (target_flags, "__builtin_spe_evldd", v2si_ftype_pv2si_int, SPE_BUILTIN_EVLDD);
  FUNC4 (target_flags, "__builtin_spe_evldw", v2si_ftype_pv2si_int, SPE_BUILTIN_EVLDW);
  FUNC4 (target_flags, "__builtin_spe_evldh", v2si_ftype_pv2si_int, SPE_BUILTIN_EVLDH);
  FUNC4 (target_flags, "__builtin_spe_evlhhesplat", v2si_ftype_pushort_int, SPE_BUILTIN_EVLHHESPLAT);
  FUNC4 (target_flags, "__builtin_spe_evlhhossplat", v2si_ftype_pushort_int, SPE_BUILTIN_EVLHHOSSPLAT);
  FUNC4 (target_flags, "__builtin_spe_evlhhousplat", v2si_ftype_pushort_int, SPE_BUILTIN_EVLHHOUSPLAT);
  FUNC4 (target_flags, "__builtin_spe_evlwhe", v2si_ftype_puint_int, SPE_BUILTIN_EVLWHE);
  FUNC4 (target_flags, "__builtin_spe_evlwhos", v2si_ftype_puint_int, SPE_BUILTIN_EVLWHOS);
  FUNC4 (target_flags, "__builtin_spe_evlwhou", v2si_ftype_puint_int, SPE_BUILTIN_EVLWHOU);
  FUNC4 (target_flags, "__builtin_spe_evlwhsplat", v2si_ftype_puint_int, SPE_BUILTIN_EVLWHSPLAT);
  FUNC4 (target_flags, "__builtin_spe_evlwwsplat", v2si_ftype_puint_int, SPE_BUILTIN_EVLWWSPLAT);

  /* Predicates.  */
  d = (struct builtin_description *) bdesc_spe_predicates;
  for (i = 0; i < FUNC0 (bdesc_spe_predicates); ++i, d++)
    {
      tree type;

      switch (insn_data[d->icode].operand[1].mode)
	{
	case V2SImode:
	  type = int_ftype_int_v2si_v2si;
	  break;
	case V2SFmode:
	  type = int_ftype_int_v2sf_v2sf;
	  break;
	default:
	  FUNC6 ();
	}

      FUNC4 (d->mask, d->name, type, d->code);
    }

  /* Evsel predicates.  */
  d = (struct builtin_description *) bdesc_spe_evsel;
  for (i = 0; i < FUNC0 (bdesc_spe_evsel); ++i, d++)
    {
      tree type;

      switch (insn_data[d->icode].operand[1].mode)
	{
	case V2SImode:
	  type = v2si_ftype_4_v2si;
	  break;
	case V2SFmode:
	  type = v2sf_ftype_4_v2sf;
	  break;
	default:
	  FUNC6 ();
	}

      FUNC4 (d->mask, d->name, type, d->code);
    }
}