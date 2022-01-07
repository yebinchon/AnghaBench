
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int64_t ;
struct pcxhr_stream {scalar_t__ timer_period_frag; scalar_t__ timer_abs_periods; TYPE_2__* substream; TYPE_1__* pipe; } ;
struct pcxhr_rmh {scalar_t__* stat; } ;
struct pcxhr_mgr {scalar_t__ granularity; } ;
struct TYPE_4__ {int number; } ;
struct TYPE_3__ {int is_capture; int first_audio; } ;


 int CMD_STREAM_SAMPLE_COUNT ;
 int pcxhr_init_rmh (struct pcxhr_rmh*,int ) ;
 int pcxhr_send_msg (struct pcxhr_mgr*,struct pcxhr_rmh*) ;
 int pcxhr_set_pipe_cmd_params (struct pcxhr_rmh*,int ,int ,int ,int) ;
 int snd_printdd (char*,char,int,unsigned long,unsigned long) ;

__attribute__((used)) static u_int64_t pcxhr_stream_read_position(struct pcxhr_mgr *mgr,
         struct pcxhr_stream *stream)
{
 u_int64_t hw_sample_count;
 struct pcxhr_rmh rmh;
 int err, stream_mask;

 stream_mask = stream->pipe->is_capture ? 1 : 1<<stream->substream->number;


 pcxhr_init_rmh(&rmh, CMD_STREAM_SAMPLE_COUNT);
 pcxhr_set_pipe_cmd_params(&rmh, stream->pipe->is_capture,
      stream->pipe->first_audio, 0, stream_mask);


 err = pcxhr_send_msg(mgr, &rmh);
 if (err)
  return 0;

 hw_sample_count = ((u_int64_t)rmh.stat[0]) << 24;
 hw_sample_count += (u_int64_t)rmh.stat[1];

 snd_printdd("stream %c%d : abs samples real(%ld) timer(%ld)\n",
      stream->pipe->is_capture ? 'C' : 'P',
      stream->substream->number,
      (long unsigned int)hw_sample_count,
      (long unsigned int)(stream->timer_abs_periods +
     stream->timer_period_frag +
     mgr->granularity));
 return hw_sample_count;
}
