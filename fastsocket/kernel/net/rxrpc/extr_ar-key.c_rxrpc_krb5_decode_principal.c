
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct krb5_principal {unsigned int n_name_parts; scalar_t__* realm; scalar_t__** name_parts; } ;
typedef int __be32 ;


 unsigned int AFSTOKEN_K5_COMPONENTS_MAX ;
 unsigned int AFSTOKEN_K5_REALM_MAX ;
 unsigned int AFSTOKEN_STRING_MAX ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int _debug (char*,scalar_t__*,scalar_t__*) ;
 int _enter (char*,unsigned int,unsigned int,unsigned int,unsigned int) ;
 int _leave (char*,unsigned int) ;
 scalar_t__** kcalloc (int,unsigned int,int ) ;
 void* kmalloc (unsigned int,int ) ;
 int memcpy (scalar_t__*,int const*,unsigned int) ;
 unsigned int ntohl (int const) ;

__attribute__((used)) static int rxrpc_krb5_decode_principal(struct krb5_principal *princ,
           const __be32 **_xdr,
           unsigned *_toklen)
{
 const __be32 *xdr = *_xdr;
 unsigned toklen = *_toklen, n_parts, loop, tmp;



 if (toklen <= 12)
  return -EINVAL;

 _enter(",{%x,%x,%x},%u",
        ntohl(xdr[0]), ntohl(xdr[1]), ntohl(xdr[2]), toklen);

 n_parts = ntohl(*xdr++);
 toklen -= 4;
 if (n_parts <= 0 || n_parts > AFSTOKEN_K5_COMPONENTS_MAX)
  return -EINVAL;
 princ->n_name_parts = n_parts;

 if (toklen <= (n_parts + 1) * 4)
  return -EINVAL;

 princ->name_parts = kcalloc(sizeof(char *), n_parts, GFP_KERNEL);
 if (!princ->name_parts)
  return -ENOMEM;

 for (loop = 0; loop < n_parts; loop++) {
  if (toklen < 4)
   return -EINVAL;
  tmp = ntohl(*xdr++);
  toklen -= 4;
  if (tmp <= 0 || tmp > AFSTOKEN_STRING_MAX)
   return -EINVAL;
  if (tmp > toklen)
   return -EINVAL;
  princ->name_parts[loop] = kmalloc(tmp + 1, GFP_KERNEL);
  if (!princ->name_parts[loop])
   return -ENOMEM;
  memcpy(princ->name_parts[loop], xdr, tmp);
  princ->name_parts[loop][tmp] = 0;
  tmp = (tmp + 3) & ~3;
  toklen -= tmp;
  xdr += tmp >> 2;
 }

 if (toklen < 4)
  return -EINVAL;
 tmp = ntohl(*xdr++);
 toklen -= 4;
 if (tmp <= 0 || tmp > AFSTOKEN_K5_REALM_MAX)
  return -EINVAL;
 if (tmp > toklen)
  return -EINVAL;
 princ->realm = kmalloc(tmp + 1, GFP_KERNEL);
 if (!princ->realm)
  return -ENOMEM;
 memcpy(princ->realm, xdr, tmp);
 princ->realm[tmp] = 0;
 tmp = (tmp + 3) & ~3;
 toklen -= tmp;
 xdr += tmp >> 2;

 _debug("%s/...@%s", princ->name_parts[0], princ->realm);

 *_xdr = xdr;
 *_toklen = toklen;
 _leave(" = 0 [toklen=%u]", toklen);
 return 0;
}
