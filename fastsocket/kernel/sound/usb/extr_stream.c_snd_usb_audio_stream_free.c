
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_usb_stream {int list; int * substream; } ;


 int free_substream (int *) ;
 int kfree (struct snd_usb_stream*) ;
 int list_del (int *) ;

__attribute__((used)) static void snd_usb_audio_stream_free(struct snd_usb_stream *stream)
{
 free_substream(&stream->substream[0]);
 free_substream(&stream->substream[1]);
 list_del(&stream->list);
 kfree(stream);
}
