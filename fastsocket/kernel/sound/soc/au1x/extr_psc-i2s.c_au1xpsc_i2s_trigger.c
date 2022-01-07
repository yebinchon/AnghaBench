
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct au1xpsc_audio_data {int dummy; } ;


 int EINVAL ;




 int SUBSTREAM_TYPE (struct snd_pcm_substream*) ;
 int au1xpsc_i2s_start (struct au1xpsc_audio_data*,int) ;
 int au1xpsc_i2s_stop (struct au1xpsc_audio_data*,int) ;
 struct au1xpsc_audio_data* au1xpsc_i2s_workdata ;

__attribute__((used)) static int au1xpsc_i2s_trigger(struct snd_pcm_substream *substream, int cmd,
          struct snd_soc_dai *dai)
{
 struct au1xpsc_audio_data *pscdata = au1xpsc_i2s_workdata;
 int ret, stype = SUBSTREAM_TYPE(substream);

 switch (cmd) {
 case 130:
 case 131:
  ret = au1xpsc_i2s_start(pscdata, stype);
  break;
 case 129:
 case 128:
  ret = au1xpsc_i2s_stop(pscdata, stype);
  break;
 default:
  ret = -EINVAL;
 }
 return ret;
}
