
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_pdacf {int dummy; } ;
struct snd_info_entry {struct snd_pdacf* private_data; } ;
struct snd_info_buffer {int dummy; } ;


 int PDAUDIOCF_FPGAREV (int ) ;
 int PDAUDIOCF_REG_SCR ;
 int pdacf_reg_read (struct snd_pdacf*,int ) ;
 int snd_iprintf (struct snd_info_buffer*,char*,...) ;

__attribute__((used)) static void pdacf_proc_read(struct snd_info_entry * entry,
                            struct snd_info_buffer *buffer)
{
 struct snd_pdacf *chip = entry->private_data;
 u16 tmp;

 snd_iprintf(buffer, "PDAudioCF\n\n");
 tmp = pdacf_reg_read(chip, PDAUDIOCF_REG_SCR);
 snd_iprintf(buffer, "FPGA revision      : 0x%x\n", PDAUDIOCF_FPGAREV(tmp));

}
