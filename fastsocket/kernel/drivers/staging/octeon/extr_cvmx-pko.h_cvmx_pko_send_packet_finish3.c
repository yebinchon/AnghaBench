
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


union cvmx_buf_ptr {int u64; } ;
typedef int uint64_t ;
typedef int cvmx_pko_status_t ;
typedef scalar_t__ cvmx_pko_lock_t ;
struct TYPE_3__ {int u64; } ;
typedef TYPE_1__ cvmx_pko_command_word0_t ;
typedef scalar_t__ cvmx_cmd_queue_result_t ;


 scalar_t__ CVMX_CMD_QUEUE_FULL ;
 scalar_t__ CVMX_CMD_QUEUE_NO_MEMORY ;
 int CVMX_CMD_QUEUE_PKO (int ) ;
 scalar_t__ CVMX_CMD_QUEUE_SUCCESS ;
 int CVMX_PKO_INVALID_QUEUE ;
 scalar_t__ CVMX_PKO_LOCK_ATOMIC_TAG ;
 scalar_t__ CVMX_PKO_LOCK_CMD_QUEUE ;
 int CVMX_PKO_NO_MEMORY ;
 int CVMX_PKO_SUCCESS ;
 scalar_t__ cvmx_cmd_queue_write3 (int ,int,int ,int ,int ) ;
 int cvmx_pko_doorbell (int ,int ,int) ;
 int cvmx_pow_tag_sw_wait () ;
 scalar_t__ likely (int) ;

__attribute__((used)) static inline cvmx_pko_status_t cvmx_pko_send_packet_finish3(
 uint64_t port,
 uint64_t queue,
 cvmx_pko_command_word0_t pko_command,
 union cvmx_buf_ptr packet,
 uint64_t addr,
 cvmx_pko_lock_t use_locking)
{
 cvmx_cmd_queue_result_t result;
 if (use_locking == CVMX_PKO_LOCK_ATOMIC_TAG)
  cvmx_pow_tag_sw_wait();
 result = cvmx_cmd_queue_write3(CVMX_CMD_QUEUE_PKO(queue),
           (use_locking == CVMX_PKO_LOCK_CMD_QUEUE),
           pko_command.u64, packet.u64, addr);
 if (likely(result == CVMX_CMD_QUEUE_SUCCESS)) {
  cvmx_pko_doorbell(port, queue, 3);
  return CVMX_PKO_SUCCESS;
 } else if ((result == CVMX_CMD_QUEUE_NO_MEMORY)
     || (result == CVMX_CMD_QUEUE_FULL)) {
  return CVMX_PKO_NO_MEMORY;
 } else {
  return CVMX_PKO_INVALID_QUEUE;
 }
}
