
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int substring_t ;
struct p9_client {int dotu; int msize; int trans_mod; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_OPT_ARGS ;



 int P9_DEBUG_ERROR ;
 int P9_DPRINTK (int ,char*) ;
 int kfree (char*) ;
 char* kstrdup (char*,int ) ;
 int match_int (int *,int*) ;
 int match_token (char*,int ,int *) ;
 char* strsep (char**,char*) ;
 int tokens ;
 int v9fs_get_trans_by_name (int *) ;

__attribute__((used)) static int parse_opts(char *opts, struct p9_client *clnt)
{
 char *options;
 char *p;
 substring_t args[MAX_OPT_ARGS];
 int option;
 int ret = 0;

 clnt->dotu = 1;
 clnt->msize = 8192;

 if (!opts)
  return 0;

 options = kstrdup(opts, GFP_KERNEL);
 if (!options) {
  P9_DPRINTK(P9_DEBUG_ERROR,
    "failed to allocate copy of option string\n");
  return -ENOMEM;
 }

 while ((p = strsep(&options, ",")) != ((void*)0)) {
  int token;
  if (!*p)
   continue;
  token = match_token(p, tokens, args);
  if (token < 128) {
   int r = match_int(&args[0], &option);
   if (r < 0) {
    P9_DPRINTK(P9_DEBUG_ERROR,
     "integer field, but no integer?\n");
    ret = r;
    continue;
   }
  }
  switch (token) {
  case 129:
   clnt->msize = option;
   break;
  case 128:
   clnt->trans_mod = v9fs_get_trans_by_name(&args[0]);
   break;
  case 130:
   clnt->dotu = 0;
   break;
  default:
   continue;
  }
 }

 kfree(options);
 return ret;
}
