
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct netem_sched_data {struct disttable* delay_dist; } ;
struct disttable {unsigned long size; int * table; } ;
struct Qdisc {int dummy; } ;
typedef int spinlock_t ;
typedef int __s16 ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct disttable*) ;
 struct disttable* kmalloc (int,int ) ;
 int * nla_data (struct nlattr const*) ;
 int nla_len (struct nlattr const*) ;
 struct netem_sched_data* qdisc_priv (struct Qdisc*) ;
 int * qdisc_root_sleeping_lock (struct Qdisc*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int get_dist_table(struct Qdisc *sch, const struct nlattr *attr)
{
 struct netem_sched_data *q = qdisc_priv(sch);
 unsigned long n = nla_len(attr)/sizeof(__s16);
 const __s16 *data = nla_data(attr);
 spinlock_t *root_lock;
 struct disttable *d;
 int i;

 if (n > 65536)
  return -EINVAL;

 d = kmalloc(sizeof(*d) + n*sizeof(d->table[0]), GFP_KERNEL);
 if (!d)
  return -ENOMEM;

 d->size = n;
 for (i = 0; i < n; i++)
  d->table[i] = data[i];

 root_lock = qdisc_root_sleeping_lock(sch);

 spin_lock_bh(root_lock);
 kfree(q->delay_dist);
 q->delay_dist = d;
 spin_unlock_bh(root_lock);
 return 0;
}
