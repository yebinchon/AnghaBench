
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EBUSY ;
 int EPERM ;
 int OPEN_READ ;
 int vidc_busy ;

__attribute__((used)) static int vidc_audio_open(int dev, int mode)
{

 if (mode == OPEN_READ)
  return -EPERM;

 if (vidc_busy)
  return -EBUSY;

 vidc_busy = 1;
 return 0;
}
