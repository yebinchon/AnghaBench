
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int NumberOfSamples; size_t* SampleNumber; } ;
struct TYPE_9__ {TYPE_1__ ms; } ;
struct TYPE_10__ {size_t number; TYPE_2__ hdr; } ;
typedef TYPE_3__ wavefront_patch_info ;
struct TYPE_11__ {int* sample_status; } ;
typedef TYPE_4__ snd_wavefront_t ;
typedef int WF_MSAMPLE_BYTES ;


 int DPRINT (int,char*,int,size_t,...) ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int WFC_DOWNLOAD_MULTISAMPLE ;
 int WF_DEBUG_DATA ;
 int WF_DEBUG_LOAD_PATCH ;
 int WF_SLOT_FILLED ;
 int WF_ST_MULTISAMPLE ;
 int kfree (unsigned char*) ;
 unsigned char* kmalloc (int,int ) ;
 int munge_int32 (size_t,unsigned char*,int) ;
 int snd_printk (char*) ;
 scalar_t__ snd_wavefront_cmd (TYPE_4__*,int ,unsigned char*,unsigned char*) ;

__attribute__((used)) static int
wavefront_send_multisample (snd_wavefront_t *dev, wavefront_patch_info *header)
{
 int i;
 int num_samples;
 unsigned char *msample_hdr;

 msample_hdr = kmalloc(sizeof(WF_MSAMPLE_BYTES), GFP_KERNEL);
 if (! msample_hdr)
  return -ENOMEM;

 munge_int32 (header->number, &msample_hdr[0], 2);






 num_samples = (1<<(header->hdr.ms.NumberOfSamples&7));
 msample_hdr[2] = (unsigned char) header->hdr.ms.NumberOfSamples;

 DPRINT (WF_DEBUG_LOAD_PATCH, "multi %d with %d=%d samples\n",
          header->number,
          header->hdr.ms.NumberOfSamples,
          num_samples);

 for (i = 0; i < num_samples; i++) {
  DPRINT(WF_DEBUG_LOAD_PATCH|WF_DEBUG_DATA, "sample[%d] = %d\n",
         i, header->hdr.ms.SampleNumber[i]);
  munge_int32 (header->hdr.ms.SampleNumber[i],
       &msample_hdr[3+(i*2)], 2);
 }






 if (snd_wavefront_cmd (dev, WFC_DOWNLOAD_MULTISAMPLE,
      (unsigned char *) (long) ((num_samples*2)+3),
      msample_hdr)) {
  snd_printk ("download of multisample failed.\n");
  kfree(msample_hdr);
  return -(EIO);
 }

 dev->sample_status[header->number] = (WF_SLOT_FILLED|WF_ST_MULTISAMPLE);

 kfree(msample_hdr);
 return (0);
}
