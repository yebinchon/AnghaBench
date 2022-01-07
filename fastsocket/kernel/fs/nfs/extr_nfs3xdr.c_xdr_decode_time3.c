
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {void* tv_nsec; void* tv_sec; } ;
typedef int __be32 ;


 void* ntohl (int ) ;

__attribute__((used)) static inline __be32 *
xdr_decode_time3(__be32 *p, struct timespec *timep)
{
 timep->tv_sec = ntohl(*p++);
 timep->tv_nsec = ntohl(*p++);
 return p;
}
