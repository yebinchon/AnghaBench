
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mixer_build {TYPE_1__* chip; } ;
struct TYPE_2__ {int dev; } ;


 int usb_string (int ,int,char*,int) ;

__attribute__((used)) static int snd_usb_copy_string_desc(struct mixer_build *state, int index, char *buf, int maxlen)
{
 int len = usb_string(state->chip->dev, index, buf, maxlen - 1);
 buf[len] = 0;
 return len;
}
