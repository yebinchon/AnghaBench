
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int tv_sec; int tv_nsec; } ;
typedef int __be32 ;


 int ntohl (int ) ;

__attribute__((used)) static inline __be32*
xdr_decode_time(__be32 *p, struct timespec *timep)
{
 timep->tv_sec = ntohl(*p++);

 timep->tv_nsec = ntohl(*p++) * 1000;
 return p;
}
