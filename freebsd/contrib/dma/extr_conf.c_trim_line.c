
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_DATAERR ;
 int LOG_CRIT ;
 int exit (int ) ;
 int memmove (char*,char*,size_t) ;
 char* strchr (char*,char) ;
 size_t strlen (char*) ;
 int syslog (int ,char*) ;

void
trim_line(char *line)
{
 size_t linelen;
 char *p;

 if ((p = strchr(line, '\n')))
  *p = (char)0;


 linelen = strlen(line);
 if (line[0] == '.') {
  if ((linelen + 2) > 1000) {
   syslog(LOG_CRIT, "Cannot escape leading dot.  Buffer overflow");
   exit(EX_DATAERR);
  }
  memmove((line + 1), line, (linelen + 1));
  line[0] = '.';
 }
}
