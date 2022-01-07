
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ concat (char*,char*,int *) ;
 int error (char*) ;
 scalar_t__ range ;
 int range_check ;



 scalar_t__ range_mode ;
 scalar_t__ range_mode_auto ;
 int xfree (scalar_t__) ;

__attribute__((used)) static void
set_range_str (void)
{
  char *tmp, *pref = "";

  if (range_mode == range_mode_auto)
    pref = "auto; currently ";

  switch (range_check)
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
      error ("Unrecognized range check setting.");
    }

  if (range)
    xfree (range);
  range = concat (pref, tmp, ((void*)0));
}
