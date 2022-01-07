
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct avtab_key {int target_class; int target_type; int source_type; } ;



__attribute__((used)) static inline int avtab_hash(struct avtab_key *keyp, u16 mask)
{
 return ((keyp->target_class + (keyp->target_type << 2) +
   (keyp->source_type << 9)) & mask);
}
