
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iovec {int dummy; } ;


 scalar_t__ EAGAIN ;
 int IOADD (char const*) ;
 scalar_t__ errno ;
 char* progname ;
 char* strerror (scalar_t__) ;
 int writev (int,struct iovec*,int) ;

void
execError(const char *af, const char *av)
{
 (void)write(2, progname, strlen(progname));
 (void)write(2, ": ", strlen(": "));
 (void)write(2, af, strlen(af));
 (void)write(2, "(", strlen("("));
 (void)write(2, av, strlen(av));
 (void)write(2, ") failed (", strlen(") failed ("));
 (void)write(2, strerror(errno), strlen(strerror(errno)));
 (void)write(2, ")\n", strlen(")\n"));





}
