
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audpp_cmd_routing_mode {int routing_mode; int object_number; int cmd_id; } ;
struct audio {scalar_t__ pcm_feedback; int dec_id; } ;
typedef int cmd ;


 int AUDPP_CMD_ROUTING_MODE ;
 int ROUTING_MODE_FTRT ;
 int ROUTING_MODE_RT ;
 int audpp_send_queue1 (struct audpp_cmd_routing_mode*,int) ;
 int memset (struct audpp_cmd_routing_mode*,int ,int) ;
 int pr_info (char*) ;

__attribute__((used)) static void audpp_cmd_cfg_routing_mode(struct audio *audio)
{
 struct audpp_cmd_routing_mode cmd;
 pr_info("audpp_cmd_cfg_routing_mode()\n");
 memset(&cmd, 0, sizeof(cmd));
 cmd.cmd_id = AUDPP_CMD_ROUTING_MODE;
 cmd.object_number = audio->dec_id;
 if (audio->pcm_feedback)
  cmd.routing_mode = ROUTING_MODE_FTRT;
 else
  cmd.routing_mode = ROUTING_MODE_RT;

 audpp_send_queue1(&cmd, sizeof(cmd));
}
