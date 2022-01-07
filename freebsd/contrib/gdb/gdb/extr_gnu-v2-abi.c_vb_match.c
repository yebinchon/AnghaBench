
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 scalar_t__ TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_CODE_PTR ;
 char* TYPE_FIELD_NAME (struct type*,int) ;
 struct type* TYPE_FIELD_TYPE (struct type*,int) ;
 int * TYPE_NAME (struct type*) ;
 struct type* TYPE_TARGET_TYPE (struct type*) ;
 scalar_t__ is_cplus_marker (char) ;
 scalar_t__ strcmp (int *,int *) ;

__attribute__((used)) static int
vb_match (struct type *type, int index, struct type *basetype)
{
  struct type *fieldtype;
  char *name = TYPE_FIELD_NAME (type, index);
  char *field_class_name = ((void*)0);

  if (*name != '_')
    return 0;

  if (name[1] == 'v' && name[2] == 'b' && is_cplus_marker (name[3]))
    field_class_name = name + 4;

  if (name[1] == '_' && name[2] == 'v' && name[3] == 'b' && name[4] == '_')
    field_class_name = name + 5;

  if (field_class_name == ((void*)0))

    return 0;



  fieldtype = TYPE_FIELD_TYPE (type, index);
  if (fieldtype == ((void*)0)
      || TYPE_CODE (fieldtype) != TYPE_CODE_PTR)

    return 0;





  if (TYPE_TARGET_TYPE (fieldtype) == basetype)
    return 1;

  if (TYPE_NAME (basetype) != ((void*)0)
      && TYPE_NAME (TYPE_TARGET_TYPE (fieldtype)) != ((void*)0)
      && strcmp (TYPE_NAME (basetype),
   TYPE_NAME (TYPE_TARGET_TYPE (fieldtype))) == 0)
    return 1;
  return 0;
}
