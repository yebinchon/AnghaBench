
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 size_t fread (void*,size_t,int,int *) ;

__attribute__((used)) static size_t
ssread(void *buf, size_t len, FILE *stream)
{
 size_t outlen;

 if ((outlen = fread(buf, len, 1, stream)) == 0)
  return (0);

 return (outlen);
}
