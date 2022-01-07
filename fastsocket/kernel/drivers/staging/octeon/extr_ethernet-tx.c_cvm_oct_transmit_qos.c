
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_9__ ;
typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int back; int size; int pool; int addr; } ;
union cvmx_buf_ptr {TYPE_1__ s; scalar_t__ u64; } ;
struct TYPE_19__ {int tx_dropped; } ;
struct octeon_ethernet {TYPE_7__ stats; scalar_t__ queue; int port; } ;
struct net_device {int flags; int name; } ;
struct ethhdr {int dummy; } ;
struct TYPE_16__ {scalar_t__ IP_exc; scalar_t__ not_IP; int bufs; } ;
struct TYPE_17__ {TYPE_4__ s; } ;
struct TYPE_14__ {int back; int addr; } ;
struct TYPE_15__ {TYPE_2__ s; } ;
struct TYPE_20__ {TYPE_5__ word2; int len; TYPE_3__ packet_ptr; } ;
typedef TYPE_8__ cvmx_wqe_t ;
struct TYPE_18__ {int n2; int dontfree; int ipoffp1; int total_bytes; int segs; } ;
struct TYPE_21__ {TYPE_6__ s; scalar_t__ u64; } ;
typedef TYPE_9__ cvmx_pko_command_word0_t ;


 int CVMX_FPA_PACKET_POOL ;
 int CVMX_FPA_PACKET_POOL_SIZE ;
 int CVMX_FPA_WQE_POOL ;
 int CVMX_PKO_LOCK_CMD_QUEUE ;
 int CVMX_PKO_QUEUES_PER_PORT_INTERFACE0 ;
 int CVMX_PKO_QUEUES_PER_PORT_INTERFACE1 ;
 int DEBUGPRINT (char*,int ) ;
 int DONT_WRITEBACK (int) ;
 int IFF_UP ;
 int cvm_oct_free_work (TYPE_8__*) ;
 int cvmx_fpa_free (TYPE_8__*,int ,int ) ;
 int cvmx_pko_get_num_queues (int ) ;
 int cvmx_pko_send_packet_finish (int ,scalar_t__,TYPE_9__,union cvmx_buf_ptr,int ) ;
 int cvmx_pko_send_packet_prepare (int ,scalar_t__,int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 struct octeon_ethernet* netdev_priv (struct net_device*) ;
 scalar_t__ unlikely (int) ;

int cvm_oct_transmit_qos(struct net_device *dev, void *work_queue_entry,
    int do_free, int qos)
{
 unsigned long flags;
 union cvmx_buf_ptr hw_buffer;
 cvmx_pko_command_word0_t pko_command;
 int dropped;
 struct octeon_ethernet *priv = netdev_priv(dev);
 cvmx_wqe_t *work = work_queue_entry;

 if (!(dev->flags & IFF_UP)) {
  DEBUGPRINT("%s: Device not up\n", dev->name);
  if (do_free)
   cvm_oct_free_work(work);
  return -1;
 }




 if ((CVMX_PKO_QUEUES_PER_PORT_INTERFACE0 > 1) ||
     (CVMX_PKO_QUEUES_PER_PORT_INTERFACE1 > 1)) {
  if (qos <= 0)
   qos = 0;
  else if (qos >= cvmx_pko_get_num_queues(priv->port))
   qos = 0;
 } else
  qos = 0;


 dropped = 0;

 local_irq_save(flags);
 cvmx_pko_send_packet_prepare(priv->port, priv->queue + qos,
         CVMX_PKO_LOCK_CMD_QUEUE);


 hw_buffer.u64 = 0;
 hw_buffer.s.addr = work->packet_ptr.s.addr;
 hw_buffer.s.pool = CVMX_FPA_PACKET_POOL;
 hw_buffer.s.size = CVMX_FPA_PACKET_POOL_SIZE;
 hw_buffer.s.back = work->packet_ptr.s.back;


 pko_command.u64 = 0;
 pko_command.s.n2 = 1;
 pko_command.s.dontfree = !do_free;
 pko_command.s.segs = work->word2.s.bufs;
 pko_command.s.total_bytes = work->len;


 if (unlikely(work->word2.s.not_IP || work->word2.s.IP_exc))
  pko_command.s.ipoffp1 = 0;
 else
  pko_command.s.ipoffp1 = sizeof(struct ethhdr) + 1;


 if (unlikely
     (cvmx_pko_send_packet_finish
      (priv->port, priv->queue + qos, pko_command, hw_buffer,
       CVMX_PKO_LOCK_CMD_QUEUE))) {
  DEBUGPRINT("%s: Failed to send the packet\n", dev->name);
  dropped = -1;
 }
 local_irq_restore(flags);

 if (unlikely(dropped)) {
  if (do_free)
   cvm_oct_free_work(work);
  priv->stats.tx_dropped++;
 } else if (do_free)
  cvmx_fpa_free(work, CVMX_FPA_WQE_POOL, DONT_WRITEBACK(1));

 return dropped;
}
