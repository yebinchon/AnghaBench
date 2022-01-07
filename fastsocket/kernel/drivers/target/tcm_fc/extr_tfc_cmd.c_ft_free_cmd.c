
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ft_cmd {int sess; struct fc_frame* req_frame; } ;
struct TYPE_2__ {int (* seq_release ) (scalar_t__) ;} ;
struct fc_lport {TYPE_1__ tt; } ;
struct fc_frame {int dummy; } ;


 int fc_frame_free (struct fc_frame*) ;
 struct fc_lport* fr_dev (struct fc_frame*) ;
 scalar_t__ fr_seq (struct fc_frame*) ;
 int ft_sess_put (int ) ;
 int kfree (struct ft_cmd*) ;
 int stub1 (scalar_t__) ;

__attribute__((used)) static void ft_free_cmd(struct ft_cmd *cmd)
{
 struct fc_frame *fp;
 struct fc_lport *lport;

 if (!cmd)
  return;
 fp = cmd->req_frame;
 lport = fr_dev(fp);
 if (fr_seq(fp))
  lport->tt.seq_release(fr_seq(fp));
 fc_frame_free(fp);
 ft_sess_put(cmd->sess);
 kfree(cmd);
}
