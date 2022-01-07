
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENAMETOOLONG ;
 int memmove (unsigned char*,unsigned char const*,unsigned int) ;
 unsigned char toupper (unsigned char const) ;

int
ncp__io2vol(unsigned char *vname, unsigned int *vlen,
  const unsigned char *iname, unsigned int ilen, int cc)
{
 int i;

 if (*vlen <= ilen)
  return -ENAMETOOLONG;

 if (cc)
  for (i = 0; i < ilen; i++) {
   *vname = toupper(*iname);
   vname++;
   iname++;
  }
 else {
  memmove(vname, iname, ilen);
  vname += ilen;
 }

 *vlen = ilen;
 *vname = 0;
 return 0;
}
