
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ubifs_key {int dummy; } ubifs_key ;
struct ubifs_info {int dummy; } ;


 int ubifs_tnc_locate (struct ubifs_info*,union ubifs_key const*,void*,int *,int *) ;

__attribute__((used)) static inline int ubifs_tnc_lookup(struct ubifs_info *c,
       const union ubifs_key *key, void *node)
{
 return ubifs_tnc_locate(c, key, node, ((void*)0), ((void*)0));
}
