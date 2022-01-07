
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct snd_emux_port* channels; } ;
struct snd_emux_port {TYPE_1__ chset; } ;


 int kfree (struct snd_emux_port*) ;
 int snd_emux_delete_effect (struct snd_emux_port*) ;

__attribute__((used)) static void
free_port(void *private_data)
{
 struct snd_emux_port *p;

 p = private_data;
 if (p) {



  kfree(p->chset.channels);
  kfree(p);
 }
}
