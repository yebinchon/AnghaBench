
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_virmidi_dev {int flags; } ;
struct snd_seq_event {int dummy; } ;


 int SNDRV_VIRMIDI_USE ;
 int snd_virmidi_dev_receive_event (struct snd_virmidi_dev*,struct snd_seq_event*) ;

__attribute__((used)) static int snd_virmidi_event_input(struct snd_seq_event *ev, int direct,
       void *private_data, int atomic, int hop)
{
 struct snd_virmidi_dev *rdev;

 rdev = private_data;
 if (!(rdev->flags & SNDRV_VIRMIDI_USE))
  return 0;
 return snd_virmidi_dev_receive_event(rdev, ev);
}
