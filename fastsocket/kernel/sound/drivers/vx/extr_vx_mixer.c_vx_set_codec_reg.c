
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union vx_codec_data {int l; } ;
struct vx_core {int dummy; } ;


 int SET_CDC_DATA_INIT (union vx_codec_data) ;
 int SET_CDC_DATA_REG (union vx_codec_data,int) ;
 int SET_CDC_DATA_VAL (union vx_codec_data,int) ;
 int vx_write_codec_reg (struct vx_core*,int,int ) ;

__attribute__((used)) static void vx_set_codec_reg(struct vx_core *chip, int codec, int reg, int val)
{
 union vx_codec_data data;

 SET_CDC_DATA_INIT(data);
 SET_CDC_DATA_REG(data, reg);
 SET_CDC_DATA_VAL(data, val);
 vx_write_codec_reg(chip, codec, data.l);
}
