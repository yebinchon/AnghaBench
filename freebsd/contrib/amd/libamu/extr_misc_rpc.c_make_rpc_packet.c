
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int voidp ;
typedef int u_long ;
struct rpc_msg {int dummy; } ;
typedef int enum_t ;
typedef int (* XDRPROC_T_TYPE ) (int *,int ) ;
typedef int XDR ;
typedef int AUTH ;


 int AUTH_MARSHALL (int *,int *) ;
 int EIO ;
 int XDR_ENCODE ;
 int stub1 (int *,int ) ;
 int xdr_callhdr (int *,struct rpc_msg*) ;
 int xdr_destroy (int *) ;
 int xdr_enum (int *,int *) ;
 int xdr_getpos (int *) ;
 int xdrmem_create (int *,char*,int,int ) ;

int
make_rpc_packet(char *buf, int buflen, u_long proc, struct rpc_msg *mp, voidp arg, XDRPROC_T_TYPE arg_xdr, AUTH *auth)
{
  XDR msg_xdr;
  int len;






  enum_t local_proc = (enum_t) proc;

  xdrmem_create(&msg_xdr, buf, buflen, XDR_ENCODE);




  if (!xdr_callhdr(&msg_xdr, mp))
    return -EIO;




  if (!xdr_enum(&msg_xdr, &local_proc))
    return -EIO;




  if (!AUTH_MARSHALL(auth, &msg_xdr))
    return -EIO;




  if (!(*arg_xdr) (&msg_xdr, arg))
    return -EIO;




  len = xdr_getpos(&msg_xdr);




  xdr_destroy(&msg_xdr);

  return len;
}
