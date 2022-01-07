
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * sample_status; } ;
typedef TYPE_1__ snd_wavefront_t ;


 int WFC_DELETE_SAMPLE ;
 int WF_ST_EMPTY ;
 int snd_wavefront_cmd (TYPE_1__*,int ,int *,unsigned char*) ;

__attribute__((used)) static int
wavefront_delete_sample (snd_wavefront_t *dev, int sample_num)

{
 unsigned char wbuf[2];
 int x;

 wbuf[0] = sample_num & 0x7f;
 wbuf[1] = sample_num >> 7;

 if ((x = snd_wavefront_cmd (dev, WFC_DELETE_SAMPLE, ((void*)0), wbuf)) == 0) {
  dev->sample_status[sample_num] = WF_ST_EMPTY;
 }

 return x;
}
