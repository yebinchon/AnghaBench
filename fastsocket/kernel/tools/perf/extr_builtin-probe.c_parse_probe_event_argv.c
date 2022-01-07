
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mod_events; } ;


 int ENOMEM ;
 int free (char*) ;
 TYPE_1__ params ;
 int parse_probe_event (char*) ;
 int set_target (char const*) ;
 scalar_t__ sprintf (char*,char*,char const*) ;
 scalar_t__ strlen (char const*) ;
 char* zalloc (int) ;

__attribute__((used)) static int parse_probe_event_argv(int argc, const char **argv)
{
 int i, len, ret, found_target;
 char *buf;

 found_target = set_target(argv[0]);
 if (found_target && argc == 1)
  return 0;


 len = 0;
 for (i = 0; i < argc; i++) {
  if (i == 0 && found_target)
   continue;

  len += strlen(argv[i]) + 1;
 }
 buf = zalloc(len + 1);
 if (buf == ((void*)0))
  return -ENOMEM;
 len = 0;
 for (i = 0; i < argc; i++) {
  if (i == 0 && found_target)
   continue;

  len += sprintf(&buf[len], "%s ", argv[i]);
 }
 params.mod_events = 1;
 ret = parse_probe_event(buf);
 free(buf);
 return ret;
}
