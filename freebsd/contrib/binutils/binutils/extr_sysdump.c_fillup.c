
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int code ;
 int dh (unsigned char*,int) ;
 scalar_t__ dump ;
 int file ;
 int fread (unsigned char*,int,int,int ) ;
 int getc (int ) ;
 int printf (char*,int) ;

__attribute__((used)) static int
fillup (unsigned char *ptr)
{
  int size;
  int sum;
  int i;

  size = getc (file) - 2;
  fread (ptr, 1, size, file);
  sum = code + size + 2;

  for (i = 0; i < size; i++)
    sum += ptr[i];

  if ((sum & 0xff) != 0xff)
    printf ("SUM IS %x\n", sum);

  if (dump)
    dh (ptr, size);

  return size - 1;
}
