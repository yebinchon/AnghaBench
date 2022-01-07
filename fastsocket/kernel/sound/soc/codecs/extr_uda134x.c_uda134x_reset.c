
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_soc_codec {int dummy; } ;


 int UDA134X_STATUS0 ;
 int msleep (int) ;
 int uda134x_read_reg_cache (struct snd_soc_codec*,int ) ;
 int uda134x_write (struct snd_soc_codec*,int ,int) ;

__attribute__((used)) static inline void uda134x_reset(struct snd_soc_codec *codec)
{
 u8 reset_reg = uda134x_read_reg_cache(codec, UDA134X_STATUS0);
 uda134x_write(codec, UDA134X_STATUS0, reset_reg | (1<<6));
 msleep(1);
 uda134x_write(codec, UDA134X_STATUS0, reset_reg & ~(1<<6));
}
