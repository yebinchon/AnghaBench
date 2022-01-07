
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int abort () ;
 int fwrite (unsigned char*,int,int,int *) ;

__attribute__((used)) static void
checksum (FILE *file, unsigned char *ptr, int size, int code)
{
  int j;
  int last;
  int sum = 0;
  int bytes = size / 8;

  last = !(code & 0xff00);
  if (size & 0x7)
    abort ();
  ptr[0] = code | (last ? 0x80 : 0);
  ptr[1] = bytes + 1;

  for (j = 0; j < bytes; j++)
    sum += ptr[j];


  ptr[bytes] = ~sum;
  fwrite (ptr, bytes + 1, 1, file);
}
