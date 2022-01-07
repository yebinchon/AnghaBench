
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_client {int dummy; } ;


 int SNDRV_SEQ_MAX_CLIENTS ;
 struct snd_seq_client** clienttab ;
 int snd_printd (char*,int) ;

__attribute__((used)) static struct snd_seq_client *clientptr(int clientid)
{
 if (clientid < 0 || clientid >= SNDRV_SEQ_MAX_CLIENTS) {
  snd_printd("Seq: oops. Trying to get pointer to client %d\n",
      clientid);
  return ((void*)0);
 }
 return clienttab[clientid];
}
