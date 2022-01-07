
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {struct hlist_head* dev_name_head; } ;
struct hlist_head {int dummy; } ;


 int IFNAMSIZ ;
 int NETDEV_HASHENTRIES ;
 unsigned int full_name_hash (char const*,int ) ;
 int strnlen (char const*,int ) ;

__attribute__((used)) static inline struct hlist_head *dev_name_hash(struct net *net, const char *name)
{
 unsigned hash = full_name_hash(name, strnlen(name, IFNAMSIZ));
 return &net->dev_name_head[hash & (NETDEV_HASHENTRIES - 1)];
}
