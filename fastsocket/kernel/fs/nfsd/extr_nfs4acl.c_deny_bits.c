
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct posix_ace_state {int deny; int allow; } ;



__attribute__((used)) static inline void deny_bits(struct posix_ace_state *astate, u32 mask)
{

 astate->deny |= mask & ~astate->allow;
}
