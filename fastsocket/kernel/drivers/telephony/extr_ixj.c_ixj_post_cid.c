
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ cidplay; } ;
struct TYPE_16__ {int cidsize; int write_q; scalar_t__ cid_play_flag; scalar_t__ cid_rec_flag; int cid_rec_volume; int cid_rec_codec; int cid_play_volume; int cid_play_aec_level; int cid_play_codec; int cid_base_frame_size; scalar_t__ fskdcnt; int board; TYPE_1__ flags; } ;
typedef TYPE_2__ IXJ ;


 int PLD_SLIC_STATE_STANDBY ;
 int SLIC_SetState (int ,TYPE_2__*) ;
 int ixj_aec_start (TYPE_2__*,int ) ;
 int ixj_fsk_free (TYPE_2__*) ;
 int ixj_play_start (TYPE_2__*) ;
 int ixj_play_stop (TYPE_2__*) ;
 int ixj_record_start (TYPE_2__*) ;
 int ixjdebug ;
 int jiffies ;
 int printk (char*,int ,int ) ;
 int set_base_frame (TYPE_2__*,int ) ;
 int set_play_codec (TYPE_2__*,int ) ;
 int set_play_volume (TYPE_2__*,int ) ;
 int set_rec_codec (TYPE_2__*,int ) ;
 int set_rec_volume (TYPE_2__*,int ) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void ixj_post_cid(IXJ *j)
{
 ixj_play_stop(j);

 if(j->cidsize > 5000) {
  SLIC_SetState(PLD_SLIC_STATE_STANDBY, j);
 }
 j->flags.cidplay = 0;
 if(ixjdebug & 0x0200) {
  printk("IXJ phone%d Finished Playing CallerID data %ld\n", j->board, jiffies);
 }

 ixj_fsk_free(j);

 j->fskdcnt = 0;
 set_base_frame(j, j->cid_base_frame_size);
 set_play_codec(j, j->cid_play_codec);
 ixj_aec_start(j, j->cid_play_aec_level);
 set_play_volume(j, j->cid_play_volume);

 set_rec_codec(j, j->cid_rec_codec);
 set_rec_volume(j, j->cid_rec_volume);

 if(j->cid_rec_flag)
  ixj_record_start(j);

 if(j->cid_play_flag)
  ixj_play_start(j);

 if(j->cid_play_flag) {
  wake_up_interruptible(&j->write_q);
 }
}
