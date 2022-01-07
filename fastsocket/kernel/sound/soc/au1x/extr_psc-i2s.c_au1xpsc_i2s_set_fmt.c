
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct au1xpsc_audio_data {unsigned long cfg; } ;


 int EINVAL ;
 unsigned long PSC_I2SCFG_BI ;
 unsigned long PSC_I2SCFG_MLJ ;
 unsigned long PSC_I2SCFG_MS ;
 unsigned long PSC_I2SCFG_WI ;
 unsigned long PSC_I2SCFG_XM ;


 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;



 unsigned int SND_SOC_DAIFMT_INV_MASK ;

 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;



 struct au1xpsc_audio_data* au1xpsc_i2s_workdata ;

__attribute__((used)) static int au1xpsc_i2s_set_fmt(struct snd_soc_dai *cpu_dai,
          unsigned int fmt)
{
 struct au1xpsc_audio_data *pscdata = au1xpsc_i2s_workdata;
 unsigned long ct;
 int ret;

 ret = -EINVAL;

 ct = pscdata->cfg;

 ct &= ~(PSC_I2SCFG_XM | PSC_I2SCFG_MLJ);
 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 134:
  ct |= PSC_I2SCFG_XM;
  break;
 case 130:
  break;
 case 131:
  ct |= PSC_I2SCFG_MLJ;
  break;
 default:
  goto out;
 }

 ct &= ~(PSC_I2SCFG_BI | PSC_I2SCFG_WI);
 switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
 case 128:
  ct |= PSC_I2SCFG_BI | PSC_I2SCFG_WI;
  break;
 case 129:
  ct |= PSC_I2SCFG_BI;
  break;
 case 132:
  ct |= PSC_I2SCFG_WI;
  break;
 case 133:
  break;
 default:
  goto out;
 }

 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 136:
  ct |= PSC_I2SCFG_MS;
  break;
 case 135:
  ct &= ~PSC_I2SCFG_MS;
  break;
 default:
  goto out;
 }

 pscdata->cfg = ct;
 ret = 0;
out:
 return ret;
}
