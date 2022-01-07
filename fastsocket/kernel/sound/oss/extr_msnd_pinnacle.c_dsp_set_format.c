
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int f_mode; } ;
struct TYPE_2__ {int play_sample_size; int rec_sample_size; scalar_t__ base; } ;
typedef scalar_t__ LPDAQD ;




 scalar_t__ DAPQ_DATA_BUFF ;
 scalar_t__ DAQDS__size ;
 scalar_t__ DAQDS_wSampleSize ;
 scalar_t__ DARQ_DATA_BUFF ;
 int DEFSAMPLESIZE ;
 int FMODE_READ ;
 int FMODE_WRITE ;
 TYPE_1__ dev ;
 int writew (int,scalar_t__) ;

__attribute__((used)) static int dsp_set_format(struct file *file, int val)
{
 int data, i;
 LPDAQD lpDAQ, lpDARQ;

 lpDAQ = dev.base + DAPQ_DATA_BUFF;
 lpDARQ = dev.base + DARQ_DATA_BUFF;

 switch (val) {
 case 128:
 case 129:
  data = val;
  break;
 default:
  data = DEFSAMPLESIZE;
  break;
 }

 for (i = 0; i < 3; ++i, lpDAQ += DAQDS__size, lpDARQ += DAQDS__size) {
  if (file->f_mode & FMODE_WRITE)
   writew(data, lpDAQ + DAQDS_wSampleSize);
  if (file->f_mode & FMODE_READ)
   writew(data, lpDARQ + DAQDS_wSampleSize);
 }
 if (file->f_mode & FMODE_WRITE)
  dev.play_sample_size = data;
 if (file->f_mode & FMODE_READ)
  dev.rec_sample_size = data;

 return data;
}
