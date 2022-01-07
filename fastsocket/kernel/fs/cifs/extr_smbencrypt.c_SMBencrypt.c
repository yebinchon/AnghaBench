
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int E_P16 (unsigned char*,unsigned char*) ;
 int E_P24 (unsigned char*,unsigned char const*,unsigned char*) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int memset (unsigned char*,char,int) ;

int
SMBencrypt(unsigned char *passwd, const unsigned char *c8, unsigned char *p24)
{
 int rc;
 unsigned char p14[14], p16[16], p21[21];

 memset(p14, '\0', 14);
 memset(p16, '\0', 16);
 memset(p21, '\0', 21);

 memcpy(p14, passwd, 14);
 rc = E_P16(p14, p16);
 if (rc)
  return rc;

 memcpy(p21, p16, 16);
 rc = E_P24(p21, c8, p24);

 return rc;
}
