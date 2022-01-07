
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned char NumberOfSamples; unsigned char* SampleNumber; } ;
struct TYPE_6__ {TYPE_1__ ms; } ;
struct TYPE_7__ {int number; TYPE_2__ hdr; } ;
typedef TYPE_3__ wavefront_patch_info ;
typedef int snd_wavefront_t ;


 int DPRINT (int ,char*,int,unsigned char) ;
 int EIO ;
 int WFC_UPLOAD_MULTISAMPLE ;
 int WF_DEBUG_DATA ;
 unsigned char demunge_int32 (unsigned char*,int) ;
 int munge_int32 (int,unsigned char*,int) ;
 int snd_printk (char*) ;
 scalar_t__ snd_wavefront_cmd (int *,int ,unsigned char*,unsigned char*) ;
 int wavefront_read (int *) ;

__attribute__((used)) static int
wavefront_fetch_multisample (snd_wavefront_t *dev,
        wavefront_patch_info *header)
{
 int i;
 unsigned char log_ns[1];
 unsigned char number[2];
 int num_samples;

 munge_int32 (header->number, number, 2);

 if (snd_wavefront_cmd (dev, WFC_UPLOAD_MULTISAMPLE, log_ns, number)) {
  snd_printk ("upload multisample failed.\n");
  return -(EIO);
 }

 DPRINT (WF_DEBUG_DATA, "msample %d has %d samples\n",
    header->number, log_ns[0]);

 header->hdr.ms.NumberOfSamples = log_ns[0];



 num_samples = (1 << log_ns[0]);

 for (i = 0; i < num_samples; i++) {
  char d[2];
  int val;

  if ((val = wavefront_read (dev)) == -1) {
   snd_printk ("upload multisample failed "
        "during sample loop.\n");
   return -(EIO);
  }
  d[0] = val;

  if ((val = wavefront_read (dev)) == -1) {
   snd_printk ("upload multisample failed "
        "during sample loop.\n");
   return -(EIO);
  }
  d[1] = val;

  header->hdr.ms.SampleNumber[i] =
   demunge_int32 ((unsigned char *) d, 2);

  DPRINT (WF_DEBUG_DATA, "msample sample[%d] = %d\n",
     i, header->hdr.ms.SampleNumber[i]);
 }

 return (0);
}
