
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int qlen; } ;
struct TYPE_7__ {int qlen; } ;
struct TYPE_6__ {int qlen; } ;
struct TYPE_5__ {int qlen; } ;
struct skb_pool {int clone_slab_hit; int clone_pool_hit; TYPE_4__ clone_recyc_list; TYPE_3__ clone_free_list; int slab_hit; int pool_hit; TYPE_2__ recyc_list; TYPE_1__ free_list; } ;
struct seq_file {int dummy; } ;


 int cpu_id ;
 int seq_printf (struct seq_file*,char*,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int skb_pool_seq_show(struct seq_file *seq, void *v)
{
 struct skb_pool *s = v;

 seq_printf(seq, "%u\t%-15u%-15u%-15lu%-15lu%-15u%-15u%-15lu%-15lu\n",
  cpu_id, s->free_list.qlen, s->recyc_list.qlen,
  s->pool_hit, s->slab_hit,
  s->clone_free_list.qlen, s->clone_recyc_list.qlen,
  s->clone_pool_hit, s->clone_slab_hit);

 return 0;
}
