
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct go7007_snd {int card; } ;
struct go7007 {struct go7007_snd* snd_context; } ;


 int snd_card_disconnect (int ) ;
 int snd_card_free_when_closed (int ) ;

int go7007_snd_remove(struct go7007 *go)
{
 struct go7007_snd *gosnd = go->snd_context;

 snd_card_disconnect(gosnd->card);
 snd_card_free_when_closed(gosnd->card);
 return 0;
}
