
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cps; int inpps; int outpps; int inbps; int outbps; int outbytes; int inbytes; int outpkts; int inpkts; int conns; } ;
struct ip_vs_estimator {int cps; int inpps; int outpps; int inbps; int outbps; int list; int last_outbytes; int last_inbytes; int last_outpkts; int last_inpkts; int last_conns; } ;
struct ip_vs_stats {TYPE_1__ ustats; struct ip_vs_estimator est; } ;


 int INIT_LIST_HEAD (int *) ;
 int est_list ;
 int est_lock ;
 int list_add (int *,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void ip_vs_new_estimator(struct ip_vs_stats *stats)
{
 struct ip_vs_estimator *est = &stats->est;

 INIT_LIST_HEAD(&est->list);

 est->last_conns = stats->ustats.conns;
 est->cps = stats->ustats.cps<<10;

 est->last_inpkts = stats->ustats.inpkts;
 est->inpps = stats->ustats.inpps<<10;

 est->last_outpkts = stats->ustats.outpkts;
 est->outpps = stats->ustats.outpps<<10;

 est->last_inbytes = stats->ustats.inbytes;
 est->inbps = stats->ustats.inbps<<5;

 est->last_outbytes = stats->ustats.outbytes;
 est->outbps = stats->ustats.outbps<<5;

 spin_lock_bh(&est_lock);
 list_add(&est->list, &est_list);
 spin_unlock_bh(&est_lock);
}
