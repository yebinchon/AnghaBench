
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct soundscape {TYPE_1__* chip; int wss_res; int io_res; } ;
struct snd_card {int dummy; } ;
struct TYPE_2__ {int dma1; } ;


 int free_dma (int ) ;
 struct soundscape* get_card_soundscape (struct snd_card*) ;
 int release_and_free_resource (int ) ;

__attribute__((used)) static void soundscape_free(struct snd_card *c)
{
 struct soundscape *sscape = get_card_soundscape(c);
 release_and_free_resource(sscape->io_res);
 release_and_free_resource(sscape->wss_res);
 free_dma(sscape->chip->dma1);
}
