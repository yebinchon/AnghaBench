
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ concat (char*,char*,int *) ;
 int error (char*) ;
 scalar_t__ type ;
 int type_check ;



 scalar_t__ type_mode ;
 scalar_t__ type_mode_auto ;
 int xfree (scalar_t__) ;

__attribute__((used)) static void
set_type_str (void)
{
  char *tmp = ((void*)0), *prefix = "";

  if (type)
    xfree (type);
  if (type_mode == type_mode_auto)
    prefix = "auto; currently ";

  switch (type_check)
    {
    case 129:
      tmp = "on";
      break;
    case 130:
      tmp = "off";
      break;
    case 128:
      tmp = "warn";
      break;
    default:
      error ("Unrecognized type check setting.");
    }

  type = concat (prefix, tmp, ((void*)0));
}
