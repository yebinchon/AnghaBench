
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;


 size_t AC_DEFCFG_COLOR ;
 size_t AC_DEFCFG_COLOR_SHIFT ;

__attribute__((used)) static const char *get_jack_color(u32 cfg)
{
 static char *names[16] = {
  "Unknown", "Black", "Grey", "Blue",
  "Green", "Red", "Orange", "Yellow",
  "Purple", "Pink", ((void*)0), ((void*)0),
  ((void*)0), ((void*)0), "White", "Other",
 };
 cfg = (cfg & AC_DEFCFG_COLOR) >> AC_DEFCFG_COLOR_SHIFT;
 if (names[cfg])
  return names[cfg];
 else
  return "UNKNOWN";
}
