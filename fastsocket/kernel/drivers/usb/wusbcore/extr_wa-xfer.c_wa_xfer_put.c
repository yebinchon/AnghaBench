
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wa_xfer {int refcnt; } ;


 int kref_put (int *,int ) ;
 int wa_xfer_destroy ;

__attribute__((used)) static void wa_xfer_put(struct wa_xfer *xfer)
{
 kref_put(&xfer->refcnt, wa_xfer_destroy);
}
