
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int supported_rec_devices; int* mixer_reroute; int recmask; int lock; TYPE_1__** mix_devices; } ;
typedef TYPE_2__ ad1848_info ;
struct TYPE_6__ {scalar_t__ nbits; int recpol; int recreg; int recpos; } ;


 int LEFT_CHN ;
 int RIGHT_CHN ;






 int ad_read (TYPE_2__*,int) ;
 int ad_write (TYPE_2__*,int,unsigned char) ;
 int soundpro ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ad1848_set_recmask(ad1848_info * devc, int mask)
{
 unsigned char recdev;
 int i, n;
 unsigned long flags;

 mask &= devc->supported_rec_devices;


 for (i = 0; i < 32; i++)
 {
  if (devc->mixer_reroute[i] != i)
  {
   if (mask & (1 << i))
   {
    mask &= ~(1 << i);
    mask |= (1 << devc->mixer_reroute[i]);
   }
  }
 }

 n = 0;
 for (i = 0; i < 32; i++)
  if (mask & (1 << i))
   n++;

 spin_lock_irqsave(&devc->lock,flags);
 if (!soundpro) {
  if (n == 0)
   mask = 128;
  else if (n != 1) {
   mask &= ~devc->recmask;

   n = 0;
   for (i = 0; i < 32; i++)
    if (mask & (1 << i))
     n++;

   if (n != 1)
    mask = 128;
  }
  switch (mask) {
  case 128:
   recdev = 2;
   break;

  case 131:
  case 129:
   recdev = 0;
   break;

  case 133:
  case 130:
   recdev = 1;
   break;

  case 132:
   recdev = 3;
   break;

  default:
   mask = 128;
   recdev = 2;
  }

  recdev <<= 6;
  ad_write(devc, 0, (ad_read(devc, 0) & 0x3f) | recdev);
  ad_write(devc, 1, (ad_read(devc, 1) & 0x3f) | recdev);
 } else {
  unsigned char val;
  int set_rec_bit;
  int j;

  for (i = 0; i < 32; i++) {
   if ((devc->supported_rec_devices & (1 << i)) == 0)
    continue;

   for (j = LEFT_CHN; j <= RIGHT_CHN; j++) {
    if (devc->mix_devices[i][j].nbits == 0)
     continue;






    set_rec_bit = ((mask & (1 << i)) != 0) ^ devc->mix_devices[i][j].recpol;

    val = ad_read(devc, devc->mix_devices[i][j].recreg);
    val &= ~(1 << devc->mix_devices[i][j].recpos);
    val |= (set_rec_bit << devc->mix_devices[i][j].recpos);
    ad_write(devc, devc->mix_devices[i][j].recreg, val);
   }
  }
 }
 spin_unlock_irqrestore(&devc->lock,flags);


 for (i = 0; i < 32; i++)
 {
  if (devc->mixer_reroute[i] != i)
  {
   if (mask & (1 << devc->mixer_reroute[i]))
   {
    mask &= ~(1 << devc->mixer_reroute[i]);
    mask |= (1 << i);
   }
  }
 }
 devc->recmask = mask;
 return mask;
}
