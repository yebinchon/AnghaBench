#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  (* pushdecl ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_4__ {TYPE_1__ decls; } ;

/* Variables and functions */
 size_t BUILT_IN_CLOG ; 
 scalar_t__ TARGET_ALTIVEC ; 
 scalar_t__ TARGET_SPE ; 
 int /*<<< orphan*/  TYPE_DECL ; 
 void* V16QI_type_node ; 
 void* V2SF_type_node ; 
 void* V2SI_type_node ; 
 void* V4HI_type_node ; 
 void* V4SF_type_node ; 
 void* V4SI_type_node ; 
 void* V8HI_type_node ; 
 int /*<<< orphan*/  FUNC0 () ; 
 void* bool_V16QI_type_node ; 
 void* bool_V4SI_type_node ; 
 void* bool_V8HI_type_node ; 
 void* bool_char_type_node ; 
 void* bool_int_type_node ; 
 void* bool_short_type_node ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 void* FUNC2 (void*) ; 
 void* FUNC3 (void*,int) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 void* FUNC5 (void*,int) ; 
 scalar_t__* built_in_decls ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 void* float_type_internal_node ; 
 void* float_type_node ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 void* intHI_type_internal_node ; 
 void* intHI_type_node ; 
 void* intQI_type_internal_node ; 
 void* intQI_type_node ; 
 void* intSI_type_internal_node ; 
 void* intSI_type_node ; 
 TYPE_2__ lang_hooks ; 
 int /*<<< orphan*/  long_integer_type_internal_node ; 
 int /*<<< orphan*/  long_integer_type_node ; 
 int /*<<< orphan*/  long_unsigned_type_internal_node ; 
 int /*<<< orphan*/  long_unsigned_type_node ; 
 void* opaque_V2SF_type_node ; 
 void* opaque_V2SI_type_node ; 
 int /*<<< orphan*/  opaque_V4SI_type_node ; 
 int /*<<< orphan*/  opaque_p_V2SI_type_node ; 
 void* pixel_V8HI_type_node ; 
 void* pixel_type_node ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 void* uintHI_type_internal_node ; 
 void* uintQI_type_internal_node ; 
 void* uintSI_type_internal_node ; 
 void* unsigned_V16QI_type_node ; 
 void* unsigned_V4SI_type_node ; 
 void* unsigned_V8HI_type_node ; 
 void* unsigned_intHI_type_node ; 
 void* unsigned_intQI_type_node ; 
 void* unsigned_intSI_type_node ; 
 int /*<<< orphan*/  void_type_internal_node ; 
 int /*<<< orphan*/  void_type_node ; 

__attribute__((used)) static void
FUNC26 (void)
{
  V2SI_type_node = FUNC5 (intSI_type_node, 2);
  V2SF_type_node = FUNC5 (float_type_node, 2);
  V4HI_type_node = FUNC5 (intHI_type_node, 4);
  V4SI_type_node = FUNC5 (intSI_type_node, 4);
  V4SF_type_node = FUNC5 (float_type_node, 4);
  V8HI_type_node = FUNC5 (intHI_type_node, 8);
  V16QI_type_node = FUNC5 (intQI_type_node, 16);

  unsigned_V16QI_type_node = FUNC5 (unsigned_intQI_type_node, 16);
  unsigned_V8HI_type_node = FUNC5 (unsigned_intHI_type_node, 8);
  unsigned_V4SI_type_node = FUNC5 (unsigned_intSI_type_node, 4);

  opaque_V2SF_type_node = FUNC3 (float_type_node, 2);
  opaque_V2SI_type_node = FUNC3 (intSI_type_node, 2);
  opaque_p_V2SI_type_node = FUNC4 (opaque_V2SI_type_node);
  opaque_V4SI_type_node = FUNC6 (V4SI_type_node);

  /* The 'vector bool ...' types must be kept distinct from 'vector unsigned ...'
     types, especially in C++ land.  Similarly, 'vector pixel' is distinct from
     'vector unsigned short'.  */

  bool_char_type_node = FUNC2 (unsigned_intQI_type_node);
  bool_short_type_node = FUNC2 (unsigned_intHI_type_node);
  bool_int_type_node = FUNC2 (unsigned_intSI_type_node);
  pixel_type_node = FUNC2 (unsigned_intHI_type_node);

  long_integer_type_internal_node = long_integer_type_node;
  long_unsigned_type_internal_node = long_unsigned_type_node;
  intQI_type_internal_node = intQI_type_node;
  uintQI_type_internal_node = unsigned_intQI_type_node;
  intHI_type_internal_node = intHI_type_node;
  uintHI_type_internal_node = unsigned_intHI_type_node;
  intSI_type_internal_node = intSI_type_node;
  uintSI_type_internal_node = unsigned_intSI_type_node;
  float_type_internal_node = float_type_node;
  void_type_internal_node = void_type_node;

  (*lang_hooks.decls.pushdecl) (FUNC1 (TYPE_DECL,
					    FUNC7 ("__bool char"),
					    bool_char_type_node));
  (*lang_hooks.decls.pushdecl) (FUNC1 (TYPE_DECL,
					    FUNC7 ("__bool short"),
					    bool_short_type_node));
  (*lang_hooks.decls.pushdecl) (FUNC1 (TYPE_DECL,
					    FUNC7 ("__bool int"),
					    bool_int_type_node));
  (*lang_hooks.decls.pushdecl) (FUNC1 (TYPE_DECL,
					    FUNC7 ("__pixel"),
					    pixel_type_node));

  bool_V16QI_type_node = FUNC5 (bool_char_type_node, 16);
  bool_V8HI_type_node = FUNC5 (bool_short_type_node, 8);
  bool_V4SI_type_node = FUNC5 (bool_int_type_node, 4);
  pixel_V8HI_type_node = FUNC5 (pixel_type_node, 8);

  (*lang_hooks.decls.pushdecl) (FUNC1 (TYPE_DECL,
					    FUNC7 ("__vector unsigned char"),
					    unsigned_V16QI_type_node));
  (*lang_hooks.decls.pushdecl) (FUNC1 (TYPE_DECL,
					    FUNC7 ("__vector signed char"),
					    V16QI_type_node));
  (*lang_hooks.decls.pushdecl) (FUNC1 (TYPE_DECL,
					    FUNC7 ("__vector __bool char"),
					    bool_V16QI_type_node));

  (*lang_hooks.decls.pushdecl) (FUNC1 (TYPE_DECL,
					    FUNC7 ("__vector unsigned short"),
					    unsigned_V8HI_type_node));
  (*lang_hooks.decls.pushdecl) (FUNC1 (TYPE_DECL,
					    FUNC7 ("__vector signed short"),
					    V8HI_type_node));
  (*lang_hooks.decls.pushdecl) (FUNC1 (TYPE_DECL,
					    FUNC7 ("__vector __bool short"),
					    bool_V8HI_type_node));

  (*lang_hooks.decls.pushdecl) (FUNC1 (TYPE_DECL,
					    FUNC7 ("__vector unsigned int"),
					    unsigned_V4SI_type_node));
  (*lang_hooks.decls.pushdecl) (FUNC1 (TYPE_DECL,
					    FUNC7 ("__vector signed int"),
					    V4SI_type_node));
  (*lang_hooks.decls.pushdecl) (FUNC1 (TYPE_DECL,
					    FUNC7 ("__vector __bool int"),
					    bool_V4SI_type_node));

  (*lang_hooks.decls.pushdecl) (FUNC1 (TYPE_DECL,
					    FUNC7 ("__vector float"),
					    V4SF_type_node));
  (*lang_hooks.decls.pushdecl) (FUNC1 (TYPE_DECL,
					    FUNC7 ("__vector __pixel"),
					    pixel_V8HI_type_node));

  if (TARGET_SPE)
    FUNC10 ();
  if (TARGET_ALTIVEC)
    FUNC0 ();
  if (TARGET_ALTIVEC || TARGET_SPE)
    FUNC8 ();

#if TARGET_XCOFF
  /* AIX libm provides clog as __clog.  */
  if (built_in_decls [BUILT_IN_CLOG])
    set_user_assembler_name (built_in_decls [BUILT_IN_CLOG], "__clog");
#endif
}