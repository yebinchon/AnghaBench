
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint16_t ;
struct audio {int running; int dec_id; int volume; int out_needed; int pcm_feedback; } ;







 unsigned int AUDPP_MSG_ENA_DIS ;
 unsigned int AUDPP_MSG_ENA_ENA ;


 int auddec_dsp_config (struct audio*,int) ;
 int audpp_avsync (int ,int) ;
 int audpp_cmd_cfg_adec_params (struct audio*) ;
 int audpp_cmd_cfg_routing_mode (struct audio*) ;
 int audpp_set_volume_and_pan (int ,int ,int ) ;
 int audqcelp_buffer_refresh (struct audio*) ;
 int audqcelp_config_hostpcm (struct audio*) ;
 int dprintk (char*,...) ;
 int pr_err (char*,...) ;

__attribute__((used)) static void audqcelp_dsp_event(void *private, unsigned id, uint16_t *msg)
{
 struct audio *audio = private;

 switch (id) {
 case 128:{
   unsigned status = msg[1];

   switch (status) {
   case 131:
    dprintk("decoder status: sleep \n");
    break;

   case 133:
    dprintk("decoder status: init \n");
    audpp_cmd_cfg_routing_mode(audio);
    break;

   case 134:
    dprintk("decoder status: cfg \n");
    break;
   case 132:
    dprintk("decoder status: play \n");
    if (audio->pcm_feedback) {
     audqcelp_config_hostpcm(audio);
     audqcelp_buffer_refresh(audio);
    }
    break;
   default:
    pr_err("unknown decoder status \n");
   }
   break;
  }
 case 130:
  if (msg[0] == AUDPP_MSG_ENA_ENA) {
   dprintk("audqcelp_dsp_event: CFG_MSG ENABLE\n");
   auddec_dsp_config(audio, 1);
   audio->out_needed = 0;
   audio->running = 1;
   audpp_set_volume_and_pan(audio->dec_id, audio->volume,
       0);
   audpp_avsync(audio->dec_id, 22050);
  } else if (msg[0] == AUDPP_MSG_ENA_DIS) {
   dprintk("audqcelp_dsp_event: CFG_MSG DISABLE\n");
   audpp_avsync(audio->dec_id, 0);
   audio->running = 0;
  } else {
   pr_err("audqcelp_dsp_event: CFG_MSG %d?\n", msg[0]);
  }
  break;
 case 129:
  dprintk("audqcelp_dsp_event: ROUTING_ACK mode=%d\n", msg[1]);
  audpp_cmd_cfg_adec_params(audio);
  break;
 default:
  pr_err("audqcelp_dsp_event: UNKNOWN (%d)\n", id);
 }

}
