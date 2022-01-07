
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 scalar_t__ TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_CODE_CLASS ;
 scalar_t__ TYPE_CODE_PTR ;
 char* TYPE_FIELD_NAME (struct type*,int ) ;
 struct type* TYPE_FIELD_TYPE (struct type*,int ) ;
 char* TYPE_NAME (struct type*) ;
 scalar_t__ TYPE_NFIELDS (struct type*) ;
 struct type* TYPE_TARGET_TYPE (struct type*) ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static char *
class_of (struct type *functype)
{
  struct type *first_param_type;
  char *first_param_name;
  struct type *pointed_to_type;
  char *class_name;





  if (TYPE_NFIELDS (functype) == 0)
    return ((void*)0);
  first_param_name = TYPE_FIELD_NAME (functype, 0);
  if (first_param_name == ((void*)0))
    return ((void*)0);
  if (strcmp (first_param_name, "this"))
    return ((void*)0);
  first_param_type = TYPE_FIELD_TYPE (functype, 0);
  if (first_param_type == ((void*)0))
    return ((void*)0);
  if (TYPE_CODE (first_param_type) != TYPE_CODE_PTR)
    return ((void*)0);




  pointed_to_type = TYPE_TARGET_TYPE (first_param_type);
  if (pointed_to_type == ((void*)0))
    return ((void*)0);
  if (TYPE_CODE (pointed_to_type) != TYPE_CODE_CLASS)
    return ((void*)0);
  class_name = TYPE_NAME (pointed_to_type);
  if (class_name == ((void*)0))
    return ((void*)0);




  if (strncmp (class_name, "class ", 6) == 0)
    class_name += 6;

  return class_name;
}
