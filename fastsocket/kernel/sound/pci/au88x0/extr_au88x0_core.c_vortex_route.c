
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vortex_t ;
typedef unsigned char ADBRamLink ;


 unsigned char ADB_MASK ;
 unsigned char ADB_SHIFT ;
 unsigned char NR_MIXOUT ;
 unsigned char NR_SRC ;
 unsigned char OFFSET_MIXOUT ;
 unsigned char OFFSET_SRCOUT ;
 int vortex_adb_addroutes (int *,unsigned char,unsigned char*,int) ;
 int vortex_adb_delroutes (int *,unsigned char,unsigned char,unsigned char) ;
 int vortex_mixer_addWTD (int *,unsigned char,unsigned char) ;
 int vortex_mixer_delWTD (int *,unsigned char,unsigned char) ;
 int vortex_src_addWTD (int *,unsigned char,unsigned char) ;
 int vortex_src_delWTD (int *,unsigned char,unsigned char) ;

__attribute__((used)) static void
vortex_route(vortex_t * vortex, int en, unsigned char channel,
      unsigned char source, unsigned char dest)
{
 ADBRamLink route;

 route = ((source & ADB_MASK) << ADB_SHIFT) | (dest & ADB_MASK);
 if (en) {
  vortex_adb_addroutes(vortex, channel, &route, 1);
  if ((source < (OFFSET_SRCOUT + NR_SRC))
      && (source >= OFFSET_SRCOUT))
   vortex_src_addWTD(vortex, (source - OFFSET_SRCOUT),
       channel);
  else if ((source < (OFFSET_MIXOUT + NR_MIXOUT))
    && (source >= OFFSET_MIXOUT))
   vortex_mixer_addWTD(vortex,
         (source - OFFSET_MIXOUT), channel);
 } else {
  vortex_adb_delroutes(vortex, channel, route, route);
  if ((source < (OFFSET_SRCOUT + NR_SRC))
      && (source >= OFFSET_SRCOUT))
   vortex_src_delWTD(vortex, (source - OFFSET_SRCOUT),
       channel);
  else if ((source < (OFFSET_MIXOUT + NR_MIXOUT))
    && (source >= OFFSET_MIXOUT))
   vortex_mixer_delWTD(vortex,
         (source - OFFSET_MIXOUT), channel);
 }
}
