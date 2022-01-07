
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct objfile {int objfile_obstack; } ;


 int SET_FIELD_PHYSNAME (int ,int ) ;
 scalar_t__ TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_CODE_STRUCT ;
 int * TYPE_FIELDS (struct type*) ;
 char* TYPE_FIELD_NAME (struct type*,int) ;
 scalar_t__ TYPE_FIELD_STATIC (struct type*,int) ;
 scalar_t__ TYPE_FIELD_STATIC_PHYSNAME (struct type*,int) ;
 int TYPE_NFIELDS (struct type*) ;
 int obstack_alloc (int *,scalar_t__) ;
 int strcat (scalar_t__,char*) ;
 int strcpy (scalar_t__,char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static void
fix_static_member_physnames (struct type *type, char *class_name,
        struct objfile *objfile)
{
  int i;


  if (TYPE_CODE (type) != TYPE_CODE_STRUCT)
    return;

  for (i = 0; i < TYPE_NFIELDS (type); i++)
    if (TYPE_FIELD_STATIC (type, i))
      {
 if (TYPE_FIELD_STATIC_PHYSNAME (type, i))
   return;

 SET_FIELD_PHYSNAME (TYPE_FIELDS (type)[i],
       obstack_alloc (&objfile->objfile_obstack,
      strlen (class_name) + strlen (TYPE_FIELD_NAME (type, i)) + 3));
 strcpy (TYPE_FIELD_STATIC_PHYSNAME (type, i), class_name);
 strcat (TYPE_FIELD_STATIC_PHYSNAME (type, i), "::");
 strcat (TYPE_FIELD_STATIC_PHYSNAME (type, i), TYPE_FIELD_NAME (type, i));
      }
}
