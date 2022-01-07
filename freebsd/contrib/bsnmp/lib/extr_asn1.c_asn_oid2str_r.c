
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct asn_oid {size_t len; int* subs; } ;


 size_t ASN_MAXOIDLEN ;
 int sprintf (char*,char*,int) ;

char *
asn_oid2str_r(const struct asn_oid *oid, char *buf)
{
 u_int len, i;
 char *ptr;

 if ((len = oid->len) > ASN_MAXOIDLEN)
  len = ASN_MAXOIDLEN;
 buf[0] = '\0';
 for (i = 0, ptr = buf; i < len; i++) {
  if (i > 0)
   *ptr++ = '.';
  ptr += sprintf(ptr, "%u", oid->subs[i]);
 }
 return (buf);
}
