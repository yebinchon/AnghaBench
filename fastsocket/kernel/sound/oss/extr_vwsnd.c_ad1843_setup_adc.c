
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lithium_t ;







 int ASSERT (int) ;
 int DBGEV (char*,int *,int,int,int) ;
 int DBGPV (char*,int) ;
 int ad1843_ADLF ;
 int ad1843_ADRF ;
 int ad1843_C2C ;
 int ad1843_write_bits (int *,int *,int) ;
 int ad1843_write_multi (int *,int,int *,int,int *,int) ;

__attribute__((used)) static void ad1843_setup_adc(lithium_t *lith, int framerate, int fmt, int channels)
{
 int da_fmt = 0;

 DBGEV("(lith=0x%p, framerate=%d, fmt=%d, channels=%d)\n",
       lith, framerate, fmt, channels);

 switch (fmt) {
 case 129: da_fmt = 1; break;
 case 128: da_fmt = 1; break;
 case 130: da_fmt = 1; break;
 case 131: da_fmt = 2; break;
 case 132: da_fmt = 3; break;
 default: ASSERT(0);
 }

 DBGPV("da_fmt = %d\n", da_fmt);
 ASSERT(framerate >= 4000 && framerate <= 49000);
 ad1843_write_bits(lith, &ad1843_C2C, framerate);
 ad1843_write_multi(lith, 2,
      &ad1843_ADLF, da_fmt, &ad1843_ADRF, da_fmt);
}
