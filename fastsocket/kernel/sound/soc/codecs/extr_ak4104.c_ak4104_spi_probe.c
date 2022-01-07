
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct spi_device {int bits_per_word; int dev; int mode; } ;
struct snd_soc_codec {int num_dai; int reg_cache_size; int reg_cache; struct spi_device* control_data; struct ak4104_private* private_data; TYPE_1__* dai; int owner; int name; int * dev; int dapm_paths; int dapm_widgets; int mutex; } ;
struct ak4104_private {int reg_cache; struct snd_soc_codec codec; } ;
struct TYPE_3__ {int * dev; } ;


 int AK4104_CONTROL1_PW ;
 int AK4104_CONTROL1_RSTN ;
 int AK4104_NUM_REGS ;
 int AK4104_REG_CONTROL1 ;
 int AK4104_REG_RESERVED ;
 int AK4104_REG_TX ;
 int AK4104_RESERVED_VAL ;
 int AK4104_TX_TXE ;
 int DRV_NAME ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int SPI_MODE_0 ;
 int THIS_MODULE ;
 struct snd_soc_codec* ak4104_codec ;
 TYPE_1__ ak4104_dai ;
 int ak4104_fill_cache (struct snd_soc_codec*) ;
 int ak4104_read_reg_cache (struct snd_soc_codec*,int ) ;
 int ak4104_spi_write (struct snd_soc_codec*,int ,int) ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*) ;
 int kfree (struct ak4104_private*) ;
 struct ak4104_private* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int snd_soc_register_dai (TYPE_1__*) ;
 int spi_set_drvdata (struct spi_device*,struct ak4104_private*) ;
 int spi_setup (struct spi_device*) ;

__attribute__((used)) static int ak4104_spi_probe(struct spi_device *spi)
{
 struct snd_soc_codec *codec;
 struct ak4104_private *ak4104;
 int ret, val;

 spi->bits_per_word = 8;
 spi->mode = SPI_MODE_0;
 ret = spi_setup(spi);
 if (ret < 0)
  return ret;

 ak4104 = kzalloc(sizeof(struct ak4104_private), GFP_KERNEL);
 if (!ak4104) {
  dev_err(&spi->dev, "could not allocate codec\n");
  return -ENOMEM;
 }

 codec = &ak4104->codec;
 mutex_init(&codec->mutex);
 INIT_LIST_HEAD(&codec->dapm_widgets);
 INIT_LIST_HEAD(&codec->dapm_paths);

 codec->dev = &spi->dev;
 codec->name = DRV_NAME;
 codec->owner = THIS_MODULE;
 codec->dai = &ak4104_dai;
 codec->num_dai = 1;
 codec->private_data = ak4104;
 codec->control_data = spi;
 codec->reg_cache = ak4104->reg_cache;
 codec->reg_cache_size = AK4104_NUM_REGS;


 ret = ak4104_fill_cache(codec);
 if (ret < 0) {
  dev_err(&spi->dev, "failed to fill register cache\n");
  return ret;
 }




 if (ak4104_read_reg_cache(codec, AK4104_REG_RESERVED) !=
      AK4104_RESERVED_VAL) {
  ret = -ENODEV;
  goto error_free_codec;
 }


 val = ak4104_read_reg_cache(codec, AK4104_REG_CONTROL1);
 val |= AK4104_CONTROL1_PW | AK4104_CONTROL1_RSTN;
 ret = ak4104_spi_write(codec, AK4104_REG_CONTROL1, val);
 if (ret < 0)
  goto error_free_codec;


 val = ak4104_read_reg_cache(codec, AK4104_REG_TX);
 val |= AK4104_TX_TXE;
 ret = ak4104_spi_write(codec, AK4104_REG_TX, val);
 if (ret < 0)
  goto error_free_codec;

 ak4104_codec = codec;
 ret = snd_soc_register_dai(&ak4104_dai);
 if (ret < 0) {
  dev_err(&spi->dev, "failed to register DAI\n");
  goto error_free_codec;
 }

 spi_set_drvdata(spi, ak4104);
 dev_info(&spi->dev, "SPI device initialized\n");
 return 0;

error_free_codec:
 kfree(ak4104);
 ak4104_dai.dev = ((void*)0);
 return ret;
}
