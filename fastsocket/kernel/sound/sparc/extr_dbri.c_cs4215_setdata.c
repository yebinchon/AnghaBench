
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* data; } ;
struct snd_dbri {TYPE_1__ mm; struct dbri_streaminfo* stream_info; } ;
struct dbri_streaminfo {int left_gain; int right_gain; } ;


 int CS4215_LG (int) ;
 int CS4215_RG (int) ;
 int DBRI_MAX_VOLUME ;
 size_t DBRI_PLAY ;
 size_t DBRI_REC ;
 int xmit_fixed (struct snd_dbri*,int,int) ;

__attribute__((used)) static void cs4215_setdata(struct snd_dbri *dbri, int muted)
{
 if (muted) {
  dbri->mm.data[0] |= 63;
  dbri->mm.data[1] |= 63;
  dbri->mm.data[2] &= ~15;
  dbri->mm.data[3] &= ~15;
 } else {

  struct dbri_streaminfo *info = &dbri->stream_info[DBRI_PLAY];
  int left_gain = info->left_gain & 0x3f;
  int right_gain = info->right_gain & 0x3f;

  dbri->mm.data[0] &= ~0x3f;
  dbri->mm.data[1] &= ~0x3f;
  dbri->mm.data[0] |= (DBRI_MAX_VOLUME - left_gain);
  dbri->mm.data[1] |= (DBRI_MAX_VOLUME - right_gain);


  info = &dbri->stream_info[DBRI_REC];
  left_gain = info->left_gain & 0xf;
  right_gain = info->right_gain & 0xf;
  dbri->mm.data[2] |= CS4215_LG(left_gain);
  dbri->mm.data[3] |= CS4215_RG(right_gain);
 }

 xmit_fixed(dbri, 20, *(int *)dbri->mm.data);
}
