
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_6__ {scalar_t__ param; scalar_t__ wanted_type; int arg_num; int pointer_count; int wanted_type_name; int name; scalar_t__ char_lenient_flag; scalar_t__ writing_in_flag; scalar_t__ reading_from_flag; struct TYPE_6__* next; } ;
typedef TYPE_2__ format_wanted_type ;
struct TYPE_5__ {scalar_t__ (* type_promotes_to ) (scalar_t__) ;} ;
struct TYPE_7__ {scalar_t__ (* types_compatible_p ) (scalar_t__,scalar_t__) ;TYPE_1__ types; } ;


 scalar_t__ ADDR_EXPR ;
 scalar_t__ CONSTANT_CLASS_P (scalar_t__) ;
 scalar_t__ DECL_P (scalar_t__) ;
 scalar_t__ INTEGER_TYPE ;
 int OPT_Wformat ;
 scalar_t__ POINTER_TYPE ;
 int STRIP_NOPS (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int ) ;
 scalar_t__ TREE_READONLY (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPE_MAIN_VARIANT (scalar_t__) ;
 scalar_t__ TYPE_READONLY (scalar_t__) ;
 scalar_t__ TYPE_RESTRICT (scalar_t__) ;
 scalar_t__ TYPE_UNSIGNED (scalar_t__) ;
 scalar_t__ TYPE_VOLATILE (scalar_t__) ;
 scalar_t__ c_common_signed_type (scalar_t__) ;
 scalar_t__ c_common_unsigned_type (scalar_t__) ;
 scalar_t__ char_type_node ;
 scalar_t__ error_mark_node ;
 int format_type_warning (int ,char const*,int,scalar_t__,int,int ,scalar_t__,int) ;
 int gcc_assert (int) ;
 scalar_t__ integer_zerop (scalar_t__) ;
 TYPE_3__ lang_hooks ;
 scalar_t__ pedantic ;
 scalar_t__ signed_char_type_node ;
 scalar_t__ stub1 (scalar_t__) ;
 scalar_t__ stub2 (scalar_t__,scalar_t__) ;
 scalar_t__ unsigned_char_type_node ;
 scalar_t__ void_type_node ;
 int warning (int ,char*,int) ;

__attribute__((used)) static void
check_format_types (format_wanted_type *types, const char *format_start,
      int format_length)
{
  for (; types != 0; types = types->next)
    {
      tree cur_param;
      tree cur_type;
      tree orig_cur_type;
      tree wanted_type;
      int arg_num;
      int i;
      int char_type_flag;
      cur_param = types->param;
      cur_type = TREE_TYPE (cur_param);
      if (cur_type == error_mark_node)
 continue;
      orig_cur_type = cur_type;
      char_type_flag = 0;
      wanted_type = types->wanted_type;
      arg_num = types->arg_num;


      gcc_assert (wanted_type);
      gcc_assert (wanted_type != void_type_node || types->pointer_count);

      if (types->pointer_count == 0)
 wanted_type = lang_hooks.types.type_promotes_to (wanted_type);

      wanted_type = TYPE_MAIN_VARIANT (wanted_type);

      STRIP_NOPS (cur_param);



      for (i = 0; i < types->pointer_count; ++i)
 {
   if (TREE_CODE (cur_type) == POINTER_TYPE)
     {
       cur_type = TREE_TYPE (cur_type);
       if (cur_type == error_mark_node)
  break;


       if (types->writing_in_flag
    && i == 0
    && cur_param != 0
    && integer_zerop (cur_param))
  warning (OPT_Wformat, "writing through null pointer "
    "(argument %d)", arg_num);


       if (types->reading_from_flag
    && i == 0
    && cur_param != 0
    && integer_zerop (cur_param))
  warning (OPT_Wformat, "reading through null pointer "
    "(argument %d)", arg_num);

       if (cur_param != 0 && TREE_CODE (cur_param) == ADDR_EXPR)
  cur_param = TREE_OPERAND (cur_param, 0);
       else
  cur_param = 0;






       if (types->writing_in_flag
    && i == 0
    && (TYPE_READONLY (cur_type)
        || (cur_param != 0
     && (CONSTANT_CLASS_P (cur_param)
         || (DECL_P (cur_param)
      && TREE_READONLY (cur_param))))))
  warning (OPT_Wformat, "writing into constant object "
    "(argument %d)", arg_num);




       if (i > 0
    && pedantic
    && (TYPE_READONLY (cur_type)
        || TYPE_VOLATILE (cur_type)
        || TYPE_RESTRICT (cur_type)))
  warning (OPT_Wformat, "extra type qualifiers in format "
    "argument (argument %d)",
    arg_num);

     }
   else
     {
       format_type_warning (types->name, format_start, format_length,
       wanted_type, types->pointer_count,
       types->wanted_type_name, orig_cur_type,
       arg_num);
       break;
     }
 }

      if (i < types->pointer_count)
 continue;

      cur_type = TYPE_MAIN_VARIANT (cur_type);




      if (types->char_lenient_flag)
 char_type_flag = (cur_type == char_type_node
     || cur_type == signed_char_type_node
     || cur_type == unsigned_char_type_node);


      if (lang_hooks.types_compatible_p (wanted_type, cur_type))
 continue;




      if (wanted_type == void_type_node
   && (!pedantic || (i == 1 && char_type_flag)))
 continue;




      if (TREE_CODE (wanted_type) == INTEGER_TYPE
   && TREE_CODE (cur_type) == INTEGER_TYPE
   && (!pedantic || i == 0 || (i == 1 && char_type_flag))
   && (TYPE_UNSIGNED (wanted_type)
       ? wanted_type == c_common_unsigned_type (cur_type)
       : wanted_type == c_common_signed_type (cur_type)))
 continue;


      if (wanted_type == char_type_node
   && (!pedantic || i < 2)
   && char_type_flag)
 continue;

      format_type_warning (types->name, format_start, format_length,
      wanted_type, types->pointer_count,
      types->wanted_type_name, orig_cur_type, arg_num);
    }
}
