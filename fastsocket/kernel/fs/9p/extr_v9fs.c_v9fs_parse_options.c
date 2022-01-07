
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int substring_t ;
struct v9fs_session_info {int afid; int debug; int dfltuid; int dfltgid; int nodev; int uid; int flags; void* cache; int * cachetag; int aname; int uname; } ;


 void* CACHE_FSCACHE ;
 void* CACHE_LOOSE ;
 void* CACHE_NONE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_OPT_ARGS ;
 int P9_DEBUG_ERROR ;
 int P9_DPRINTK (int ,char*) ;
 int PATH_MAX ;
 int V9FS_ACCESS_ANY ;
 int V9FS_ACCESS_MASK ;
 int V9FS_ACCESS_SINGLE ;
 int V9FS_ACCESS_USER ;
 int kfree (char*) ;
 char* kstrdup (char*,int ) ;
 int match_int (int *,int*) ;
 void* match_strdup (int *) ;
 int match_strlcpy (int ,int *,int ) ;
 int match_token (char*,int ,int *) ;
 int p9_debug_level ;
 int simple_strtoul (char*,char**,int) ;
 int strcmp (char*,char*) ;
 char* strsep (char**,char*) ;
 int tokens ;

__attribute__((used)) static int v9fs_parse_options(struct v9fs_session_info *v9ses, char *opts)
{
 char *options;
 substring_t args[MAX_OPT_ARGS];
 char *p;
 int option = 0;
 char *s, *e;
 int ret = 0;


 v9ses->afid = ~0;
 v9ses->debug = 0;
 v9ses->cache = 0;




 if (!opts)
  return 0;

 options = kstrdup(opts, GFP_KERNEL);
 if (!options)
  goto fail_option_alloc;

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
  case 134:
   v9ses->debug = option;



   break;

  case 132:
   v9ses->dfltuid = option;
   break;
  case 133:
   v9ses->dfltgid = option;
   break;
  case 138:
   v9ses->afid = option;
   break;
  case 128:
   match_strlcpy(v9ses->uname, &args[0], PATH_MAX);
   break;
  case 129:
   match_strlcpy(v9ses->aname, &args[0], PATH_MAX);
   break;
  case 130:
   v9ses->nodev = 1;
   break;
  case 136:
   v9ses->cache = CACHE_LOOSE;
   break;
  case 131:
   v9ses->cache = CACHE_FSCACHE;
   break;
  case 135:



   break;
  case 137:
   s = match_strdup(&args[0]);
   if (!s)
    goto fail_option_alloc;

   if (strcmp(s, "loose") == 0)
    v9ses->cache = CACHE_LOOSE;
   else if (strcmp(s, "fscache") == 0)
    v9ses->cache = CACHE_FSCACHE;
   else
    v9ses->cache = CACHE_NONE;
   kfree(s);
   break;

  case 139:
   s = match_strdup(&args[0]);
   if (!s)
    goto fail_option_alloc;

   v9ses->flags &= ~V9FS_ACCESS_MASK;
   if (strcmp(s, "user") == 0)
    v9ses->flags |= V9FS_ACCESS_USER;
   else if (strcmp(s, "any") == 0)
    v9ses->flags |= V9FS_ACCESS_ANY;
   else {
    v9ses->flags |= V9FS_ACCESS_SINGLE;
    v9ses->uid = simple_strtoul(s, &e, 10);
    if (*e != '\0')
     v9ses->uid = ~0;
   }
   kfree(s);
   break;

  default:
   continue;
  }
 }
 kfree(options);
 return ret;

fail_option_alloc:
 P9_DPRINTK(P9_DEBUG_ERROR,
     "failed to allocate copy of option argument\n");
 return -ENOMEM;
}
