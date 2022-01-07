
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * tree ;


 int DECL_CONSTRUCTOR_P (int * const) ;
 int DECL_CONTEXT (int * const) ;
 int DECL_CONV_FN_P (int * const) ;
 int DECL_DESTRUCTOR_P (int * const) ;
 scalar_t__ DECL_FUNCTION_MEMBER_P (int * const) ;
 int MANGLE_TRACE_TREE (char*,int * const) ;
 scalar_t__ METHOD_TYPE ;
 scalar_t__ TREE_CODE (int * const) ;
 int TREE_TYPE (int * const) ;
 int TYPE_ARG_TYPES (int * const) ;
 scalar_t__ TYPE_FOR_JAVA (int ) ;
 int write_char (char) ;
 int write_method_parms (int ,int,int * const) ;
 int write_type (int ) ;

__attribute__((used)) static void
write_bare_function_type (const tree type, const int include_return_type_p,
     const tree decl)
{
  int java_method_p;

  MANGLE_TRACE_TREE ("bare-function-type", type);


  if (decl != ((void*)0)
      && DECL_FUNCTION_MEMBER_P (decl)
      && TYPE_FOR_JAVA (DECL_CONTEXT (decl))
      && !DECL_CONSTRUCTOR_P (decl)
      && !DECL_DESTRUCTOR_P (decl)
      && !DECL_CONV_FN_P (decl))
    {
      java_method_p = 1;
      write_char ('J');
    }
  else
    {
      java_method_p = 0;
    }


  if (include_return_type_p || java_method_p)
    write_type (TREE_TYPE (type));


  write_method_parms (TYPE_ARG_TYPES (type),
        TREE_CODE (type) == METHOD_TYPE,
        decl);
}
