
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct camelot_pcm {int tx_period; int tx_ss; } ;


 int snd_pcm_period_elapsed (int ) ;

__attribute__((used)) static void camelot_txdma(void *data)
{
 struct camelot_pcm *cam = data;
 cam->tx_period ^= 1;
 snd_pcm_period_elapsed(cam->tx_ss);
}
