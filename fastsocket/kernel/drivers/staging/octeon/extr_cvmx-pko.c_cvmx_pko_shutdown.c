
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int qid7; } ;
union cvmx_pko_reg_queue_ptrs1 {scalar_t__ u64; TYPE_2__ s; } ;
struct TYPE_3__ {int tail; int queue; scalar_t__ buf_ptr; scalar_t__ qos_mask; int port; scalar_t__ index; } ;
union cvmx_pko_mem_queue_ptrs {scalar_t__ u64; TYPE_1__ s; } ;


 int CVMX_CMD_QUEUE_PKO (int) ;
 int CVMX_PKO_MAX_OUTPUT_QUEUES ;
 int CVMX_PKO_MEM_QUEUE_PTRS ;
 int CVMX_PKO_MEM_QUEUE_PTRS_ILLEGAL_PID ;
 int CVMX_PKO_REG_QUEUE_PTRS1 ;
 int OCTEON_CN3XXX ;
 int OCTEON_IS_MODEL (int ) ;
 int __cvmx_pko_reset () ;
 int cvmx_cmd_queue_shutdown (int ) ;
 int cvmx_pko_disable () ;
 int cvmx_write_csr (int ,scalar_t__) ;

void cvmx_pko_shutdown(void)
{
 union cvmx_pko_mem_queue_ptrs config;
 int queue;

 cvmx_pko_disable();

 for (queue = 0; queue < CVMX_PKO_MAX_OUTPUT_QUEUES; queue++) {
  config.u64 = 0;
  config.s.tail = 1;
  config.s.index = 0;
  config.s.port = CVMX_PKO_MEM_QUEUE_PTRS_ILLEGAL_PID;
  config.s.queue = queue & 0x7f;
  config.s.qos_mask = 0;
  config.s.buf_ptr = 0;
  if (!OCTEON_IS_MODEL(OCTEON_CN3XXX)) {
   union cvmx_pko_reg_queue_ptrs1 config1;
   config1.u64 = 0;
   config1.s.qid7 = queue >> 7;
   cvmx_write_csr(CVMX_PKO_REG_QUEUE_PTRS1, config1.u64);
  }
  cvmx_write_csr(CVMX_PKO_MEM_QUEUE_PTRS, config.u64);
  cvmx_cmd_queue_shutdown(CVMX_CMD_QUEUE_PKO(queue));
 }
 __cvmx_pko_reset();
}
