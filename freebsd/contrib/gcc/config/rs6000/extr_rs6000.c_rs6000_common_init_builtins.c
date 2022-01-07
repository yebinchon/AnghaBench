
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
struct builtin_description {scalar_t__ name; size_t icode; int code; int mask; } ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_4__ {TYPE_1__* operand; } ;
struct TYPE_3__ {int mode; } ;


 int ALTIVEC_BUILTIN_OVERLOADED_FIRST ;
 int ALTIVEC_BUILTIN_OVERLOADED_LAST ;
 size_t ARRAY_SIZE (scalar_t__) ;
 size_t CODE_FOR_nothing ;
 int NULL_TREE ;
 int QImode ;

 int V16QI_type_node ;



 int V4SF_type_node ;

 int V4SI_type_node ;

 int V8HI_type_node ;


 scalar_t__ bdesc_1arg ;
 scalar_t__ bdesc_2arg ;
 scalar_t__ bdesc_3arg ;
 int build_function_type_list (int ,int ,int ,...) ;
 int char_type_node ;
 int def_builtin (int ,scalar_t__,int ,int ) ;
 int gcc_assert (int) ;
 int gcc_unreachable () ;
 TYPE_2__* insn_data ;
 int integer_type_node ;
 int opaque_V2SF_type_node ;
 int opaque_V2SI_type_node ;
 int opaque_V4SI_type_node ;

__attribute__((used)) static void
rs6000_common_init_builtins (void)
{
  struct builtin_description *d;
  size_t i;

  tree v4sf_ftype_v4sf_v4sf_v16qi
    = build_function_type_list (V4SF_type_node,
    V4SF_type_node, V4SF_type_node,
    V16QI_type_node, NULL_TREE);
  tree v4si_ftype_v4si_v4si_v16qi
    = build_function_type_list (V4SI_type_node,
    V4SI_type_node, V4SI_type_node,
    V16QI_type_node, NULL_TREE);
  tree v8hi_ftype_v8hi_v8hi_v16qi
    = build_function_type_list (V8HI_type_node,
    V8HI_type_node, V8HI_type_node,
    V16QI_type_node, NULL_TREE);
  tree v16qi_ftype_v16qi_v16qi_v16qi
    = build_function_type_list (V16QI_type_node,
    V16QI_type_node, V16QI_type_node,
    V16QI_type_node, NULL_TREE);
  tree v4si_ftype_int
    = build_function_type_list (V4SI_type_node, integer_type_node, NULL_TREE);
  tree v8hi_ftype_int
    = build_function_type_list (V8HI_type_node, integer_type_node, NULL_TREE);
  tree v16qi_ftype_int
    = build_function_type_list (V16QI_type_node, integer_type_node, NULL_TREE);
  tree v8hi_ftype_v16qi
    = build_function_type_list (V8HI_type_node, V16QI_type_node, NULL_TREE);
  tree v4sf_ftype_v4sf
    = build_function_type_list (V4SF_type_node, V4SF_type_node, NULL_TREE);

  tree v2si_ftype_v2si_v2si
    = build_function_type_list (opaque_V2SI_type_node,
    opaque_V2SI_type_node,
    opaque_V2SI_type_node, NULL_TREE);

  tree v2sf_ftype_v2sf_v2sf
    = build_function_type_list (opaque_V2SF_type_node,
    opaque_V2SF_type_node,
    opaque_V2SF_type_node, NULL_TREE);

  tree v2si_ftype_int_int
    = build_function_type_list (opaque_V2SI_type_node,
    integer_type_node, integer_type_node,
    NULL_TREE);

  tree opaque_ftype_opaque
    = build_function_type_list (opaque_V4SI_type_node,
    opaque_V4SI_type_node, NULL_TREE);

  tree v2si_ftype_v2si
    = build_function_type_list (opaque_V2SI_type_node,
    opaque_V2SI_type_node, NULL_TREE);

  tree v2sf_ftype_v2sf
    = build_function_type_list (opaque_V2SF_type_node,
    opaque_V2SF_type_node, NULL_TREE);

  tree v2sf_ftype_v2si
    = build_function_type_list (opaque_V2SF_type_node,
    opaque_V2SI_type_node, NULL_TREE);

  tree v2si_ftype_v2sf
    = build_function_type_list (opaque_V2SI_type_node,
    opaque_V2SF_type_node, NULL_TREE);

  tree v2si_ftype_v2si_char
    = build_function_type_list (opaque_V2SI_type_node,
    opaque_V2SI_type_node,
    char_type_node, NULL_TREE);

  tree v2si_ftype_int_char
    = build_function_type_list (opaque_V2SI_type_node,
    integer_type_node, char_type_node, NULL_TREE);

  tree v2si_ftype_char
    = build_function_type_list (opaque_V2SI_type_node,
    char_type_node, NULL_TREE);

  tree int_ftype_int_int
    = build_function_type_list (integer_type_node,
    integer_type_node, integer_type_node,
    NULL_TREE);

  tree opaque_ftype_opaque_opaque
    = build_function_type_list (opaque_V4SI_type_node,
                                opaque_V4SI_type_node, opaque_V4SI_type_node, NULL_TREE);
  tree v4si_ftype_v4si_v4si
    = build_function_type_list (V4SI_type_node,
    V4SI_type_node, V4SI_type_node, NULL_TREE);
  tree v4sf_ftype_v4si_int
    = build_function_type_list (V4SF_type_node,
    V4SI_type_node, integer_type_node, NULL_TREE);
  tree v4si_ftype_v4sf_int
    = build_function_type_list (V4SI_type_node,
    V4SF_type_node, integer_type_node, NULL_TREE);
  tree v4si_ftype_v4si_int
    = build_function_type_list (V4SI_type_node,
    V4SI_type_node, integer_type_node, NULL_TREE);
  tree v8hi_ftype_v8hi_int
    = build_function_type_list (V8HI_type_node,
    V8HI_type_node, integer_type_node, NULL_TREE);
  tree v16qi_ftype_v16qi_int
    = build_function_type_list (V16QI_type_node,
    V16QI_type_node, integer_type_node, NULL_TREE);
  tree v16qi_ftype_v16qi_v16qi_int
    = build_function_type_list (V16QI_type_node,
    V16QI_type_node, V16QI_type_node,
    integer_type_node, NULL_TREE);
  tree v8hi_ftype_v8hi_v8hi_int
    = build_function_type_list (V8HI_type_node,
    V8HI_type_node, V8HI_type_node,
    integer_type_node, NULL_TREE);
  tree v4si_ftype_v4si_v4si_int
    = build_function_type_list (V4SI_type_node,
    V4SI_type_node, V4SI_type_node,
    integer_type_node, NULL_TREE);
  tree v4sf_ftype_v4sf_v4sf_int
    = build_function_type_list (V4SF_type_node,
    V4SF_type_node, V4SF_type_node,
    integer_type_node, NULL_TREE);
  tree v4sf_ftype_v4sf_v4sf
    = build_function_type_list (V4SF_type_node,
    V4SF_type_node, V4SF_type_node, NULL_TREE);
  tree opaque_ftype_opaque_opaque_opaque
    = build_function_type_list (opaque_V4SI_type_node,
                                opaque_V4SI_type_node, opaque_V4SI_type_node,
                                opaque_V4SI_type_node, NULL_TREE);
  tree v4sf_ftype_v4sf_v4sf_v4si
    = build_function_type_list (V4SF_type_node,
    V4SF_type_node, V4SF_type_node,
    V4SI_type_node, NULL_TREE);
  tree v4sf_ftype_v4sf_v4sf_v4sf
    = build_function_type_list (V4SF_type_node,
    V4SF_type_node, V4SF_type_node,
    V4SF_type_node, NULL_TREE);
  tree v4si_ftype_v4si_v4si_v4si
    = build_function_type_list (V4SI_type_node,
    V4SI_type_node, V4SI_type_node,
    V4SI_type_node, NULL_TREE);
  tree v8hi_ftype_v8hi_v8hi
    = build_function_type_list (V8HI_type_node,
    V8HI_type_node, V8HI_type_node, NULL_TREE);
  tree v8hi_ftype_v8hi_v8hi_v8hi
    = build_function_type_list (V8HI_type_node,
    V8HI_type_node, V8HI_type_node,
    V8HI_type_node, NULL_TREE);
  tree v4si_ftype_v8hi_v8hi_v4si
    = build_function_type_list (V4SI_type_node,
    V8HI_type_node, V8HI_type_node,
    V4SI_type_node, NULL_TREE);
  tree v4si_ftype_v16qi_v16qi_v4si
    = build_function_type_list (V4SI_type_node,
    V16QI_type_node, V16QI_type_node,
    V4SI_type_node, NULL_TREE);
  tree v16qi_ftype_v16qi_v16qi
    = build_function_type_list (V16QI_type_node,
    V16QI_type_node, V16QI_type_node, NULL_TREE);
  tree v4si_ftype_v4sf_v4sf
    = build_function_type_list (V4SI_type_node,
    V4SF_type_node, V4SF_type_node, NULL_TREE);
  tree v8hi_ftype_v16qi_v16qi
    = build_function_type_list (V8HI_type_node,
    V16QI_type_node, V16QI_type_node, NULL_TREE);
  tree v4si_ftype_v8hi_v8hi
    = build_function_type_list (V4SI_type_node,
    V8HI_type_node, V8HI_type_node, NULL_TREE);
  tree v8hi_ftype_v4si_v4si
    = build_function_type_list (V8HI_type_node,
    V4SI_type_node, V4SI_type_node, NULL_TREE);
  tree v16qi_ftype_v8hi_v8hi
    = build_function_type_list (V16QI_type_node,
    V8HI_type_node, V8HI_type_node, NULL_TREE);
  tree v4si_ftype_v16qi_v4si
    = build_function_type_list (V4SI_type_node,
    V16QI_type_node, V4SI_type_node, NULL_TREE);
  tree v4si_ftype_v16qi_v16qi
    = build_function_type_list (V4SI_type_node,
    V16QI_type_node, V16QI_type_node, NULL_TREE);
  tree v4si_ftype_v8hi_v4si
    = build_function_type_list (V4SI_type_node,
    V8HI_type_node, V4SI_type_node, NULL_TREE);
  tree v4si_ftype_v8hi
    = build_function_type_list (V4SI_type_node, V8HI_type_node, NULL_TREE);
  tree int_ftype_v4si_v4si
    = build_function_type_list (integer_type_node,
    V4SI_type_node, V4SI_type_node, NULL_TREE);
  tree int_ftype_v4sf_v4sf
    = build_function_type_list (integer_type_node,
    V4SF_type_node, V4SF_type_node, NULL_TREE);
  tree int_ftype_v16qi_v16qi
    = build_function_type_list (integer_type_node,
    V16QI_type_node, V16QI_type_node, NULL_TREE);
  tree int_ftype_v8hi_v8hi
    = build_function_type_list (integer_type_node,
    V8HI_type_node, V8HI_type_node, NULL_TREE);


  d = (struct builtin_description *) bdesc_3arg;
  for (i = 0; i < ARRAY_SIZE (bdesc_3arg); i++, d++)
    {
      enum machine_mode mode0, mode1, mode2, mode3;
      tree type;
      bool is_overloaded = d->code >= ALTIVEC_BUILTIN_OVERLOADED_FIRST
      && d->code <= ALTIVEC_BUILTIN_OVERLOADED_LAST;

      if (is_overloaded)
 {
          mode0 = 128;
          mode1 = 128;
          mode2 = 128;
          mode3 = 128;
 }
      else
 {
          if (d->name == 0 || d->icode == CODE_FOR_nothing)
     continue;

          mode0 = insn_data[d->icode].operand[0].mode;
          mode1 = insn_data[d->icode].operand[1].mode;
          mode2 = insn_data[d->icode].operand[2].mode;
          mode3 = insn_data[d->icode].operand[3].mode;
 }


      if (mode0 == mode1 && mode1 == mode2 && mode2 == mode3)
 {
   switch (mode0)
     {
     case 128:
       type = opaque_ftype_opaque_opaque_opaque;
       break;
     case 130:
       type = v4si_ftype_v4si_v4si_v4si;
       break;
     case 131:
       type = v4sf_ftype_v4sf_v4sf_v4sf;
       break;
     case 129:
       type = v8hi_ftype_v8hi_v8hi_v8hi;
       break;
     case 134:
       type = v16qi_ftype_v16qi_v16qi_v16qi;
       break;
     default:
       gcc_unreachable ();
     }
 }
      else if (mode0 == mode1 && mode1 == mode2 && mode3 == 134)
 {
   switch (mode0)
     {
     case 130:
       type = v4si_ftype_v4si_v4si_v16qi;
       break;
     case 131:
       type = v4sf_ftype_v4sf_v4sf_v16qi;
       break;
     case 129:
       type = v8hi_ftype_v8hi_v8hi_v16qi;
       break;
     case 134:
       type = v16qi_ftype_v16qi_v16qi_v16qi;
       break;
     default:
       gcc_unreachable ();
     }
 }
      else if (mode0 == 130 && mode1 == 134 && mode2 == 134
        && mode3 == 130)
 type = v4si_ftype_v16qi_v16qi_v4si;
      else if (mode0 == 130 && mode1 == 129 && mode2 == 129
        && mode3 == 130)
 type = v4si_ftype_v8hi_v8hi_v4si;
      else if (mode0 == 131 && mode1 == 131 && mode2 == 131
        && mode3 == 130)
 type = v4sf_ftype_v4sf_v4sf_v4si;


      else if (mode0 == 134 && mode1 == mode0 && mode2 == mode0
        && mode3 == QImode)
 type = v16qi_ftype_v16qi_v16qi_int;


      else if (mode0 == 129 && mode1 == mode0 && mode2 == mode0
        && mode3 == QImode)
 type = v8hi_ftype_v8hi_v8hi_int;


      else if (mode0 == 130 && mode1 == mode0 && mode2 == mode0
        && mode3 == QImode)
 type = v4si_ftype_v4si_v4si_int;


      else if (mode0 == 131 && mode1 == mode0 && mode2 == mode0
        && mode3 == QImode)
 type = v4sf_ftype_v4sf_v4sf_int;

      else
 gcc_unreachable ();

      def_builtin (d->mask, d->name, type, d->code);
    }


  d = (struct builtin_description *) bdesc_2arg;
  for (i = 0; i < ARRAY_SIZE (bdesc_2arg); i++, d++)
    {
      enum machine_mode mode0, mode1, mode2;
      tree type;
      bool is_overloaded = d->code >= ALTIVEC_BUILTIN_OVERLOADED_FIRST
      && d->code <= ALTIVEC_BUILTIN_OVERLOADED_LAST;

      if (is_overloaded)
 {
   mode0 = 128;
   mode1 = 128;
   mode2 = 128;
 }
      else
 {
          if (d->name == 0 || d->icode == CODE_FOR_nothing)
     continue;

          mode0 = insn_data[d->icode].operand[0].mode;
          mode1 = insn_data[d->icode].operand[1].mode;
          mode2 = insn_data[d->icode].operand[2].mode;
 }


      if (mode0 == mode1 && mode1 == mode2)
 {
   switch (mode0)
     {
     case 128:
       type = opaque_ftype_opaque_opaque;
       break;
     case 131:
       type = v4sf_ftype_v4sf_v4sf;
       break;
     case 130:
       type = v4si_ftype_v4si_v4si;
       break;
     case 134:
       type = v16qi_ftype_v16qi_v16qi;
       break;
     case 129:
       type = v8hi_ftype_v8hi_v8hi;
       break;
     case 132:
       type = v2si_ftype_v2si_v2si;
       break;
     case 133:
       type = v2sf_ftype_v2sf_v2sf;
       break;
     case 135:
       type = int_ftype_int_int;
       break;
     default:
       gcc_unreachable ();
     }
 }




      else if (mode0 == 130 && mode1 == 131 && mode2 == 131)
 type = v4si_ftype_v4sf_v4sf;


      else if (mode0 == 129 && mode1 == 134 && mode2 == 134)
 type = v8hi_ftype_v16qi_v16qi;


      else if (mode0 == 130 && mode1 == 129 && mode2 == 129)
 type = v4si_ftype_v8hi_v8hi;


      else if (mode0 == 129 && mode1 == 130 && mode2 == 130)
 type = v8hi_ftype_v4si_v4si;


      else if (mode0 == 134 && mode1 == 129 && mode2 == 129)
 type = v16qi_ftype_v8hi_v8hi;


      else if (mode0 == 130 && mode1 == 134 && mode2 == 130)
 type = v4si_ftype_v16qi_v4si;


      else if (mode0 == 130 && mode1 == 134 && mode2 == 134)
 type = v4si_ftype_v16qi_v16qi;


      else if (mode0 == 130 && mode1 == 129 && mode2 == 130)
 type = v4si_ftype_v8hi_v4si;


      else if (mode0 == 130 && mode1 == 130 && mode2 == QImode)
 type = v4si_ftype_v4si_int;


      else if (mode0 == 129 && mode1 == 129 && mode2 == QImode)
 type = v8hi_ftype_v8hi_int;


      else if (mode0 == 134 && mode1 == 134 && mode2 == QImode)
 type = v16qi_ftype_v16qi_int;


      else if (mode0 == 131 && mode1 == 130 && mode2 == QImode)
 type = v4sf_ftype_v4si_int;


      else if (mode0 == 130 && mode1 == 131 && mode2 == QImode)
 type = v4si_ftype_v4sf_int;

      else if (mode0 == 132 && mode1 == 135 && mode2 == 135)
 type = v2si_ftype_int_int;

      else if (mode0 == 132 && mode1 == 132 && mode2 == QImode)
 type = v2si_ftype_v2si_char;

      else if (mode0 == 132 && mode1 == 135 && mode2 == QImode)
 type = v2si_ftype_int_char;

      else
 {

   gcc_assert (mode0 == 135);
   switch (mode1)
     {
     case 130:
       type = int_ftype_v4si_v4si;
       break;
     case 131:
       type = int_ftype_v4sf_v4sf;
       break;
     case 134:
       type = int_ftype_v16qi_v16qi;
       break;
     case 129:
       type = int_ftype_v8hi_v8hi;
       break;
     default:
       gcc_unreachable ();
     }
 }

      def_builtin (d->mask, d->name, type, d->code);
    }


  d = (struct builtin_description *) bdesc_1arg;
  for (i = 0; i < ARRAY_SIZE (bdesc_1arg); i++, d++)
    {
      enum machine_mode mode0, mode1;
      tree type;
      bool is_overloaded = d->code >= ALTIVEC_BUILTIN_OVERLOADED_FIRST
      && d->code <= ALTIVEC_BUILTIN_OVERLOADED_LAST;

      if (is_overloaded)
        {
          mode0 = 128;
          mode1 = 128;
        }
      else
        {
          if (d->name == 0 || d->icode == CODE_FOR_nothing)
     continue;

          mode0 = insn_data[d->icode].operand[0].mode;
          mode1 = insn_data[d->icode].operand[1].mode;
        }

      if (mode0 == 130 && mode1 == QImode)
 type = v4si_ftype_int;
      else if (mode0 == 129 && mode1 == QImode)
 type = v8hi_ftype_int;
      else if (mode0 == 134 && mode1 == QImode)
 type = v16qi_ftype_int;
      else if (mode0 == 128 && mode1 == 128)
 type = opaque_ftype_opaque;
      else if (mode0 == 131 && mode1 == 131)
 type = v4sf_ftype_v4sf;
      else if (mode0 == 129 && mode1 == 134)
 type = v8hi_ftype_v16qi;
      else if (mode0 == 130 && mode1 == 129)
 type = v4si_ftype_v8hi;
      else if (mode0 == 132 && mode1 == 132)
 type = v2si_ftype_v2si;
      else if (mode0 == 133 && mode1 == 133)
 type = v2sf_ftype_v2sf;
      else if (mode0 == 133 && mode1 == 132)
 type = v2sf_ftype_v2si;
      else if (mode0 == 132 && mode1 == 133)
 type = v2si_ftype_v2sf;
      else if (mode0 == 132 && mode1 == QImode)
 type = v2si_ftype_char;
      else
 gcc_unreachable ();

      def_builtin (d->mask, d->name, type, d->code);
    }
}
