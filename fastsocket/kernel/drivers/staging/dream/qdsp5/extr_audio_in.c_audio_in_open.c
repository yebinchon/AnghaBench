
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {struct audio_in* private_data; } ;
struct audio_in {int opened; int lock; scalar_t__ stopped; scalar_t__ dsp_cnt; int audrec; int audpre; int audmgr; int type; int buffer_size; int channel_mode; int samp_rate_index; int samp_rate; } ;


 int AUDREC_CMD_SAMP_RATE_INDX_11025 ;
 int AUDREC_CMD_STEREO_MODE_MONO ;
 int AUDREC_CMD_TYPE_0_INDEX_WAV ;
 int EBUSY ;
 int MONO_DATA_SIZE ;
 int RPC_AUD_DEF_SAMPLE_RATE_11025 ;
 int audio_flush (struct audio_in*) ;
 int audmgr_open (int *) ;
 int audpre_adsp_ops ;
 int audrec_adsp_ops ;
 int msm_adsp_get (char*,int *,int *,struct audio_in*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct audio_in the_audio_in ;

__attribute__((used)) static int audio_in_open(struct inode *inode, struct file *file)
{
 struct audio_in *audio = &the_audio_in;
 int rc;

 mutex_lock(&audio->lock);
 if (audio->opened) {
  rc = -EBUSY;
  goto done;
 }




 audio->samp_rate = RPC_AUD_DEF_SAMPLE_RATE_11025;
 audio->samp_rate_index = AUDREC_CMD_SAMP_RATE_INDX_11025;
 audio->channel_mode = AUDREC_CMD_STEREO_MODE_MONO;
 audio->buffer_size = MONO_DATA_SIZE;
 audio->type = AUDREC_CMD_TYPE_0_INDEX_WAV;

 rc = audmgr_open(&audio->audmgr);
 if (rc)
  goto done;
 rc = msm_adsp_get("AUDPREPROCTASK", &audio->audpre,
    &audpre_adsp_ops, audio);
 if (rc)
  goto done;
 rc = msm_adsp_get("AUDRECTASK", &audio->audrec,
      &audrec_adsp_ops, audio);
 if (rc)
  goto done;

 audio->dsp_cnt = 0;
 audio->stopped = 0;

 audio_flush(audio);

 file->private_data = audio;
 audio->opened = 1;
 rc = 0;
done:
 mutex_unlock(&audio->lock);
 return rc;
}
