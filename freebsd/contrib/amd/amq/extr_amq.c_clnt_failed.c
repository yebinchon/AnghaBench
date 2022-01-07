
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CLIENT ;


 char* am_get_progname () ;
 int clnt_perror (int *,char*) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;

__attribute__((used)) static int
clnt_failed(CLIENT *clnt, char *server)
{
  fprintf(stderr, "%s: ", am_get_progname());
  clnt_perror(clnt, server);
  return 1;
}
