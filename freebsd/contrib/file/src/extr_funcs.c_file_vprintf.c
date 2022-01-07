
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int va_list ;
struct TYPE_2__ {char* buf; } ;
struct magic_set {int event_flags; TYPE_1__ o; } ;


 int EVENT_HAD_ERR ;
 int asprintf (char**,char*,char*,char*) ;
 int errno ;
 int fprintf (int ,char*,char*) ;
 int free (char*) ;
 int stderr ;
 char* strerror (int ) ;
 int vasprintf (char**,char const*,int ) ;

int
file_vprintf(struct magic_set *ms, const char *fmt, va_list ap)
{
 int len;
 char *buf, *newstr;

 if (ms->event_flags & EVENT_HAD_ERR)
  return 0;
 len = vasprintf(&buf, fmt, ap);
 if (len < 0)
  goto out;

 if (ms->o.buf != ((void*)0)) {
  len = asprintf(&newstr, "%s%s", ms->o.buf, buf);
  free(buf);
  if (len < 0)
   goto out;
  free(ms->o.buf);
  buf = newstr;
 }
 ms->o.buf = buf;
 return 0;
out:
 fprintf(stderr, "vasprintf failed (%s)", strerror(errno));
 return -1;
}
