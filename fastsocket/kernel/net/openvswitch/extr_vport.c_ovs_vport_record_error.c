
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx_errors; int tx_dropped; int rx_errors; int rx_dropped; } ;
struct vport {int stats_lock; TYPE_1__ err_stats; } ;
typedef enum vport_err_type { ____Placeholder_vport_err_type } vport_err_type ;






 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void ovs_vport_record_error(struct vport *vport, enum vport_err_type err_type)
{
 spin_lock(&vport->stats_lock);

 switch (err_type) {
 case 131:
  vport->err_stats.rx_dropped++;
  break;

 case 130:
  vport->err_stats.rx_errors++;
  break;

 case 129:
  vport->err_stats.tx_dropped++;
  break;

 case 128:
  vport->err_stats.tx_errors++;
  break;
 }

 spin_unlock(&vport->stats_lock);
}
