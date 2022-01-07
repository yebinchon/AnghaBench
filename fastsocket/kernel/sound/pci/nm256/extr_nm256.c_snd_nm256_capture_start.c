
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct nm256_stream {scalar_t__ buf; scalar_t__ dma_size; } ;
struct nm256 {int dummy; } ;


 int NM_RBUFFER_CURRP ;
 int NM_RBUFFER_END ;
 int NM_RBUFFER_START ;
 int NM_RECORD_ENABLE_FLAG ;
 int NM_RECORD_ENABLE_REG ;
 int NM_RECORD_FREERUN ;
 int snd_nm256_capture_mark (struct nm256*,struct nm256_stream*) ;
 int snd_nm256_writeb (struct nm256*,int ,int) ;
 int snd_nm256_writel (struct nm256*,int ,scalar_t__) ;

__attribute__((used)) static void
snd_nm256_capture_start(struct nm256 *chip, struct nm256_stream *s,
   struct snd_pcm_substream *substream)
{

 snd_nm256_writel(chip, NM_RBUFFER_START, s->buf);
 snd_nm256_writel(chip, NM_RBUFFER_END, s->buf + s->dma_size);
 snd_nm256_writel(chip, NM_RBUFFER_CURRP, s->buf);
 snd_nm256_capture_mark(chip, s);


 snd_nm256_writeb(chip, NM_RECORD_ENABLE_REG,
    NM_RECORD_ENABLE_FLAG | NM_RECORD_FREERUN);
}
