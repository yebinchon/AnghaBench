
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int ABANDON (char*) ;
 int EOF ;
 int MAX_SIZE ;
 int fscanf (int *,char*,int*) ;
 int getc (int *) ;

__attribute__((used)) static int loadhex(FILE *inf, unsigned char *buf)
{
 int l=0, c, i;

 while ((c=getc(inf))!=EOF)
 {
  if (c == ':')
  {
   int n, check;
   unsigned char sum;
   int addr;
   int linetype;

   if (fscanf(inf, "%02x", &n) != 1)
      ABANDON("File format error");
   sum = n;

   if (fscanf(inf, "%04x", &addr) != 1)
      ABANDON("File format error");
   sum += addr/256;
   sum += addr%256;

   if (fscanf(inf, "%02x", &linetype) != 1)
      ABANDON("File format error");
   sum += linetype;

   if (linetype != 0)
      continue;

   for (i=0;i<n;i++)
   {
    if (fscanf(inf, "%02x", &c) != 1)
          ABANDON("File format error");
    if (addr >= MAX_SIZE)
       ABANDON("File too large");
    buf[addr++] = c;
    if (addr > l)
       l = addr;
    sum += c;
   }

   if (fscanf(inf, "%02x", &check) != 1)
      ABANDON("File format error");

   sum = ~sum + 1;
   if (check != sum)
      ABANDON("Line checksum error");
  }
 }

 return l;
}
