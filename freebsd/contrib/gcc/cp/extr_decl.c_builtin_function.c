
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum built_in_class { ____Placeholder_built_in_class } built_in_class ;


 int NULL_TREE ;
 int builtin_function_1 (char const*,int ,int ,int,int,char const*,int ) ;
 int pop_namespace () ;
 int push_namespace (int ) ;
 int std_identifier ;
 int std_node ;

tree
builtin_function (const char* name,
    tree type,
    int code,
    enum built_in_class cl,
    const char* libname,
    tree attrs)
{


  if (name[0] != '_')
    {
      push_namespace (std_identifier);
      builtin_function_1 (name, type, std_node, code, cl, libname, attrs);
      pop_namespace ();
    }

  return builtin_function_1 (name, type, NULL_TREE, code,
        cl, libname, attrs);
}
