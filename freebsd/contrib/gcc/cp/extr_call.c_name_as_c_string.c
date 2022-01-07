
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ IDENTIFIER_CTOR_OR_DTOR_P (scalar_t__) ;
 scalar_t__ IDENTIFIER_POINTER (scalar_t__) ;
 scalar_t__ IDENTIFIER_TYPENAME_P (scalar_t__) ;
 int TFF_PLAIN_IDENTIFIER ;
 int TREE_TYPE (scalar_t__) ;
 scalar_t__ base_dtor_identifier ;
 scalar_t__ complete_dtor_identifier ;
 char* concat (char*,char*,int *) ;
 scalar_t__ constructor_name (scalar_t__) ;
 scalar_t__ deleting_dtor_identifier ;
 char* type_as_string (int ,int ) ;

__attribute__((used)) static char *
name_as_c_string (tree name, tree type, bool *free_p)
{
  char *pretty_name;


  *free_p = 0;

  if (IDENTIFIER_CTOR_OR_DTOR_P (name))
    {
      pretty_name
 = (char *) IDENTIFIER_POINTER (constructor_name (type));

      if (name == complete_dtor_identifier
   || name == base_dtor_identifier
   || name == deleting_dtor_identifier)
 {
   pretty_name = concat ("~", pretty_name, ((void*)0));

   *free_p = 1;
 }
    }
  else if (IDENTIFIER_TYPENAME_P (name))
    {
      pretty_name = concat ("operator ",
       type_as_string (TREE_TYPE (name),
         TFF_PLAIN_IDENTIFIER),
       ((void*)0));

      *free_p = 1;
    }
  else
    pretty_name = (char *) IDENTIFIER_POINTER (name);

  return pretty_name;
}
