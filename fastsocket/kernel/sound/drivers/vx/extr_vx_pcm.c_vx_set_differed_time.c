
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vx_rmh {int LgCmd; int * Cmd; } ;
struct vx_pipe {int differed_type; int pcx_time; } ;
struct vx_core {int dummy; } ;


 int DC_DIFFERED_DELAY ;
 int DC_MULTIPLE_DELAY ;
 int DC_NOTIFY_DELAY ;
 int DC_STREAM_TIME_DELAY ;
 int DSP_DIFFERED_COMMAND_MASK ;
 int MULTIPLE_MASK_TIME_HIGH ;
 int NOTIFY_MASK_TIME_HIGH ;
 int STREAM_MASK_TIME_HIGH ;
 int vx_set_pcx_time (struct vx_core*,int *,int *) ;

__attribute__((used)) static int vx_set_differed_time(struct vx_core *chip, struct vx_rmh *rmh,
    struct vx_pipe *pipe)
{

 if (! (pipe->differed_type & DC_DIFFERED_DELAY))
  return 0;


 rmh->Cmd[0] |= DSP_DIFFERED_COMMAND_MASK;


 vx_set_pcx_time(chip, &pipe->pcx_time, &rmh->Cmd[1]);


 if (pipe->differed_type & DC_NOTIFY_DELAY)
  rmh->Cmd[1] |= NOTIFY_MASK_TIME_HIGH ;


 if (pipe->differed_type & DC_MULTIPLE_DELAY)
  rmh->Cmd[1] |= MULTIPLE_MASK_TIME_HIGH;


 if (pipe->differed_type & DC_STREAM_TIME_DELAY)
  rmh->Cmd[1] |= STREAM_MASK_TIME_HIGH;

 rmh->LgCmd += 2;
 return 2;
}
