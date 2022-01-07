
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 int EINVAL ;
 int dspio_write (struct hda_codec*,int ) ;

__attribute__((used)) static int dspio_write_multiple(struct hda_codec *codec,
    unsigned int *buffer, unsigned int size)
{
 int status = 0;
 unsigned int count;

 if ((buffer == ((void*)0)))
  return -EINVAL;

 count = 0;
 while (count < size) {
  status = dspio_write(codec, *buffer++);
  if (status != 0)
   break;
  count++;
 }

 return status;
}
