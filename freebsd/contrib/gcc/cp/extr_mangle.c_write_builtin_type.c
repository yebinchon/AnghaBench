
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;





 int TREE_CODE (int ) ;
 int TYPE_DOMAIN (int ) ;
 int TYPE_FOR_JAVA (int ) ;
 int TYPE_IS_SIZETYPE (int ) ;
 int TYPE_MODE (int ) ;
 int TYPE_PRECISION (int ) ;
 int TYPE_UNSIGNED (int ) ;

 int c_common_type_for_mode (int ,int ) ;
 int double_type_node ;
 int float_type_node ;
 int gcc_unreachable () ;
 char* integer_type_codes ;
 int * integer_types ;
 size_t itk_none ;
 int java_double_type_node ;
 int java_float_type_node ;
 int long_double_type_node ;
 int sprintf (char*,char*,unsigned int) ;
 scalar_t__ strlen (char const*) ;
 int wchar_type_node ;
 int write_char (char) ;
 int write_java_integer_type_codes (int ) ;
 int write_string (char const*) ;
 int write_unsigned_number (scalar_t__) ;

__attribute__((used)) static void
write_builtin_type (tree type)
{
  switch (TREE_CODE (type))
    {
    case 128:
      write_char ('v');
      break;

    case 131:
      write_char ('b');
      break;

    case 130:

      if (TYPE_IS_SIZETYPE (type))
 type = TYPE_DOMAIN (type);



      if (type == wchar_type_node)
 write_char ('w');
      else if (TYPE_FOR_JAVA (type))
 write_java_integer_type_codes (type);
      else
 {
   size_t itk;


 iagain:
   for (itk = 0; itk < itk_none; ++itk)
     if (type == integer_types[itk])
       {

  write_char (integer_type_codes[itk]);
  break;
       }

   if (itk == itk_none)
     {
       tree t = c_common_type_for_mode (TYPE_MODE (type),
            TYPE_UNSIGNED (type));
       if (type != t)
  {
    type = t;
    goto iagain;
  }

       if (TYPE_PRECISION (type) == 128)
  write_char (TYPE_UNSIGNED (type) ? 'o' : 'n');
       else
  {
    const char *prefix;
    char prec[11];

    prefix = TYPE_UNSIGNED (type) ? "uint" : "int";
    sprintf (prec, "%u", (unsigned) TYPE_PRECISION (type));
    write_char ('u');
    write_unsigned_number (strlen (prefix) + strlen (prec));
    write_string (prefix);
    write_string (prec);
  }
     }
 }
      break;

    case 129:
      if (type == float_type_node
   || type == java_float_type_node)
 write_char ('f');
      else if (type == double_type_node
        || type == java_double_type_node)
 write_char ('d');
      else if (type == long_double_type_node)
 write_char ('e');
      else
 gcc_unreachable ();
      break;

    default:
      gcc_unreachable ();
    }
}
