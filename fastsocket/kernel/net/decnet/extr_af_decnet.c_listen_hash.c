
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_dn {unsigned int sdn_objnum; unsigned int sdn_objnamel; unsigned int* sdn_objname; } ;
struct hlist_head {int dummy; } ;


 unsigned int DN_SK_HASH_MASK ;
 struct hlist_head* dn_sk_hash ;
 int le16_to_cpu (unsigned int) ;

__attribute__((used)) static struct hlist_head *listen_hash(struct sockaddr_dn *addr)
{
 int i;
 unsigned hash = addr->sdn_objnum;

 if (hash == 0) {
  hash = addr->sdn_objnamel;
  for(i = 0; i < le16_to_cpu(addr->sdn_objnamel); i++) {
   hash ^= addr->sdn_objname[i];
   hash ^= (hash << 3);
  }
 }

 return &dn_sk_hash[hash & DN_SK_HASH_MASK];
}
