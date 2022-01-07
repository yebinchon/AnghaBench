
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ __u16 ;


 int _my_mbstowcs (scalar_t__*,unsigned char const*,int) ;
 int _my_wcslen (scalar_t__*) ;
 int mdfour (unsigned char*,unsigned char*,int) ;
 int memset (scalar_t__*,int ,int) ;
 int strlen (char*) ;

int
E_md4hash(const unsigned char *passwd, unsigned char *p16)
{
 int rc;
 int len;
 __u16 wpwd[129];


 if (passwd) {
  len = strlen((char *) passwd);
  if (len > 128)
   len = 128;


  _my_mbstowcs(wpwd, passwd, len);
 } else
  len = 0;

 wpwd[len] = 0;

 len = _my_wcslen(wpwd) * sizeof(__u16);

 rc = mdfour(p16, (unsigned char *) wpwd, len);
 memset(wpwd, 0, 129 * 2);

 return rc;
}
