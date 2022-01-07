
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dst_secure_user {int dummy; } ;
struct dst_secure {int sec_entry; int sec; } ;
struct dst_node {int security_lock; int security_list; } ;
struct dst_ctl {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct dst_secure* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int memcpy (int *,void*,unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int dst_security_init(struct dst_node *n, struct dst_ctl *ctl,
  void *data, unsigned int size)
{
 struct dst_secure *s;

 if (!n)
  return -ENODEV;

 if (size != sizeof(struct dst_secure_user))
  return -EINVAL;

 s = kmalloc(sizeof(struct dst_secure), GFP_KERNEL);
 if (!s)
  return -ENOMEM;

 memcpy(&s->sec, data, size);

 mutex_lock(&n->security_lock);
 list_add_tail(&s->sec_entry, &n->security_list);
 mutex_unlock(&n->security_lock);

 return 0;
}
