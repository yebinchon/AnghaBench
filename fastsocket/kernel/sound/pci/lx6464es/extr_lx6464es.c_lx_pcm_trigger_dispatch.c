
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lx_stream {int status; } ;
struct lx6464es {int trigger_tasklet; } ;


 int EINVAL ;
 int LX_STREAM_STATUS_SCHEDULE_RUN ;
 int LX_STREAM_STATUS_SCHEDULE_STOP ;


 int tasklet_schedule (int *) ;

__attribute__((used)) static int lx_pcm_trigger_dispatch(struct lx6464es *chip,
       struct lx_stream *lx_stream, int cmd)
{
 int err = 0;

 switch (cmd) {
 case 129:
  lx_stream->status = LX_STREAM_STATUS_SCHEDULE_RUN;
  break;

 case 128:
  lx_stream->status = LX_STREAM_STATUS_SCHEDULE_STOP;
  break;

 default:
  err = -EINVAL;
  goto exit;
 }
 tasklet_schedule(&chip->trigger_tasklet);

exit:
 return err;
}
