
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int addr; int back; int pool; } ;
union cvmx_buf_ptr {TYPE_3__ s; } ;
typedef scalar_t__ uint64_t ;
struct TYPE_7__ {scalar_t__ bufs; } ;
struct TYPE_8__ {TYPE_1__ s; } ;
struct TYPE_10__ {union cvmx_buf_ptr packet_ptr; TYPE_2__ word2; } ;
typedef TYPE_4__ cvmx_wqe_t ;


 int cvmx_fpa_free (scalar_t__,int ,int ) ;
 scalar_t__ cvmx_phys_to_ptr (scalar_t__) ;
 scalar_t__ cvmx_ptr_to_phys (TYPE_4__*) ;

__attribute__((used)) static inline void cvmx_helper_free_packet_data(cvmx_wqe_t *work)
{
 uint64_t number_buffers;
 union cvmx_buf_ptr buffer_ptr;
 union cvmx_buf_ptr next_buffer_ptr;
 uint64_t start_of_buffer;

 number_buffers = work->word2.s.bufs;
 if (number_buffers == 0)
  return;
 buffer_ptr = work->packet_ptr;
 start_of_buffer = ((buffer_ptr.s.addr >> 7) - buffer_ptr.s.back) << 7;
 if (cvmx_ptr_to_phys(work) == start_of_buffer) {
  next_buffer_ptr =
      *(union cvmx_buf_ptr *) cvmx_phys_to_ptr(buffer_ptr.s.addr - 8);
  buffer_ptr = next_buffer_ptr;
  number_buffers--;
 }

 while (number_buffers--) {




  start_of_buffer =
      ((buffer_ptr.s.addr >> 7) - buffer_ptr.s.back) << 7;




  next_buffer_ptr =
      *(union cvmx_buf_ptr *) cvmx_phys_to_ptr(buffer_ptr.s.addr - 8);
  cvmx_fpa_free(cvmx_phys_to_ptr(start_of_buffer),
         buffer_ptr.s.pool, 0);
  buffer_ptr = next_buffer_ptr;
 }
}
