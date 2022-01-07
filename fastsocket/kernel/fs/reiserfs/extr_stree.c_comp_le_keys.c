
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reiserfs_key {int dummy; } ;


 int memcmp (struct reiserfs_key const*,struct reiserfs_key const*,int) ;

inline int comp_le_keys(const struct reiserfs_key *k1,
   const struct reiserfs_key *k2)
{
 return memcmp(k1, k2, sizeof(struct reiserfs_key));
}
