
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fn_zone {int dummy; } ;
typedef int __be32 ;


 int FZ_MASK (struct fn_zone*) ;

__attribute__((used)) static inline __be32 fz_key(__be32 dst, struct fn_zone *fz)
{
 return dst & FZ_MASK(fz);
}
