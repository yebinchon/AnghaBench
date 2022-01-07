
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int gain; } ;
struct snd_harmony {TYPE_1__ st; } ;


 int HARMONY_GAINCTL ;
 int harmony_wait_for_control (struct snd_harmony*) ;
 int harmony_write (struct snd_harmony*,int ,int ) ;

__attribute__((used)) static void
snd_harmony_set_new_gain(struct snd_harmony *h)
{
  harmony_wait_for_control(h);
 harmony_write(h, HARMONY_GAINCTL, h->st.gain);
}
