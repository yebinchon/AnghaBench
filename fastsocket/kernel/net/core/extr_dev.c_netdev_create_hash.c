
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hlist_head {int dummy; } ;


 int GFP_KERNEL ;
 int INIT_HLIST_HEAD (struct hlist_head*) ;
 int NETDEV_HASHENTRIES ;
 struct hlist_head* kmalloc (int,int ) ;

__attribute__((used)) static struct hlist_head *netdev_create_hash(void)
{
 int i;
 struct hlist_head *hash;

 hash = kmalloc(sizeof(*hash) * NETDEV_HASHENTRIES, GFP_KERNEL);
 if (hash != ((void*)0))
  for (i = 0; i < NETDEV_HASHENTRIES; i++)
   INIT_HLIST_HEAD(&hash[i]);

 return hash;
}
