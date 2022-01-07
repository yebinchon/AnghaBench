
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int musb_debug ;

__attribute__((used)) static inline int _dbg_level(unsigned l)
{
 return musb_debug >= l;
}
