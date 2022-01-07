
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;




 int ERROR_MARK ;
 int IDENTIFIER_NODE ;
 int PARM_DECL ;

 int TREE_CODE (char*) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 int TYPE_DOMAIN (scalar_t__) ;
 int * TYPE_MAX_VALUE (int ) ;
 char* TYPE_NAME (scalar_t__) ;

 int VAR_DECL ;

 int error (char*,...) ;
 int gcc_unreachable () ;

void
c_incomplete_type_error (tree value, tree type)
{
  const char *type_code_string;


  if (TREE_CODE (type) == ERROR_MARK)
    return;

  if (value != 0 && (TREE_CODE (value) == VAR_DECL
       || TREE_CODE (value) == PARM_DECL))
    error ("%qD has an incomplete type", value);
  else
    {
    retry:


      switch (TREE_CODE (type))
 {
 case 130:
   type_code_string = "struct";
   break;

 case 129:
   type_code_string = "union";
   break;

 case 131:
   type_code_string = "enum";
   break;

 case 128:
   error ("invalid use of void expression");
   return;

 case 132:
   if (TYPE_DOMAIN (type))
     {
       if (TYPE_MAX_VALUE (TYPE_DOMAIN (type)) == ((void*)0))
  {
    error ("invalid use of flexible array member");
    return;
  }
       type = TREE_TYPE (type);
       goto retry;
     }
   error ("invalid use of array with unspecified bounds");
   return;

 default:
   gcc_unreachable ();
 }

      if (TREE_CODE (TYPE_NAME (type)) == IDENTIFIER_NODE)
 error ("invalid use of undefined type %<%s %E%>",
        type_code_string, TYPE_NAME (type));
      else

 error ("invalid use of incomplete typedef %qD", TYPE_NAME (type));
    }
}
