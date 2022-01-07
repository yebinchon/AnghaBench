
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint64_t ;
struct TYPE_3__ {int is_io; void* queue; void* port; int did; int mem_space; } ;
struct TYPE_4__ {scalar_t__ u64; TYPE_1__ s; } ;
typedef TYPE_2__ cvmx_pko_doorbell_address_t ;


 int CVMX_IO_SEG ;
 int CVMX_OCT_DID_PKT_SEND ;
 int CVMX_SYNCWS ;
 int cvmx_write_io (scalar_t__,void*) ;

__attribute__((used)) static inline void cvmx_pko_doorbell(uint64_t port, uint64_t queue,
         uint64_t len)
{
 cvmx_pko_doorbell_address_t ptr;

 ptr.u64 = 0;
 ptr.s.mem_space = CVMX_IO_SEG;
 ptr.s.did = CVMX_OCT_DID_PKT_SEND;
 ptr.s.is_io = 1;
 ptr.s.port = port;
 ptr.s.queue = queue;




 CVMX_SYNCWS;
 cvmx_write_io(ptr.u64, len);
}
