
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct echoaudio {int meters_enabled; TYPE_1__* comm_page; } ;
typedef int s8 ;
struct TYPE_2__ {scalar_t__ peak_meter; scalar_t__ vu_meter; } ;


 int DSP_MAXPIPES ;
 int DSP_VC_METERS_OFF ;
 int DSP_VC_METERS_ON ;
 int ECHOGAIN_MUTED ;
 int memset (int *,int ,int ) ;
 int send_vector (struct echoaudio*,int ) ;

__attribute__((used)) static void set_meters_on(struct echoaudio *chip, char on)
{
 if (on && !chip->meters_enabled) {
  send_vector(chip, DSP_VC_METERS_ON);
  chip->meters_enabled = 1;
 } else if (!on && chip->meters_enabled) {
  send_vector(chip, DSP_VC_METERS_OFF);
  chip->meters_enabled = 0;
  memset((s8 *)chip->comm_page->vu_meter, ECHOGAIN_MUTED,
         DSP_MAXPIPES);
  memset((s8 *)chip->comm_page->peak_meter, ECHOGAIN_MUTED,
         DSP_MAXPIPES);
 }
}
