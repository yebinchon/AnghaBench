
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int subvendor; } ;
struct snd_ice1712 {int i2c; TYPE_1__ eeprom; struct ews_spec* spec; } ;
struct ews_spec {int * i2cdevs; } ;


 size_t EWS_I2C_88D ;
 size_t EWS_I2C_CS8404 ;





 int snd_i2c_lock (int ) ;
 int snd_i2c_readbytes (int ,unsigned char*,int) ;
 int snd_i2c_sendbytes (int ,unsigned char*,int) ;
 int snd_i2c_unlock (int ) ;

__attribute__((used)) static void snd_ice1712_ews_cs8404_spdif_write(struct snd_ice1712 *ice, unsigned char bits)
{
 struct ews_spec *spec = ice->spec;
 unsigned char bytes[2];

 snd_i2c_lock(ice->i2c);
 switch (ice->eeprom.subvendor) {
 case 131:
 case 130:
 case 129:
 case 128:
  if (snd_i2c_sendbytes(spec->i2cdevs[EWS_I2C_CS8404], &bits, 1)
      != 1)
   goto _error;
  break;
 case 132:
  if (snd_i2c_readbytes(spec->i2cdevs[EWS_I2C_88D], bytes, 2)
      != 2)
   goto _error;
  if (bits != bytes[1]) {
   bytes[1] = bits;
   if (snd_i2c_sendbytes(spec->i2cdevs[EWS_I2C_88D],
           bytes, 2) != 2)
    goto _error;
  }
  break;
 }
 _error:
 snd_i2c_unlock(ice->i2c);
}
