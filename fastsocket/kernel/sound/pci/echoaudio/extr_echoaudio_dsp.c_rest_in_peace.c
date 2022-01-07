
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct echoaudio {int * dsp_code; int active_mask; int pipe_alloc_mask; } ;


 int DE_ACT (char*) ;
 int DSP_VC_GO_COMATOSE ;
 int FALSE ;
 int enable_midi_input (struct echoaudio*,int ) ;
 int send_vector (struct echoaudio*,int ) ;
 int set_meters_on (struct echoaudio*,int ) ;
 int stop_transport (struct echoaudio*,int ) ;

__attribute__((used)) static int rest_in_peace(struct echoaudio *chip)
{
 DE_ACT(("rest_in_peace() open=%x\n", chip->pipe_alloc_mask));


 stop_transport(chip, chip->active_mask);

 set_meters_on(chip, FALSE);






 if (chip->dsp_code) {

  chip->dsp_code = ((void*)0);

  return send_vector(chip, DSP_VC_GO_COMATOSE);
 }
 return 0;
}
