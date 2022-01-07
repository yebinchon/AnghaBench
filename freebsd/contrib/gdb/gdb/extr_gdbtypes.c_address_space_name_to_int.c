
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int dummy; } ;


 int TYPE_FLAG_CODE_SPACE ;
 int TYPE_FLAG_DATA_SPACE ;
 struct gdbarch* current_gdbarch ;
 int error (char*,char*) ;
 scalar_t__ gdbarch_address_class_name_to_type_flags (struct gdbarch*,char*,int*) ;
 scalar_t__ gdbarch_address_class_name_to_type_flags_p (struct gdbarch*) ;
 int strcmp (char*,char*) ;

extern int
address_space_name_to_int (char *space_identifier)
{
  struct gdbarch *gdbarch = current_gdbarch;
  int type_flags;

  if (!strcmp (space_identifier, "code"))
    return TYPE_FLAG_CODE_SPACE;
  else if (!strcmp (space_identifier, "data"))
    return TYPE_FLAG_DATA_SPACE;
  else if (gdbarch_address_class_name_to_type_flags_p (gdbarch)
           && gdbarch_address_class_name_to_type_flags (gdbarch,
       space_identifier,
       &type_flags))
    return type_flags;
  else
    error ("Unknown address space specifier: \"%s\"", space_identifier);
}
