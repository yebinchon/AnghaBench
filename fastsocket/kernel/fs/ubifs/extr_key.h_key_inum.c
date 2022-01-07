
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union ubifs_key {int * u32; } ;
struct ubifs_info {int dummy; } ;
typedef int ino_t ;



__attribute__((used)) static inline ino_t key_inum(const struct ubifs_info *c, const void *k)
{
 const union ubifs_key *key = k;

 return key->u32[0];
}
