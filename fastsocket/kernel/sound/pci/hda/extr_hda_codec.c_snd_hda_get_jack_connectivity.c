
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int AC_DEFCFG_LOCATION_SHIFT ;

const char *snd_hda_get_jack_connectivity(u32 cfg)
{
 static char *jack_locations[4] = { "Ext", "Int", "Sep", "Oth" };

 return jack_locations[(cfg >> (AC_DEFCFG_LOCATION_SHIFT + 4)) & 3];
}
