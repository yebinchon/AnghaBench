
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int voidp ;
typedef int res ;
typedef int XDRPROC_T_TYPE ;
typedef int SVC_IN_ARG_TYPE ;
typedef int CLIENT ;


 int AMQPROC_GETPID ;
 scalar_t__ RPC_SUCCESS ;
 int TIMEOUT ;
 scalar_t__ clnt_call (int *,int ,int ,int ,int ,int ,int ) ;
 int memset (char*,int ,int) ;
 scalar_t__ xdr_int ;
 scalar_t__ xdr_void ;

int *
amqproc_getpid_1(voidp argp, CLIENT *clnt)
{
  static int res;

  memset((char *) &res, 0, sizeof(res));
  if (clnt_call(clnt, AMQPROC_GETPID, (XDRPROC_T_TYPE) xdr_void, argp,
  (XDRPROC_T_TYPE) xdr_int, (SVC_IN_ARG_TYPE) &res,
  TIMEOUT) != RPC_SUCCESS) {
    return (((void*)0));
  }
  return (&res);
}
