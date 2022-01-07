
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;


 unsigned long SEL_INO_MASK ;
 int SEL_VEC_MAX ;

__attribute__((used)) static inline u32 sel_ino_to_perm(unsigned long ino)
{
 return (ino & SEL_INO_MASK) % (SEL_VEC_MAX + 1);
}
