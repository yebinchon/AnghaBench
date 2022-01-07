
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ua101 {int states; } ;
struct snd_pcm_substream {struct ua101* private_data; } ;


 int ALSA_CAPTURE_RUNNING ;
 int EINVAL ;
 int EIO ;


 int USB_CAPTURE_RUNNING ;
 int clear_bit (int ,int *) ;
 int set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int capture_pcm_trigger(struct snd_pcm_substream *substream, int cmd)
{
 struct ua101 *ua = substream->private_data;

 switch (cmd) {
 case 129:
  if (!test_bit(USB_CAPTURE_RUNNING, &ua->states))
   return -EIO;
  set_bit(ALSA_CAPTURE_RUNNING, &ua->states);
  return 0;
 case 128:
  clear_bit(ALSA_CAPTURE_RUNNING, &ua->states);
  return 0;
 default:
  return -EINVAL;
 }
}
