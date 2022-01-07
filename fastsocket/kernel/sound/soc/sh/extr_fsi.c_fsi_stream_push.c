
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct snd_pcm_substream {int dummy; } ;
struct fsi_priv {scalar_t__ periods; scalar_t__ byte_offset; void* period_len; void* buffer_len; struct snd_pcm_substream* substream; } ;



__attribute__((used)) static void fsi_stream_push(struct fsi_priv *fsi,
       struct snd_pcm_substream *substream,
       u32 buffer_len,
       u32 period_len)
{
 fsi->substream = substream;
 fsi->buffer_len = buffer_len;
 fsi->period_len = period_len;
 fsi->byte_offset = 0;
 fsi->periods = 0;
}
