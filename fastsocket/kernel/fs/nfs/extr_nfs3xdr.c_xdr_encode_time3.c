
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int tv_nsec; int tv_sec; } ;
typedef int __be32 ;


 void* htonl (int ) ;

__attribute__((used)) static inline __be32 *
xdr_encode_time3(__be32 *p, struct timespec *timep)
{
 *p++ = htonl(timep->tv_sec);
 *p++ = htonl(timep->tv_nsec);
 return p;
}
