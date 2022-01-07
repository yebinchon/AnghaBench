
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_type ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int TRUE ;
 int xdr_long (int *,long*) ;

bool_t
xdr_time_type(XDR *xdrs, time_type *objp)
{
  if (!xdr_long(xdrs, (long *) objp)) {
    return (FALSE);
  }
  return (TRUE);
}
