
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx20442_priv {int codec; } ;


 int * cx20442_codec ;
 int cx20442_dai ;
 int kfree (struct cx20442_priv*) ;
 int snd_soc_unregister_codec (int *) ;
 int snd_soc_unregister_dai (int *) ;

__attribute__((used)) static void cx20442_unregister(struct cx20442_priv *cx20442)
{
 snd_soc_unregister_dai(&cx20442_dai);
 snd_soc_unregister_codec(&cx20442->codec);

 cx20442_codec = ((void*)0);
 kfree(cx20442);
}
