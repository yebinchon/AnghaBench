
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_virmidi_dev {int dummy; } ;
struct snd_rawmidi {struct snd_virmidi_dev* private_data; } ;


 int kfree (struct snd_virmidi_dev*) ;

__attribute__((used)) static void snd_virmidi_free(struct snd_rawmidi *rmidi)
{
 struct snd_virmidi_dev *rdev = rmidi->private_data;
 kfree(rdev);
}
