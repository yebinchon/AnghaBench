
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int substring_t ;
struct ramfs_mount_opts {int mode; } ;


 int EINVAL ;
 int MAX_OPT_ARGS ;

 int RAMFS_DEFAULT_MODE ;
 int S_IALLUGO ;
 int match_octal (int *,int*) ;
 int match_token (char*,int ,int *) ;
 char* strsep (char**,char*) ;
 int tokens ;

__attribute__((used)) static int ramfs_parse_options(char *data, struct ramfs_mount_opts *opts)
{
 substring_t args[MAX_OPT_ARGS];
 int option;
 int token;
 char *p;

 opts->mode = RAMFS_DEFAULT_MODE;

 while ((p = strsep(&data, ",")) != ((void*)0)) {
  if (!*p)
   continue;

  token = match_token(p, tokens, args);
  switch (token) {
  case 128:
   if (match_octal(&args[0], &option))
    return -EINVAL;
   opts->mode = option & S_IALLUGO;
   break;






  }
 }

 return 0;
}
