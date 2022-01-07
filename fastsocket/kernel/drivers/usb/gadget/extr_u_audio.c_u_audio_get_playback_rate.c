
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rate; } ;
struct gaudio {TYPE_1__ playback; } ;



__attribute__((used)) static int u_audio_get_playback_rate(struct gaudio *card)
{
 return card->playback.rate;
}
