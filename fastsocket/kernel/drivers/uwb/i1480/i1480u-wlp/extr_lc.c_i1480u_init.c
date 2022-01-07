
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i1480u {int wlp; int rssi_stats; int lqe_stats; int notif_edc; int rx_errors; int tx_errors; int options; int tx_list_lock; int tx_list; int lock; } ;


 int INIT_LIST_HEAD (int *) ;
 int edc_init (int *) ;
 int spin_lock_init (int *) ;
 int stats_init (int *) ;
 int wlp_init (int *) ;
 int wlp_options_init (int *) ;

__attribute__((used)) static inline
void i1480u_init(struct i1480u *i1480u)
{

 spin_lock_init(&i1480u->lock);
 INIT_LIST_HEAD(&i1480u->tx_list);
 spin_lock_init(&i1480u->tx_list_lock);
 wlp_options_init(&i1480u->options);
 edc_init(&i1480u->tx_errors);
 edc_init(&i1480u->rx_errors);



 stats_init(&i1480u->lqe_stats);
 stats_init(&i1480u->rssi_stats);
 wlp_init(&i1480u->wlp);
}
