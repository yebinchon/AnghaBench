
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_device {struct echoaudio* device_data; } ;
struct echoaudio {int dummy; } ;


 int DE_INIT (char*) ;
 int snd_echo_free (struct echoaudio*) ;

__attribute__((used)) static int snd_echo_dev_free(struct snd_device *device)
{
 struct echoaudio *chip = device->device_data;

 DE_INIT(("snd_echo_dev_free()...\n"));
 return snd_echo_free(chip);
}
