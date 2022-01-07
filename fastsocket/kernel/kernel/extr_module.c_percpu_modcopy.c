
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;

__attribute__((used)) static inline void percpu_modcopy(void *pcpudst, const void *src,
      unsigned long size)
{

 BUG_ON(size != 0);
}
