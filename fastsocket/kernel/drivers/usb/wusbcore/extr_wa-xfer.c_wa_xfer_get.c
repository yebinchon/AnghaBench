
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wa_xfer {int refcnt; } ;


 int kref_get (int *) ;

__attribute__((used)) static void wa_xfer_get(struct wa_xfer *xfer)
{
 kref_get(&xfer->refcnt);
}
