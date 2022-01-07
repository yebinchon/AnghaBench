
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
typedef int __be32 ;


 int write32 (int **,int ) ;

__attribute__((used)) static void write64(__be32 **p, u64 n)
{
 write32(p, (u32)(n >> 32));
 write32(p, (u32)n);
}
