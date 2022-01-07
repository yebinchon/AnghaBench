
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gnet_dump {int lock; int skb; } ;


 int NLA_PUT (int ,int,int,void*) ;
 int spin_unlock_bh (int ) ;

__attribute__((used)) static inline int
gnet_stats_copy(struct gnet_dump *d, int type, void *buf, int size)
{
 NLA_PUT(d->skb, type, size, buf);
 return 0;

nla_put_failure:
 spin_unlock_bh(d->lock);
 return -1;
}
