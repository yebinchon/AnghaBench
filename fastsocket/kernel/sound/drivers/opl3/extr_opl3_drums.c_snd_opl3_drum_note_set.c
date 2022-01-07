
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_opl3_drum_note {unsigned char voice; int octave_f; int fnum; } ;
struct snd_opl3 {int (* command ) (struct snd_opl3*,unsigned short,int ) ;} ;


 unsigned char OPL3_LEFT ;
 unsigned char OPL3_REG_FNUM_LOW ;
 unsigned char OPL3_REG_KEYON_BLOCK ;
 int stub1 (struct snd_opl3*,unsigned short,int ) ;
 int stub2 (struct snd_opl3*,unsigned short,int ) ;

__attribute__((used)) static void snd_opl3_drum_note_set(struct snd_opl3 *opl3,
       struct snd_opl3_drum_note *data)
{
 unsigned char voice_offset = data->voice;
 unsigned short opl3_reg;


 opl3_reg = OPL3_LEFT | (OPL3_REG_FNUM_LOW + voice_offset);
 opl3->command(opl3, opl3_reg, data->fnum);


 opl3_reg = OPL3_LEFT | (OPL3_REG_KEYON_BLOCK + voice_offset);
 opl3->command(opl3, opl3_reg, data->octave_f);
}
