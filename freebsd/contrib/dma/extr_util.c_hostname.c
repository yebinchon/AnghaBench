
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int name ;
struct TYPE_2__ {char* mailname; } ;
typedef int FILE ;


 int HOST_NAME_MAX ;
 TYPE_1__ config ;
 int fclose (int *) ;
 char* fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 scalar_t__ gethostname (char*,int) ;
 scalar_t__ isalnum (char) ;
 int snprintf (char*,int,char*,...) ;
 scalar_t__ strchr (char*,char) ;

const char *
hostname(void)
{



 static char name[255 +1];
 static int initialized = 0;
 char *s;

 if (initialized)
  return (name);

 if (config.mailname == ((void*)0) || !*config.mailname)
  goto local;

 if (config.mailname[0] == '/') {




  FILE *fp;

  fp = fopen(config.mailname, "r");
  if (fp == ((void*)0))
   goto local;

  s = fgets(name, sizeof(name), fp);
  fclose(fp);
  if (s == ((void*)0))
   goto local;

  for (s = name; *s != 0 && (isalnum(*s) || strchr("_.-", *s)); ++s)
                ;
  *s = 0;

  if (!*name)
   goto local;

  initialized = 1;
  return (name);
 } else {
  snprintf(name, sizeof(name), "%s", config.mailname);
  initialized = 1;
  return (name);
 }

local:
 if (gethostname(name, sizeof(name)) != 0)
  *name = 0;




 name[sizeof(name) - 1] = 0;

 for (s = name; *s != 0 && (isalnum(*s) || strchr("_.-", *s)); ++s)
               ;
 *s = 0;

 if (!*name)
  snprintf(name, sizeof(name), "unknown-hostname");

 initialized = 1;
 return (name);
}
