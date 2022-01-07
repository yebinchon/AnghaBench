
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* __be32 ;


 int FATTR4_WORD0_RDATTR_ERROR ;
 void* htonl (int) ;

__attribute__((used)) static __be32 *
nfsd4_encode_rdattr_error(__be32 *p, int buflen, __be32 nfserr)
{
 __be32 *attrlenp;

 if (buflen < 6)
  return ((void*)0);
 *p++ = htonl(2);
 *p++ = htonl(FATTR4_WORD0_RDATTR_ERROR);
 *p++ = htonl(0);

 attrlenp = p++;
 *p++ = nfserr;
 *attrlenp = htonl((char *)p - (char *)attrlenp - 4);
 return p;
}
