
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_2__ {char* (* mangle_fundamental_type ) (scalar_t__) ;} ;


 scalar_t__ ARRAY_TYPE ;







 int MANGLE_TRACE_TREE (char*,scalar_t__) ;







 int TEMPLATE_TEMPLATE_PARM_TEMPLATE_INFO (scalar_t__) ;

 int TI_ARGS (int ) ;
 int TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;

 scalar_t__ TYPE_MAIN_VARIANT (scalar_t__) ;
 int TYPE_PTRMEMFUNC_P (scalar_t__) ;
 scalar_t__ TYPE_PTRMEM_P (scalar_t__) ;
 int TYPE_STUB_DECL (scalar_t__) ;




 int add_substitution (scalar_t__) ;
 scalar_t__ error_mark_node ;
 scalar_t__ find_substitution (scalar_t__) ;
 int gcc_unreachable () ;
 char* stub1 (scalar_t__) ;
 TYPE_1__ targetm ;
 scalar_t__ write_CV_qualifiers_for_type (scalar_t__) ;
 int write_array_type (scalar_t__) ;
 int write_builtin_type (scalar_t__) ;
 int write_char (char) ;
 int write_class_enum_type (scalar_t__) ;
 int write_function_type (scalar_t__) ;
 int write_nested_name (int ) ;
 int write_pointer_to_member_type (scalar_t__) ;
 int write_string (char const*) ;
 int write_template_args (int ) ;
 int write_template_param (scalar_t__) ;
 int write_template_template_param (scalar_t__) ;

__attribute__((used)) static void
write_type (tree type)
{


  int is_builtin_type = 0;

  MANGLE_TRACE_TREE ("type", type);

  if (type == error_mark_node)
    return;

  if (find_substitution (type))
    return;

  if (write_CV_qualifiers_for_type (type) > 0)




    write_type (TYPE_MAIN_VARIANT (type));
  else if (TREE_CODE (type) == ARRAY_TYPE)



    write_array_type (type);
  else
    {

      type = TYPE_MAIN_VARIANT (type);

      if (TYPE_PTRMEM_P (type))
 write_pointer_to_member_type (type);
      else switch (TREE_CODE (type))
 {
 case 128:
 case 146:
 case 141:
 case 138:
 {

   const char *target_mangling
     = targetm.mangle_fundamental_type (type);

   if (target_mangling)
     {
       write_string (target_mangling);
       return;
     }




   write_builtin_type (TYPE_MAIN_VARIANT (type));
   ++is_builtin_type;
   break;
 }

 case 144:
   write_char ('C');
   write_type (TREE_TYPE (type));
   break;

 case 142:
 case 140:
   write_function_type (type);
   break;

 case 130:
 case 137:
 case 143:


   if (TYPE_PTRMEMFUNC_P (type))
     write_pointer_to_member_type (type);
   else
     write_class_enum_type (type);
   break;

 case 132:
 case 131:


   write_nested_name (TYPE_STUB_DECL (type));
   break;

 case 139:
   write_char ('P');
   write_type (TREE_TYPE (type));
   break;


  case 147:
    write_string ("U13block_pointer");
    write_type (TREE_TYPE (type));
    break;


 case 136:
   write_char ('R');
   write_type (TREE_TYPE (type));
   break;

 case 133:
 case 135:
   write_template_param (type);
   break;

 case 134:
   write_template_template_param (type);
   break;

 case 145:
   write_template_template_param (type);
   write_template_args
     (TI_ARGS (TEMPLATE_TEMPLATE_PARM_TEMPLATE_INFO (type)));
   break;

 case 129:
   write_string ("U8__vector");
   write_type (TREE_TYPE (type));
   break;

 default:
   gcc_unreachable ();
 }
    }


  if (!is_builtin_type)
    add_substitution (type);
}
