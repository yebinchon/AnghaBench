
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ der_length_size (int) ;

__attribute__((used)) static void
der_write_length(unsigned char **buf, int length)
{
 if (length < (1<<7)) {
  *(*buf)++ = (unsigned char) length;
 } else {
  *(*buf)++ = (unsigned char) (der_length_size(length)+127);






  if (length >= (1<<8))
   *(*buf)++ = (unsigned char) ((length>>8)&0xff);
  *(*buf)++ = (unsigned char) (length&0xff);
 }
}
