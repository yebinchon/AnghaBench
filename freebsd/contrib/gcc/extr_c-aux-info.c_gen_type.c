
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int formals_style ;



 int COMPLETE_TYPE_P (scalar_t__) ;
 scalar_t__ DECL_NAME (scalar_t__) ;




 char const* IDENTIFIER_POINTER (scalar_t__) ;
 int INTEGER_CST ;




 scalar_t__ TREE_CHAIN (scalar_t__) ;
 int TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_PURPOSE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;

 scalar_t__ TYPE_FIELDS (scalar_t__) ;
 scalar_t__ TYPE_NAME (scalar_t__) ;
 int TYPE_QUALS (scalar_t__) ;
 scalar_t__ TYPE_READONLY (scalar_t__) ;
 scalar_t__ TYPE_RESTRICT (scalar_t__) ;
 scalar_t__ TYPE_SIZE (scalar_t__) ;
 int TYPE_UNSIGNED (scalar_t__) ;
 scalar_t__ TYPE_VALUES (scalar_t__) ;
 scalar_t__ TYPE_VOLATILE (scalar_t__) ;


 int ansi ;
 char* concat (char const*,char const*,char*,...) ;
 char const* data_type ;
 int gcc_unreachable () ;
 char const* gen_decl (scalar_t__,int ,int ) ;
 char const* gen_formal_list_for_type (scalar_t__,int ) ;
 int int_size_in_bytes (scalar_t__) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static const char *
gen_type (const char *ret_val, tree t, formals_style style)
{
  tree chain_p;


  if (TYPE_NAME (t) && TREE_CODE (TYPE_NAME (t)) == 130)
    data_type = IDENTIFIER_POINTER (DECL_NAME (TYPE_NAME (t)));
  else
    {
      switch (TREE_CODE (t))
 {
 case 133:
   if (TYPE_READONLY (t))
     ret_val = concat ("const ", ret_val, ((void*)0));
   if (TYPE_VOLATILE (t))
     ret_val = concat ("volatile ", ret_val, ((void*)0));

   ret_val = concat ("*", ret_val, ((void*)0));

   if (TREE_CODE (TREE_TYPE (t)) == 139 || TREE_CODE (TREE_TYPE (t)) == 136)
     ret_val = concat ("(", ret_val, ")", ((void*)0));

   ret_val = gen_type (ret_val, TREE_TYPE (t), style);

   return ret_val;

 case 139:
   if (!COMPLETE_TYPE_P (t) || TREE_CODE (TYPE_SIZE (t)) != INTEGER_CST)
     ret_val = gen_type (concat (ret_val, "[]", ((void*)0)),
    TREE_TYPE (t), style);
   else if (int_size_in_bytes (t) == 0)
     ret_val = gen_type (concat (ret_val, "[0]", ((void*)0)),
    TREE_TYPE (t), style);
   else
     {
       int size = (int_size_in_bytes (t) / int_size_in_bytes (TREE_TYPE (t)));
       char buff[10];
       sprintf (buff, "[%d]", size);
       ret_val = gen_type (concat (ret_val, buff, ((void*)0)),
      TREE_TYPE (t), style);
     }
   break;

 case 136:
   ret_val = gen_type (concat (ret_val,
          gen_formal_list_for_type (t, style),
          ((void*)0)),
         TREE_TYPE (t), style);
   break;

 case 135:
   data_type = IDENTIFIER_POINTER (t);
   break;
 case 131:
   if (TYPE_NAME (t))
     data_type = IDENTIFIER_POINTER (TYPE_NAME (t));
   else
     {
       data_type = "";
       chain_p = TYPE_FIELDS (t);
       while (chain_p)
  {
    data_type = concat (data_type, gen_decl (chain_p, 0, ansi),
          ((void*)0));
    chain_p = TREE_CHAIN (chain_p);
    data_type = concat (data_type, "; ", ((void*)0));
  }
       data_type = concat ("{ ", data_type, "}", ((void*)0));
     }
   data_type = concat ("struct ", data_type, ((void*)0));
   break;

 case 129:
   if (TYPE_NAME (t))
     data_type = IDENTIFIER_POINTER (TYPE_NAME (t));
   else
     {
       data_type = "";
       chain_p = TYPE_FIELDS (t);
       while (chain_p)
  {
    data_type = concat (data_type, gen_decl (chain_p, 0, ansi),
          ((void*)0));
    chain_p = TREE_CHAIN (chain_p);
    data_type = concat (data_type, "; ", ((void*)0));
  }
       data_type = concat ("{ ", data_type, "}", ((void*)0));
     }
   data_type = concat ("union ", data_type, ((void*)0));
   break;

 case 138:
   if (TYPE_NAME (t))
     data_type = IDENTIFIER_POINTER (TYPE_NAME (t));
   else
     {
       data_type = "";
       chain_p = TYPE_VALUES (t);
       while (chain_p)
  {
    data_type = concat (data_type,
   IDENTIFIER_POINTER (TREE_PURPOSE (chain_p)), ((void*)0));
    chain_p = TREE_CHAIN (chain_p);
    if (chain_p)
      data_type = concat (data_type, ", ", ((void*)0));
  }
       data_type = concat ("{ ", data_type, " }", ((void*)0));
     }
   data_type = concat ("enum ", data_type, ((void*)0));
   break;

 case 130:
   data_type = IDENTIFIER_POINTER (DECL_NAME (t));
   break;

 case 134:
   data_type = IDENTIFIER_POINTER (DECL_NAME (TYPE_NAME (t)));


   if (TYPE_UNSIGNED (t) && TYPE_QUALS (t))
     data_type = concat ("unsigned ", data_type, ((void*)0));
   break;

 case 132:
   data_type = IDENTIFIER_POINTER (DECL_NAME (TYPE_NAME (t)));
   break;

 case 128:
   data_type = "void";
   break;

 case 137:
   data_type = "[ERROR]";
   break;

 default:
   gcc_unreachable ();
 }
    }
  if (TYPE_READONLY (t))
    ret_val = concat ("const ", ret_val, ((void*)0));
  if (TYPE_VOLATILE (t))
    ret_val = concat ("volatile ", ret_val, ((void*)0));
  if (TYPE_RESTRICT (t))
    ret_val = concat ("restrict ", ret_val, ((void*)0));
  return ret_val;
}
