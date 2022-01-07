
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pmac_stream {TYPE_1__* dma; } ;
struct TYPE_2__ {int control; } ;


 int FLUSH ;
 int PAUSE ;
 int RUN ;
 int WAKE ;
 int out_le32 (int *,int) ;
 int snd_pmac_wait_ack (struct pmac_stream*) ;

__attribute__((used)) static inline void snd_pmac_dma_stop(struct pmac_stream *rec)
{
 out_le32(&rec->dma->control, (RUN|WAKE|FLUSH|PAUSE) << 16);
 snd_pmac_wait_ack(rec);
}
