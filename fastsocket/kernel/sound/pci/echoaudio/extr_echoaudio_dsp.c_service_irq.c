
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct echoaudio {TYPE_1__* comm_page; } ;
struct TYPE_2__ {scalar_t__* midi_input; } ;


 int CHI32_STATUS_IRQ ;
 int CHI32_STATUS_REG ;
 int DSP_VC_ACK_INT ;
 int get_dsp_register (struct echoaudio*,int ) ;
 int midi_service_irq (struct echoaudio*) ;
 int send_vector (struct echoaudio*,int ) ;

__attribute__((used)) static int service_irq(struct echoaudio *chip)
{
 int st;


 if (get_dsp_register(chip, CHI32_STATUS_REG) & CHI32_STATUS_IRQ) {
  st = 0;






  chip->comm_page->midi_input[0] = 0;
  send_vector(chip, DSP_VC_ACK_INT);
  return st;
 }
 return -1;
}
