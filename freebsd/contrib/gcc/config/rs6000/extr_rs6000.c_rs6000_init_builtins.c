
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* pushdecl ) (int ) ;} ;
struct TYPE_4__ {TYPE_1__ decls; } ;


 size_t BUILT_IN_CLOG ;
 scalar_t__ TARGET_ALTIVEC ;
 scalar_t__ TARGET_SPE ;
 int TYPE_DECL ;
 void* V16QI_type_node ;
 void* V2SF_type_node ;
 void* V2SI_type_node ;
 void* V4HI_type_node ;
 void* V4SF_type_node ;
 void* V4SI_type_node ;
 void* V8HI_type_node ;
 int altivec_init_builtins () ;
 void* bool_V16QI_type_node ;
 void* bool_V4SI_type_node ;
 void* bool_V8HI_type_node ;
 void* bool_char_type_node ;
 void* bool_int_type_node ;
 void* bool_short_type_node ;
 int build_decl (int ,int ,void*) ;
 void* build_distinct_type_copy (void*) ;
 void* build_opaque_vector_type (void*,int) ;
 int build_pointer_type (void*) ;
 void* build_vector_type (void*,int) ;
 scalar_t__* built_in_decls ;
 int copy_node (void*) ;
 void* float_type_internal_node ;
 void* float_type_node ;
 int get_identifier (char*) ;
 void* intHI_type_internal_node ;
 void* intHI_type_node ;
 void* intQI_type_internal_node ;
 void* intQI_type_node ;
 void* intSI_type_internal_node ;
 void* intSI_type_node ;
 TYPE_2__ lang_hooks ;
 int long_integer_type_internal_node ;
 int long_integer_type_node ;
 int long_unsigned_type_internal_node ;
 int long_unsigned_type_node ;
 void* opaque_V2SF_type_node ;
 void* opaque_V2SI_type_node ;
 int opaque_V4SI_type_node ;
 int opaque_p_V2SI_type_node ;
 void* pixel_V8HI_type_node ;
 void* pixel_type_node ;
 int rs6000_common_init_builtins () ;
 int set_user_assembler_name (scalar_t__,char*) ;
 int spe_init_builtins () ;
 int stub1 (int ) ;
 int stub10 (int ) ;
 int stub11 (int ) ;
 int stub12 (int ) ;
 int stub13 (int ) ;
 int stub14 (int ) ;
 int stub15 (int ) ;
 int stub2 (int ) ;
 int stub3 (int ) ;
 int stub4 (int ) ;
 int stub5 (int ) ;
 int stub6 (int ) ;
 int stub7 (int ) ;
 int stub8 (int ) ;
 int stub9 (int ) ;
 void* uintHI_type_internal_node ;
 void* uintQI_type_internal_node ;
 void* uintSI_type_internal_node ;
 void* unsigned_V16QI_type_node ;
 void* unsigned_V4SI_type_node ;
 void* unsigned_V8HI_type_node ;
 void* unsigned_intHI_type_node ;
 void* unsigned_intQI_type_node ;
 void* unsigned_intSI_type_node ;
 int void_type_internal_node ;
 int void_type_node ;

__attribute__((used)) static void
rs6000_init_builtins (void)
{
  V2SI_type_node = build_vector_type (intSI_type_node, 2);
  V2SF_type_node = build_vector_type (float_type_node, 2);
  V4HI_type_node = build_vector_type (intHI_type_node, 4);
  V4SI_type_node = build_vector_type (intSI_type_node, 4);
  V4SF_type_node = build_vector_type (float_type_node, 4);
  V8HI_type_node = build_vector_type (intHI_type_node, 8);
  V16QI_type_node = build_vector_type (intQI_type_node, 16);

  unsigned_V16QI_type_node = build_vector_type (unsigned_intQI_type_node, 16);
  unsigned_V8HI_type_node = build_vector_type (unsigned_intHI_type_node, 8);
  unsigned_V4SI_type_node = build_vector_type (unsigned_intSI_type_node, 4);

  opaque_V2SF_type_node = build_opaque_vector_type (float_type_node, 2);
  opaque_V2SI_type_node = build_opaque_vector_type (intSI_type_node, 2);
  opaque_p_V2SI_type_node = build_pointer_type (opaque_V2SI_type_node);
  opaque_V4SI_type_node = copy_node (V4SI_type_node);





  bool_char_type_node = build_distinct_type_copy (unsigned_intQI_type_node);
  bool_short_type_node = build_distinct_type_copy (unsigned_intHI_type_node);
  bool_int_type_node = build_distinct_type_copy (unsigned_intSI_type_node);
  pixel_type_node = build_distinct_type_copy (unsigned_intHI_type_node);

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

  (*lang_hooks.decls.pushdecl) (build_decl (TYPE_DECL,
         get_identifier ("__bool char"),
         bool_char_type_node));
  (*lang_hooks.decls.pushdecl) (build_decl (TYPE_DECL,
         get_identifier ("__bool short"),
         bool_short_type_node));
  (*lang_hooks.decls.pushdecl) (build_decl (TYPE_DECL,
         get_identifier ("__bool int"),
         bool_int_type_node));
  (*lang_hooks.decls.pushdecl) (build_decl (TYPE_DECL,
         get_identifier ("__pixel"),
         pixel_type_node));

  bool_V16QI_type_node = build_vector_type (bool_char_type_node, 16);
  bool_V8HI_type_node = build_vector_type (bool_short_type_node, 8);
  bool_V4SI_type_node = build_vector_type (bool_int_type_node, 4);
  pixel_V8HI_type_node = build_vector_type (pixel_type_node, 8);

  (*lang_hooks.decls.pushdecl) (build_decl (TYPE_DECL,
         get_identifier ("__vector unsigned char"),
         unsigned_V16QI_type_node));
  (*lang_hooks.decls.pushdecl) (build_decl (TYPE_DECL,
         get_identifier ("__vector signed char"),
         V16QI_type_node));
  (*lang_hooks.decls.pushdecl) (build_decl (TYPE_DECL,
         get_identifier ("__vector __bool char"),
         bool_V16QI_type_node));

  (*lang_hooks.decls.pushdecl) (build_decl (TYPE_DECL,
         get_identifier ("__vector unsigned short"),
         unsigned_V8HI_type_node));
  (*lang_hooks.decls.pushdecl) (build_decl (TYPE_DECL,
         get_identifier ("__vector signed short"),
         V8HI_type_node));
  (*lang_hooks.decls.pushdecl) (build_decl (TYPE_DECL,
         get_identifier ("__vector __bool short"),
         bool_V8HI_type_node));

  (*lang_hooks.decls.pushdecl) (build_decl (TYPE_DECL,
         get_identifier ("__vector unsigned int"),
         unsigned_V4SI_type_node));
  (*lang_hooks.decls.pushdecl) (build_decl (TYPE_DECL,
         get_identifier ("__vector signed int"),
         V4SI_type_node));
  (*lang_hooks.decls.pushdecl) (build_decl (TYPE_DECL,
         get_identifier ("__vector __bool int"),
         bool_V4SI_type_node));

  (*lang_hooks.decls.pushdecl) (build_decl (TYPE_DECL,
         get_identifier ("__vector float"),
         V4SF_type_node));
  (*lang_hooks.decls.pushdecl) (build_decl (TYPE_DECL,
         get_identifier ("__vector __pixel"),
         pixel_V8HI_type_node));

  if (TARGET_SPE)
    spe_init_builtins ();
  if (TARGET_ALTIVEC)
    altivec_init_builtins ();
  if (TARGET_ALTIVEC || TARGET_SPE)
    rs6000_common_init_builtins ();






}
