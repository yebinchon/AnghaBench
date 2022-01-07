
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;
 int EOF ;
 int encoding ;
 int encoding_size ;
 int getc (int *) ;

int
getcharacter(FILE *pfile, long *rt)
{
 int i, c;
 char buf[4];

 for(i = 0; i < encoding_size; i++) {
  c = getc(pfile);
  if (c == EOF)
   return (-1);
  buf[i] = c;
 }

 switch (encoding) {
 case 129:
 case 128:
  *rt = buf[0];
  break;
 case 133:
  *rt = (buf[0] << 8) | buf[1];
  break;
 case 132:
  *rt = buf[0] | (buf[1] << 8);
  break;
 case 131:
  *rt = ((long) buf[0] << 24) | ((long) buf[1] << 16) |
      ((long) buf[2] << 8) | buf[3];
  break;
 case 130:
  *rt = buf[0] | ((long) buf[1] << 8) | ((long) buf[2] << 16) |
      ((long) buf[3] << 24);
  break;
 default:
  return (-1);
 }

 return (0);
}
