
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nlattr {int dummy; } ;
struct gnet_stats_rate_est {int bps; int pps; } ;
struct gnet_stats_basic_packed {int packets; int bytes; } ;
struct gnet_estimator {int interval; int ewma_log; } ;
struct gen_estimator {int avbps; int avpps; int list; int last_packets; int last_bytes; int ewma_log; int * stats_lock; struct gnet_stats_rate_est* rate_est; struct gnet_stats_basic_packed* bstats; } ;
typedef int spinlock_t ;
struct TYPE_4__ {int function; } ;
struct TYPE_5__ {int list; TYPE_1__ timer; } ;


 int EINVAL ;
 int ENOBUFS ;
 int GFP_KERNEL ;
 int HZ ;
 int INIT_LIST_HEAD (int *) ;
 TYPE_3__* elist ;
 int est_timer ;
 int gen_add_node (struct gen_estimator*) ;
 scalar_t__ jiffies ;
 struct gen_estimator* kzalloc (int,int ) ;
 int list_add_rcu (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int mod_timer (TYPE_1__*,scalar_t__) ;
 struct gnet_estimator* nla_data (struct nlattr*) ;
 int nla_len (struct nlattr*) ;
 int setup_timer (TYPE_1__*,int ,int) ;

int gen_new_estimator(struct gnet_stats_basic_packed *bstats,
        struct gnet_stats_rate_est *rate_est,
        spinlock_t *stats_lock,
        struct nlattr *opt)
{
 struct gen_estimator *est;
 struct gnet_estimator *parm = nla_data(opt);
 int idx;

 if (nla_len(opt) < sizeof(*parm))
  return -EINVAL;

 if (parm->interval < -2 || parm->interval > 3)
  return -EINVAL;

 est = kzalloc(sizeof(*est), GFP_KERNEL);
 if (est == ((void*)0))
  return -ENOBUFS;

 idx = parm->interval + 2;
 est->bstats = bstats;
 est->rate_est = rate_est;
 est->stats_lock = stats_lock;
 est->ewma_log = parm->ewma_log;
 est->last_bytes = bstats->bytes;
 est->avbps = rate_est->bps<<5;
 est->last_packets = bstats->packets;
 est->avpps = rate_est->pps<<10;

 if (!elist[idx].timer.function) {
  INIT_LIST_HEAD(&elist[idx].list);
  setup_timer(&elist[idx].timer, est_timer, idx);
 }

 if (list_empty(&elist[idx].list))
  mod_timer(&elist[idx].timer, jiffies + ((HZ/4) << idx));

 list_add_rcu(&est->list, &elist[idx].list);
 gen_add_node(est);

 return 0;
}
