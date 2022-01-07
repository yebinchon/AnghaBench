
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlm_cookie {int len; int data; } ;
typedef int __be32 ;


 int XDR_QUADLEN (int ) ;
 int htonl (int ) ;
 int memcpy (int *,int ,int ) ;

__attribute__((used)) static __be32 *
nlm4_encode_cookie(__be32 *p, struct nlm_cookie *c)
{
 *p++ = htonl(c->len);
 memcpy(p, c->data, c->len);
 p+=XDR_QUADLEN(c->len);
 return p;
}
