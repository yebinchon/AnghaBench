
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int MANGLE_TRACE_TREE (char*,int const) ;
 scalar_t__ METHOD_TYPE ;
 scalar_t__ TREE_CODE (int const) ;
 int TREE_TYPE (int ) ;
 int TREE_VALUE (int ) ;
 int TYPE_ARG_TYPES (int const) ;
 int write_CV_qualifiers_for_type (int ) ;
 int write_bare_function_type (int const,int,int *) ;
 int write_char (char) ;

__attribute__((used)) static void
write_function_type (const tree type)
{
  MANGLE_TRACE_TREE ("function-type", type);




  if (TREE_CODE (type) == METHOD_TYPE)
    {


      tree this_type = TREE_TYPE (TREE_VALUE (TYPE_ARG_TYPES (type)));
      write_CV_qualifiers_for_type (this_type);
    }

  write_char ('F');
  write_bare_function_type (type, 1,
                ((void*)0));
  write_char ('E');
}
