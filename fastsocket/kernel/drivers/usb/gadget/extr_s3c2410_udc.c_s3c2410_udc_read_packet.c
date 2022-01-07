
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {scalar_t__ actual; scalar_t__ length; } ;
struct s3c2410_request {TYPE_1__ req; } ;


 scalar_t__ base_addr ;
 unsigned int min (scalar_t__,unsigned int) ;
 int readsb (scalar_t__,int *,unsigned int) ;

__attribute__((used)) static inline int s3c2410_udc_read_packet(int fifo, u8 *buf,
  struct s3c2410_request *req, unsigned avail)
{
 unsigned len;

 len = min(req->req.length - req->req.actual, avail);
 req->req.actual += len;

 readsb(fifo + base_addr, buf, len);
 return len;
}
