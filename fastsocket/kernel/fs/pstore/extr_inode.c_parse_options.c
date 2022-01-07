
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int substring_t ;


 int MAX_OPT_ARGS ;

 int match_int (int *,int*) ;
 int match_token (char*,int ,int *) ;
 int pstore_set_kmsg_bytes (int) ;
 char* strsep (char**,char*) ;
 int tokens ;

__attribute__((used)) static void parse_options(char *options)
{
 char *p;
 substring_t args[MAX_OPT_ARGS];
 int option;

 if (!options)
  return;

 while ((p = strsep(&options, ",")) != ((void*)0)) {
  int token;

  if (!*p)
   continue;

  token = match_token(p, tokens, args);
  switch (token) {
  case 128:
   if (!match_int(&args[0], &option))
    pstore_set_kmsg_bytes(option);
   break;
  }
 }
}
