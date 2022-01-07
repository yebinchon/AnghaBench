
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wa_xfer {int id; } ;



__attribute__((used)) static u32 wa_xfer_id(struct wa_xfer *xfer)
{
 return xfer->id;
}
