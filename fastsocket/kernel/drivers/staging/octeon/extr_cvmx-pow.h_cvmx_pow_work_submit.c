
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef void* uint64_t ;
typedef void* uint32_t ;
typedef enum cvmx_pow_tag_type { ____Placeholder_cvmx_pow_tag_type } cvmx_pow_tag_type ;
struct TYPE_10__ {int tag_type; void* grp; void* tag; void* qos; } ;
typedef TYPE_3__ cvmx_wqe_t ;
struct TYPE_8__ {int type; void* grp; void* qos; void* tag; int op; } ;
struct TYPE_11__ {scalar_t__ u64; TYPE_1__ s; } ;
typedef TYPE_4__ cvmx_pow_tag_req_t ;
struct TYPE_9__ {int is_io; int offset; int did; int mem_region; } ;
struct TYPE_12__ {scalar_t__ u64; TYPE_2__ sio; } ;
typedef TYPE_5__ cvmx_addr_t ;


 int CVMX_IO_SEG ;
 int CVMX_OCT_DID_TAG_TAG1 ;
 int CVMX_POW_TAG_OP_ADDWQ ;
 int CVMX_SYNCWS ;
 int cvmx_ptr_to_phys (TYPE_3__*) ;
 int cvmx_write_io (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void cvmx_pow_work_submit(cvmx_wqe_t *wqp, uint32_t tag,
     enum cvmx_pow_tag_type tag_type,
     uint64_t qos, uint64_t grp)
{
 cvmx_addr_t ptr;
 cvmx_pow_tag_req_t tag_req;

 wqp->qos = qos;
 wqp->tag = tag;
 wqp->tag_type = tag_type;
 wqp->grp = grp;

 tag_req.u64 = 0;
 tag_req.s.op = CVMX_POW_TAG_OP_ADDWQ;
 tag_req.s.type = tag_type;
 tag_req.s.tag = tag;
 tag_req.s.qos = qos;
 tag_req.s.grp = grp;

 ptr.u64 = 0;
 ptr.sio.mem_region = CVMX_IO_SEG;
 ptr.sio.is_io = 1;
 ptr.sio.did = CVMX_OCT_DID_TAG_TAG1;
 ptr.sio.offset = cvmx_ptr_to_phys(wqp);





 CVMX_SYNCWS;
 cvmx_write_io(ptr.u64, tag_req.u64);
}
