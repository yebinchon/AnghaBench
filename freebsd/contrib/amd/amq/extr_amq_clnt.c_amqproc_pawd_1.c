
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int res ;
typedef int amq_string ;
typedef int XDRPROC_T_TYPE ;
typedef int SVC_IN_ARG_TYPE ;
typedef int CLIENT ;


 int AMQPROC_PAWD ;
 scalar_t__ RPC_SUCCESS ;
 int TIMEOUT ;
 scalar_t__ clnt_call (int *,int ,int ,int ,int ,int ,int ) ;
 int memset (char*,int ,int) ;
 scalar_t__ xdr_amq_string ;

amq_string *
amqproc_pawd_1(amq_string *argp, CLIENT *clnt)
{
  static amq_string res;

  memset((char *) &res, 0, sizeof(res));
  if (clnt_call(clnt, AMQPROC_PAWD,
  (XDRPROC_T_TYPE) xdr_amq_string, (SVC_IN_ARG_TYPE) argp,
  (XDRPROC_T_TYPE) xdr_amq_string, (SVC_IN_ARG_TYPE) &res,
  TIMEOUT) != RPC_SUCCESS) {
    return (((void*)0));
  }
  return (&res);
}
