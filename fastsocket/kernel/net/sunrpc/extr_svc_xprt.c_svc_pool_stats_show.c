
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int threads_timedout; int threads_woken; int sockets_queued; int packets; } ;
struct svc_pool {TYPE_1__ sp_stats; int sp_id; } ;
struct seq_file {int dummy; } ;


 void* SEQ_START_TOKEN ;
 int seq_printf (struct seq_file*,char*,int ,int ,int ,int ,int ) ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static int svc_pool_stats_show(struct seq_file *m, void *p)
{
 struct svc_pool *pool = p;

 if (p == SEQ_START_TOKEN) {
  seq_puts(m, "# pool packets-arrived sockets-enqueued threads-woken threads-timedout\n");
  return 0;
 }

 seq_printf(m, "%u %lu %lu %lu %lu\n",
  pool->sp_id,
  pool->sp_stats.packets,
  pool->sp_stats.sockets_queued,
  pool->sp_stats.threads_woken,
  pool->sp_stats.threads_timedout);

 return 0;
}
