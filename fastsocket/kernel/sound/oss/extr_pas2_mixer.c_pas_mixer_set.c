
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEB (int ) ;
 int EINVAL ;
 unsigned int POSSIBLE_RECORDING_DEVICES ;






 int SOUND_MIXER_NRDEVICES ;







 int* levels ;
 int mixer_output (int,int,int,int,int) ;
 int printk (char*,int,unsigned int) ;
 int rec_devices ;

__attribute__((used)) static int
pas_mixer_set(int whichDev, unsigned int level)
{
 int left, right, devmask, changed, i, mixer = 0;

 DEB(printk("static int pas_mixer_set(int whichDev = %d, unsigned int level = %X)\n", whichDev, level));

 left = level & 0x7f;
 right = (level & 0x7f00) >> 8;

 if (whichDev < SOUND_MIXER_NRDEVICES) {
  if ((1 << whichDev) & rec_devices)
   mixer = 0x20;
  else
   mixer = 0x00;
 }

 switch (whichDev)
   {
   case 128:
    levels[whichDev] = mixer_output(right, left, 63, 0x01, 0);
    break;





   case 139:
    levels[whichDev] = mixer_output(right, left, 12, 0x03, 0);
    break;
   case 129:
    levels[whichDev] = mixer_output(right, left, 12, 0x04, 0);
    break;

   case 130:
    levels[whichDev] = mixer_output(right, left, 31, 0x10 | 0x00, mixer);
    break;
   case 134:
    levels[whichDev] = mixer_output(right, left, 31, 0x10 | 0x05, mixer);
    break;
   case 140:
    levels[whichDev] = mixer_output(right, left, 31, 0x10 | 0x07, mixer);
    break;
   case 131:
    levels[whichDev] = mixer_output(right, left, 31, 0x10 | 0x06, mixer);
    break;
   case 136:
    levels[whichDev] = mixer_output(right, left, 31, 0x10 | 0x02, mixer);
    break;
   case 138:
    levels[whichDev] = mixer_output(right, left, 31, 0x10 | 0x03, mixer);
    break;
   case 135:
    levels[whichDev] = mixer_output(right, left, 31, 0x10 | 0x04, mixer);
    break;
   case 137:
    levels[whichDev] = mixer_output(right, left, 31, 0x10 | 0x01,
        0x00);
    break;
   case 133:
    levels[whichDev] = mixer_output(right, left, 15, 0x02, 0);
    break;


   case 132:
    devmask = level & POSSIBLE_RECORDING_DEVICES;

    changed = devmask ^ rec_devices;
    rec_devices = devmask;

    for (i = 0; i < SOUND_MIXER_NRDEVICES; i++)
     if (changed & (1 << i))
       {
        pas_mixer_set(i, levels[i]);
       }
    return rec_devices;
    break;

   default:
    return -EINVAL;
   }

 return (levels[whichDev]);
}
