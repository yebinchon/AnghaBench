
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sb_csp {int running; scalar_t__ mode; scalar_t__ acc_rates; scalar_t__ acc_width; scalar_t__ acc_channels; scalar_t__ acc_format; } ;


 int EBUSY ;
 int ENXIO ;
 scalar_t__ SNDRV_SB_CSP_MODE_QSOUND ;
 int SNDRV_SB_CSP_ST_LOADED ;
 int SNDRV_SB_CSP_ST_RUNNING ;
 int snd_sb_qsound_destroy (struct snd_sb_csp*) ;

__attribute__((used)) static int snd_sb_csp_unload(struct snd_sb_csp * p)
{
 if (p->running & SNDRV_SB_CSP_ST_RUNNING)
  return -EBUSY;
 if (!(p->running & SNDRV_SB_CSP_ST_LOADED))
  return -ENXIO;


 p->acc_format = 0;
 p->acc_channels = p->acc_width = p->acc_rates = 0;

 if (p->mode == SNDRV_SB_CSP_MODE_QSOUND) {
  snd_sb_qsound_destroy(p);
 }

 p->running = 0;
 p->mode = 0;
 return 0;
}
