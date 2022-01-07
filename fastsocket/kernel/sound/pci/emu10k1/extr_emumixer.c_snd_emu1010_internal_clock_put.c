
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_6__ {unsigned int internal_clock; } ;
struct snd_emu10k1 {TYPE_3__ emu1010; } ;
struct TYPE_4__ {unsigned int* item; } ;
struct TYPE_5__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int EINVAL ;
 int EMU_HANA_DEFCLOCK ;
 int EMU_HANA_DEFCLOCK_44_1K ;
 int EMU_HANA_DEFCLOCK_48K ;
 int EMU_HANA_DOCK_LEDS_2 ;
 int EMU_HANA_DOCK_LEDS_2_44K ;
 int EMU_HANA_DOCK_LEDS_2_48K ;
 int EMU_HANA_DOCK_LEDS_2_EXT ;
 int EMU_HANA_DOCK_LEDS_2_LOCK ;
 int EMU_HANA_UNMUTE ;
 int EMU_HANA_WCLOCK ;
 int EMU_HANA_WCLOCK_1X ;
 int EMU_HANA_WCLOCK_HANA_ADAT_IN ;
 int EMU_HANA_WCLOCK_HANA_SPDIF_IN ;
 int EMU_HANA_WCLOCK_INT_44_1K ;
 int EMU_HANA_WCLOCK_INT_48K ;
 int EMU_MUTE ;
 int EMU_UNMUTE ;
 int msleep (int) ;
 int snd_emu1010_fpga_write (struct snd_emu10k1*,int ,int) ;
 struct snd_emu10k1* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_emu1010_internal_clock_put(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_value *ucontrol)
{
 struct snd_emu10k1 *emu = snd_kcontrol_chip(kcontrol);
 unsigned int val;
 int change = 0;

 val = ucontrol->value.enumerated.item[0] ;

 if (val >= 4)
  return -EINVAL;
 change = (emu->emu1010.internal_clock != val);
 if (change) {
  emu->emu1010.internal_clock = val;
  switch (val) {
  case 0:


   snd_emu1010_fpga_write(emu, EMU_HANA_UNMUTE, EMU_MUTE );

   snd_emu1010_fpga_write(emu, EMU_HANA_DEFCLOCK, EMU_HANA_DEFCLOCK_44_1K );

   snd_emu1010_fpga_write(emu, EMU_HANA_WCLOCK,
   EMU_HANA_WCLOCK_INT_44_1K | EMU_HANA_WCLOCK_1X );

   snd_emu1010_fpga_write(emu, EMU_HANA_DOCK_LEDS_2,
    EMU_HANA_DOCK_LEDS_2_44K | EMU_HANA_DOCK_LEDS_2_LOCK );

   msleep(10);

   snd_emu1010_fpga_write(emu, EMU_HANA_UNMUTE, EMU_UNMUTE );
   break;
  case 1:


   snd_emu1010_fpga_write(emu, EMU_HANA_UNMUTE, EMU_MUTE );

   snd_emu1010_fpga_write(emu, EMU_HANA_DEFCLOCK, EMU_HANA_DEFCLOCK_48K );

   snd_emu1010_fpga_write(emu, EMU_HANA_WCLOCK,
    EMU_HANA_WCLOCK_INT_48K | EMU_HANA_WCLOCK_1X );

   snd_emu1010_fpga_write(emu, EMU_HANA_DOCK_LEDS_2,
    EMU_HANA_DOCK_LEDS_2_48K | EMU_HANA_DOCK_LEDS_2_LOCK );

   msleep(10);

   snd_emu1010_fpga_write(emu, EMU_HANA_UNMUTE, EMU_UNMUTE );
   break;

  case 2:

   snd_emu1010_fpga_write(emu, EMU_HANA_UNMUTE, EMU_MUTE );

   snd_emu1010_fpga_write(emu, EMU_HANA_DEFCLOCK, EMU_HANA_DEFCLOCK_48K );

   snd_emu1010_fpga_write(emu, EMU_HANA_WCLOCK,
    EMU_HANA_WCLOCK_HANA_SPDIF_IN | EMU_HANA_WCLOCK_1X );

   snd_emu1010_fpga_write(emu, EMU_HANA_DOCK_LEDS_2,
    EMU_HANA_DOCK_LEDS_2_EXT | EMU_HANA_DOCK_LEDS_2_LOCK );


   msleep(10);

   snd_emu1010_fpga_write(emu, EMU_HANA_UNMUTE, EMU_UNMUTE );
   break;

  case 3:


   snd_emu1010_fpga_write(emu, EMU_HANA_UNMUTE, EMU_MUTE );

   snd_emu1010_fpga_write(emu, EMU_HANA_DEFCLOCK, EMU_HANA_DEFCLOCK_48K );

   snd_emu1010_fpga_write(emu, EMU_HANA_WCLOCK,
    EMU_HANA_WCLOCK_HANA_ADAT_IN | EMU_HANA_WCLOCK_1X );

   snd_emu1010_fpga_write(emu, EMU_HANA_DOCK_LEDS_2, EMU_HANA_DOCK_LEDS_2_EXT | EMU_HANA_DOCK_LEDS_2_LOCK );


   msleep(10);

   snd_emu1010_fpga_write(emu, EMU_HANA_UNMUTE, EMU_UNMUTE );


   break;
  }
 }
        return change;
}
