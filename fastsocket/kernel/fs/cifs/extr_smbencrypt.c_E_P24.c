
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int smbhash (unsigned char*,unsigned char const*,unsigned char*) ;

__attribute__((used)) static int
E_P24(unsigned char *p21, const unsigned char *c8, unsigned char *p24)
{
 int rc;

 rc = smbhash(p24, c8, p21);
 if (rc)
  return rc;
 rc = smbhash(p24 + 8, c8, p21 + 7);
 if (rc)
  return rc;
 rc = smbhash(p24 + 16, c8, p21 + 14);
 return rc;
}
