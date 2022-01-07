
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lithium_t ;


 int DBGP (char*) ;
 int EINVAL ;




 int ad1843_DAADL ;
 int ad1843_DAADR ;
 int ad1843_LSS ;
 int ad1843_RSS ;
 int ad1843_read_bits (int *,int *) ;
 int ad1843_set_resample_mode (int *,int) ;
 int ad1843_write_multi (int *,int,int *,int,int *,int) ;

__attribute__((used)) static int ad1843_set_recsrc(lithium_t *lith, int newsrc)
{
 int bits;
 int oldbits;

 switch (newsrc) {
 case 128:
  bits = 6;
  break;

 case 129:
  bits = 1;
  break;

 case 130:
  bits = 2;
  break;

 case 131:
  bits = 3;
  break;

 default:
  return -EINVAL;
 }
 oldbits = ad1843_read_bits(lith, &ad1843_LSS);
 if (newsrc == 128 && oldbits != 6) {
  DBGP("enabling digital resample mode\n");
  ad1843_set_resample_mode(lith, 1);
  ad1843_write_multi(lith, 2,
       &ad1843_DAADL, 2,
       &ad1843_DAADR, 2);
 } else if (newsrc != 128 && oldbits == 6) {
  DBGP("disabling digital resample mode\n");
  ad1843_set_resample_mode(lith, 0);
  ad1843_write_multi(lith, 2,
       &ad1843_DAADL, 0,
       &ad1843_DAADR, 0);
 }
 ad1843_write_multi(lith, 2, &ad1843_LSS, bits, &ad1843_RSS, bits);
 return newsrc;
}
