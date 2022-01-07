
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ voidp ;
typedef int enum_t ;
typedef int bool_t ;
struct TYPE_3__ {int as_str; int as_opt; } ;
typedef TYPE_1__ amq_setopt ;
typedef int XDR ;


 int AMQ_STRLEN ;
 int FALSE ;
 int TRUE ;
 int xdr_enum (int *,int *) ;
 int xdr_string (int *,int *,int ) ;

bool_t
xdr_amq_setopt(XDR *xdrs, amq_setopt *objp)
{
  if (!xdr_enum(xdrs, (enum_t *) ((voidp) &objp->as_opt))) {
    return (FALSE);
  }
  if (!xdr_string(xdrs, &objp->as_str, AMQ_STRLEN)) {
    return (FALSE);
  }
  return (TRUE);
}
