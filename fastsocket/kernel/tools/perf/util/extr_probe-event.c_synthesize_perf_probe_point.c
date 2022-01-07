
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_probe_point {char* file; scalar_t__ retprobe; int function; int line; int offset; } ;


 int ENOMEM ;
 int MAX_CMDLEN ;
 int e_snprintf (char*,int,char*,char*,...) ;
 int free (char*) ;
 int pr_debug (char*,int ) ;
 char* strchr (char*,char) ;
 int strerror (int) ;
 int strlen (char*) ;
 char* zalloc (int ) ;

__attribute__((used)) static char *synthesize_perf_probe_point(struct perf_probe_point *pp)
{
 char *buf, *tmp;
 char offs[32] = "", line[32] = "", file[32] = "";
 int ret, len;

 buf = zalloc(MAX_CMDLEN);
 if (buf == ((void*)0)) {
  ret = -ENOMEM;
  goto error;
 }
 if (pp->offset) {
  ret = e_snprintf(offs, 32, "+%lu", pp->offset);
  if (ret <= 0)
   goto error;
 }
 if (pp->line) {
  ret = e_snprintf(line, 32, ":%d", pp->line);
  if (ret <= 0)
   goto error;
 }
 if (pp->file) {
  tmp = pp->file;
  len = strlen(tmp);
  if (len > 30) {
   tmp = strchr(pp->file + len - 30, '/');
   tmp = tmp ? tmp + 1 : pp->file + len - 30;
  }
  ret = e_snprintf(file, 32, "@%s", tmp);
  if (ret <= 0)
   goto error;
 }

 if (pp->function)
  ret = e_snprintf(buf, MAX_CMDLEN, "%s%s%s%s%s", pp->function,
     offs, pp->retprobe ? "%return" : "", line,
     file);
 else
  ret = e_snprintf(buf, MAX_CMDLEN, "%s%s", file, line);
 if (ret <= 0)
  goto error;

 return buf;
error:
 pr_debug("Failed to synthesize perf probe point: %s\n",
   strerror(-ret));
 if (buf)
  free(buf);
 return ((void*)0);
}
