
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lithium_t ;







 int ASSERT (int) ;
 int DBGEV (char*,int *,int,int,int) ;
 int DBGPV (char*,int,int) ;
 int ad1843_C1C ;
 int ad1843_DA1F ;
 int ad1843_DA1SM ;
 int ad1843_write_bits (int *,int *,int) ;
 int ad1843_write_multi (int *,int,int *,int,int *,int) ;

__attribute__((used)) static void ad1843_setup_dac(lithium_t *lith,
        int framerate,
        int fmt,
        int channels)
{
 int ad_fmt = 0, ad_mode = 0;

 DBGEV("(lith=0x%p, framerate=%d, fmt=%d, channels=%d)\n",
       lith, framerate, fmt, channels);

 switch (fmt) {
 case 129: ad_fmt = 1; break;
 case 128: ad_fmt = 1; break;
 case 130: ad_fmt = 1; break;
 case 131: ad_fmt = 2; break;
 case 132: ad_fmt = 3; break;
 default: ASSERT(0);
 }

 switch (channels) {
 case 2: ad_mode = 0; break;
 case 1: ad_mode = 1; break;
 default: ASSERT(0);
 }

 DBGPV("ad_mode = %d, ad_fmt = %d\n", ad_mode, ad_fmt);
 ASSERT(framerate >= 4000 && framerate <= 49000);
 ad1843_write_bits(lith, &ad1843_C1C, framerate);
 ad1843_write_multi(lith, 2,
      &ad1843_DA1SM, ad_mode, &ad1843_DA1F, ad_fmt);
}
