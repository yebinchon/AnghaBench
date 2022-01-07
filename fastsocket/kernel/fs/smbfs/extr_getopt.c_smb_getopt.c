
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {unsigned long flag; int val; int * name; } ;


 int printk (char*,char*,char*) ;
 unsigned long simple_strtoul (char*,int *,int ) ;
 char* strchr (char*,char) ;
 int strcmp (int *,char*) ;
 char* strsep (char**,char*) ;

int smb_getopt(char *caller, char **options, struct option *opts,
        char **optopt, char **optarg, unsigned long *flag,
        unsigned long *value)
{
 char *token;
 char *val;
 int i;

 do {
  if ((token = strsep(options, ",")) == ((void*)0))
   return 0;
 } while (*token == '\0');
 *optopt = token;

 *optarg = ((void*)0);
 if ((val = strchr (token, '=')) != ((void*)0)) {
  *val++ = 0;
  if (value)
   *value = simple_strtoul(val, ((void*)0), 0);
  *optarg = val;
 }

 for (i = 0; opts[i].name != ((void*)0); i++) {
  if (!strcmp(opts[i].name, token)) {
   if (!opts[i].flag && (!val || !*val)) {
    printk("%s: the %s option requires an argument\n",
           caller, token);
    return -1;
   }

   if (flag && opts[i].flag)
    *flag |= opts[i].flag;

   return opts[i].val;
  }
 }
 printk("%s: Unrecognized mount option %s\n", caller, token);
 return -1;
}
