
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ caddr_t ;
typedef int bool_t ;
typedef int (* XDRPROC_T_TYPE ) (TYPE_1__*,scalar_t__*) ;
struct TYPE_5__ {int x_op; } ;
typedef TYPE_1__ XDR ;


 int XDR_FREE ;
 int stub1 (TYPE_1__*,scalar_t__*) ;

bool_t
xdr_pri_free(XDRPROC_T_TYPE xdr_args, caddr_t args_ptr)
{
  XDR xdr;

  xdr.x_op = XDR_FREE;
  return ((*xdr_args) (&xdr, (caddr_t *) args_ptr));
}
