
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
struct bsdar {char* progname; } ;


 int fprintf (int ,char*,...) ;
 int stderr ;
 char* strerror (int) ;
 int vfprintf (int ,char const*,int ) ;

__attribute__((used)) static void
bsdar_vwarnc(struct bsdar *bsdar, int code, const char *fmt, va_list ap)
{

 fprintf(stderr, "%s: warning: ", bsdar->progname);
 vfprintf(stderr, fmt, ap);
 if (code != 0)
  fprintf(stderr, ": %s", strerror(code));
 fprintf(stderr, "\n");
}
