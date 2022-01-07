
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int bool_t ;
struct TYPE_3__ {int as_str; int as_opt; } ;
typedef TYPE_1__ amq_setopt ;
typedef int XDR ;


 int FALSE ;
 int TRUE ;
 int xdr_amq_opt (int *,int *) ;
 int xdr_amq_string (int *,int *) ;

bool_t
xdr_amq_setopt(XDR *xdrs, amq_setopt *objp)
{

  if (!xdr_amq_opt(xdrs, &objp->as_opt)) {
    return (FALSE);
  }

  if (!xdr_amq_string(xdrs, &objp->as_str)) {
    return (FALSE);
  }

  return (TRUE);
}
