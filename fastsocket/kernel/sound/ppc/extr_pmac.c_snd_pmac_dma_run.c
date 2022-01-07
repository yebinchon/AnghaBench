
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pmac_stream {TYPE_1__* dma; } ;
struct TYPE_2__ {int control; } ;


 int out_le32 (int *,int) ;

__attribute__((used)) static inline void snd_pmac_dma_run(struct pmac_stream *rec, int status)
{
 out_le32(&rec->dma->control, status | (status << 16));
}
