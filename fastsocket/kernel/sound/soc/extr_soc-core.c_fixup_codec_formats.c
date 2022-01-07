
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_stream {int formats; } ;


 int ARRAY_SIZE (int*) ;
 int* codec_format_map ;

__attribute__((used)) static void fixup_codec_formats(struct snd_soc_pcm_stream *stream)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(codec_format_map); i++)
  if (stream->formats & codec_format_map[i])
   stream->formats |= codec_format_map[i];
}
