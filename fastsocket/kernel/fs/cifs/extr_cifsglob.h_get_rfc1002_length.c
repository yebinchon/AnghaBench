
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __be32 ;


 int be32_to_cpu (int ) ;

__attribute__((used)) static inline unsigned int
get_rfc1002_length(void *buf)
{
 return be32_to_cpu(*((__be32 *)buf)) & 0xffffff;
}
