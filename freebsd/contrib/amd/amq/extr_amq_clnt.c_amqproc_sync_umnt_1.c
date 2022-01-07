
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int res ;
typedef enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
typedef int amq_sync_umnt ;
typedef int amq_string ;
typedef int XDRPROC_T_TYPE ;
typedef int SVC_IN_ARG_TYPE ;
typedef int CLIENT ;


 int AMQPROC_SYNC_UMNT ;
 int RPC_SUCCESS ;
 int TIMEOUT ;
 int clnt_call (int *,int ,int ,int ,int ,int ,int ) ;
 int memset (char*,int ,int) ;
 scalar_t__ xdr_amq_string ;
 scalar_t__ xdr_amq_sync_umnt ;

amq_sync_umnt *
amqproc_sync_umnt_1(amq_string *argp, CLIENT *clnt)
{
  static amq_sync_umnt res;
  enum clnt_stat rv;

  memset((char *) &res, 0, sizeof(res));
  if ((rv = clnt_call(clnt, AMQPROC_SYNC_UMNT,
  (XDRPROC_T_TYPE) xdr_amq_string, (SVC_IN_ARG_TYPE) argp,
  (XDRPROC_T_TYPE) xdr_amq_sync_umnt, (SVC_IN_ARG_TYPE) &res,
  TIMEOUT)) != RPC_SUCCESS) {
    return (((void*)0));
  }
  return &res;
}
