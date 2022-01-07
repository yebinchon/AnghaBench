
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int checksum (int *,unsigned char*,int,int) ;
 int code ;
 int memcpy (unsigned char*,char*,int) ;
 int strlen (char*) ;

__attribute__((used)) static void
writeCHARS (char *string, unsigned char *ptr, int *idx, int size, FILE *file)
{
  int i = *idx / 8;

  if (i > 240)
    {

      checksum (file, ptr, *idx, code | 0x1000);
      *idx = 16;
      i = *idx / 8;
    }

  if (size == 0)
    {

      size = strlen (string);
      ptr[i++] = size;
    }


  memcpy (ptr + i, string, size);
  i += size;
  *idx = i * 8;
}
