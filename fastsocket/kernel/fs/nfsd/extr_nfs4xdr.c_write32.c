
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int __be32 ;



__attribute__((used)) static void write32(__be32 **p, u32 n)
{
 *(*p)++ = n;
}
