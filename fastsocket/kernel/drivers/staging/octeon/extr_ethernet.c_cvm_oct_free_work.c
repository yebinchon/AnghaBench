
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int pool; int i; scalar_t__ addr; } ;
union cvmx_buf_ptr {TYPE_3__ s; } ;
struct TYPE_7__ {int bufs; } ;
struct TYPE_8__ {TYPE_1__ s; } ;
struct TYPE_10__ {union cvmx_buf_ptr packet_ptr; TYPE_2__ word2; } ;
typedef TYPE_4__ cvmx_wqe_t ;


 int CVMX_FPA_PACKET_POOL_SIZE ;
 int CVMX_FPA_WQE_POOL ;
 int DONT_WRITEBACK (int) ;
 TYPE_4__* cvm_oct_get_buffer_ptr (union cvmx_buf_ptr) ;
 int cvmx_fpa_free (TYPE_4__*,int ,int ) ;
 scalar_t__ cvmx_phys_to_ptr (scalar_t__) ;
 scalar_t__ unlikely (int) ;

int cvm_oct_free_work(void *work_queue_entry)
{
 cvmx_wqe_t *work = work_queue_entry;

 int segments = work->word2.s.bufs;
 union cvmx_buf_ptr segment_ptr = work->packet_ptr;

 while (segments--) {
  union cvmx_buf_ptr next_ptr = *(union cvmx_buf_ptr *)
   cvmx_phys_to_ptr(segment_ptr.s.addr - 8);
  if (unlikely(!segment_ptr.s.i))
   cvmx_fpa_free(cvm_oct_get_buffer_ptr(segment_ptr),
          segment_ptr.s.pool,
          DONT_WRITEBACK(CVMX_FPA_PACKET_POOL_SIZE /
           128));
  segment_ptr = next_ptr;
 }
 cvmx_fpa_free(work, CVMX_FPA_WQE_POOL, DONT_WRITEBACK(1));

 return 0;
}
