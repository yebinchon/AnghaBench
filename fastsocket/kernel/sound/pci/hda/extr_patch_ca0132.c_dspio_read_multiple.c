
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 int dspio_read (struct hda_codec*,unsigned int*) ;

__attribute__((used)) static int dspio_read_multiple(struct hda_codec *codec, unsigned int *buffer,
          unsigned int *buf_size, unsigned int size_count)
{
 int status = 0;
 unsigned int size = *buf_size;
 unsigned int count;
 unsigned int skip_count;
 unsigned int dummy;

 if ((buffer == ((void*)0)))
  return -1;

 count = 0;
 while (count < size && count < size_count) {
  status = dspio_read(codec, buffer++);
  if (status != 0)
   break;
  count++;
 }

 skip_count = count;
 if (status == 0) {
  while (skip_count < size) {
   status = dspio_read(codec, &dummy);
   if (status != 0)
    break;
   skip_count++;
  }
 }
 *buf_size = count;

 return status;
}
