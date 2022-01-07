
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct echoaudio {TYPE_1__* comm_page; } ;
struct TYPE_2__ {long* vu_meter; long* peak_meter; } ;


 int E3G_MAX_OUTPUTS ;
 int num_busses_in (struct echoaudio*) ;
 int num_busses_out (struct echoaudio*) ;
 int num_pipes_out (struct echoaudio*) ;

__attribute__((used)) static void get_audio_meters(struct echoaudio *chip, long *meters)
{
 int i, m, n;

 m = 0;
 n = 0;
 for (i = 0; i < num_busses_out(chip); i++, m++) {
  meters[n++] = chip->comm_page->vu_meter[m];
  meters[n++] = chip->comm_page->peak_meter[m];
 }
 for (; n < 32; n++)
  meters[n] = 0;





 for (i = 0; i < num_busses_in(chip); i++, m++) {
  meters[n++] = chip->comm_page->vu_meter[m];
  meters[n++] = chip->comm_page->peak_meter[m];
 }
 for (; n < 64; n++)
  meters[n] = 0;







 for (; n < 96; n++)
  meters[n] = 0;
}
