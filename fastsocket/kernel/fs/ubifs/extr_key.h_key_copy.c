
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union ubifs_key {int * u64; } ;
struct ubifs_info {int dummy; } ;



__attribute__((used)) static inline void key_copy(const struct ubifs_info *c,
       const union ubifs_key *from, union ubifs_key *to)
{
 to->u64[0] = from->u64[0];
}
