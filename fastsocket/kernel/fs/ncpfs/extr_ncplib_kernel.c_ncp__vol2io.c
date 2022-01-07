
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENAMETOOLONG ;
 int memmove (unsigned char*,unsigned char const*,unsigned int) ;
 unsigned char tolower (unsigned char const) ;

int
ncp__vol2io(unsigned char *iname, unsigned int *ilen,
  const unsigned char *vname, unsigned int vlen, int cc)
{
 int i;

 if (*ilen <= vlen)
  return -ENAMETOOLONG;

 if (cc)
  for (i = 0; i < vlen; i++) {
   *iname = tolower(*vname);
   iname++;
   vname++;
  }
 else {
  memmove(iname, vname, vlen);
  iname += vlen;
 }

 *ilen = vlen;
 *iname = 0;
 return 0;
}
