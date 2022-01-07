
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_2__ {scalar_t__ actual; scalar_t__ length; } ;
struct omap_req {TYPE_1__ req; } ;


 int UDC_DATA ;
 scalar_t__ likely (int) ;
 unsigned int min (scalar_t__,unsigned int) ;
 int omap_writeb (int ,int ) ;
 int omap_writew (int ,int ) ;

__attribute__((used)) static inline int
write_packet(u8 *buf, struct omap_req *req, unsigned max)
{
 unsigned len;
 u16 *wp;

 len = min(req->req.length - req->req.actual, max);
 req->req.actual += len;

 max = len;
 if (likely((((int)buf) & 1) == 0)) {
  wp = (u16 *)buf;
  while (max >= 2) {
   omap_writew(*wp++, UDC_DATA);
   max -= 2;
  }
  buf = (u8 *)wp;
 }
 while (max--)
  omap_writeb(*buf++, UDC_DATA);
 return len;
}
