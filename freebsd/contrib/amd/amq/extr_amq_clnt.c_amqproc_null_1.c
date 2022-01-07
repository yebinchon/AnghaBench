
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * voidp ;
typedef int res ;
typedef int XDRPROC_T_TYPE ;
typedef int CLIENT ;


 int AMQPROC_NULL ;
 scalar_t__ RPC_SUCCESS ;
 int TIMEOUT ;
 scalar_t__ clnt_call (int *,int ,int ,int *,int ,char*,int ) ;
 int memset (char*,int ,int) ;
 scalar_t__ xdr_void ;

voidp
amqproc_null_1(voidp argp, CLIENT *clnt)
{
  static char res;

  memset((char *) &res, 0, sizeof(res));
  if (clnt_call(clnt, AMQPROC_NULL,
  (XDRPROC_T_TYPE) xdr_void, argp,
  (XDRPROC_T_TYPE) xdr_void, &res, TIMEOUT)
      != RPC_SUCCESS) {
    return (((void*)0));
  }
  return ((voidp) &res);
}
