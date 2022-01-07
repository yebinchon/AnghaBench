
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u32 ;
typedef int __be32 ;


 scalar_t__ IN_CLASSA (int ) ;
 scalar_t__ IN_CLASSB (int ) ;
 scalar_t__ IN_CLASSC (int ) ;
 scalar_t__ ipv4_is_zeronet (int ) ;
 int ntohl (int ) ;

__attribute__((used)) static __inline__ int inet_abc_len(__be32 addr)
{
 int rc = -1;

 if (ipv4_is_zeronet(addr))
  rc = 0;
 else {
  __u32 haddr = ntohl(addr);

  if (IN_CLASSA(haddr))
   rc = 8;
  else if (IN_CLASSB(haddr))
   rc = 16;
  else if (IN_CLASSC(haddr))
   rc = 24;
 }

 return rc;
}
