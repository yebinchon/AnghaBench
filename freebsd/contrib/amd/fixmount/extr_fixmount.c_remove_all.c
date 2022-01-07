
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {scalar_t__ tv_usec; int tv_sec; } ;
typedef enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
typedef int XDRPROC_T_TYPE ;
typedef int CLIENT ;


 int CALL_TIMEOUT ;
 int MOUNTPROC_UMNTALL ;
 int RPC_SUCCESS ;
 int RPC_SYSTEMERROR ;
 int clnt_call (int *,int ,int ,char*,int ,char*,struct timeval) ;
 int clnt_perrno (int) ;
 int fflush (int ) ;
 int fprintf (int ,char*,char*) ;
 int printf (char*,char*) ;
 int stderr ;
 int stdout ;
 scalar_t__ xdr_void ;

int
remove_all(CLIENT *client, char *host)
{
  enum clnt_stat estat;
  struct timeval tv;

  printf("%s: removing ALL\n", host);
  fflush(stdout);

  tv.tv_sec = CALL_TIMEOUT;
  tv.tv_usec = 0;

  if ((estat = clnt_call(client,
    MOUNTPROC_UMNTALL,
    (XDRPROC_T_TYPE) xdr_void,
    (char *) ((void*)0),
    (XDRPROC_T_TYPE) xdr_void,
    (char *) ((void*)0),
    tv)) != RPC_SUCCESS) {



    if (estat != RPC_SYSTEMERROR) {
      fprintf(stderr, "%s MOUNTPROC_UMNTALL: ", host);
      clnt_perrno(estat);
      fflush(stderr);
      return -1;
    }
  }

  return 0;
}
