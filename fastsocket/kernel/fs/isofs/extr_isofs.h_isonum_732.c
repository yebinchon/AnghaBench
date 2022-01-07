
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int get_unaligned_be32 (char*) ;

__attribute__((used)) static inline unsigned int isonum_732(char *p)
{
 return get_unaligned_be32(p);
}
