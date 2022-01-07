
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_dbri {int dummy; } ;
struct dbri_streaminfo {scalar_t__ offset; int * substream; } ;


 struct dbri_streaminfo* DBRI_STREAM (struct snd_dbri*,struct snd_pcm_substream*) ;
 int D_USR ;
 int dprintk (int ,char*) ;
 struct snd_dbri* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_dbri_close(struct snd_pcm_substream *substream)
{
 struct snd_dbri *dbri = snd_pcm_substream_chip(substream);
 struct dbri_streaminfo *info = DBRI_STREAM(dbri, substream);

 dprintk(D_USR, "close audio output.\n");
 info->substream = ((void*)0);
 info->offset = 0;

 return 0;
}
