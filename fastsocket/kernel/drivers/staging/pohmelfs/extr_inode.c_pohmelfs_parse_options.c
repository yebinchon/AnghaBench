
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int substring_t ;
struct pohmelfs_sb {int idx; int trans_retries; int crypto_thread_num; int trans_max_pages; int crypto_fail_unsupported; void* mcache_timeout; void* wait_on_page_timeout; void* drop_scan_timeout; void* trans_scan_timeout; } ;


 int EINVAL ;
 int MAX_OPT_ARGS ;
 int match_int (int *,int*) ;
 int match_token (char*,int ,int *) ;
 void* msecs_to_jiffies (int) ;
 int pohmelfs_tokens ;
 char* strsep (char**,char*) ;

__attribute__((used)) static int pohmelfs_parse_options(char *options, struct pohmelfs_sb *psb, int remount)
{
 char *p;
 substring_t args[MAX_OPT_ARGS];
 int option, err;

 if (!options)
  return 0;

 while ((p = strsep(&options, ",")) != ((void*)0)) {
  int token;
  if (!*p)
   continue;

  token = match_token(p, pohmelfs_tokens, args);

  err = match_int(&args[0], &option);
  if (err)
   return err;

  if (remount && token <= 136)
   continue;

  switch (token) {
   case 133:
    psb->idx = option;
    break;
   case 129:
    psb->trans_scan_timeout = msecs_to_jiffies(option);
    break;
   case 134:
    psb->drop_scan_timeout = msecs_to_jiffies(option);
    break;
   case 128:
    psb->wait_on_page_timeout = msecs_to_jiffies(option);
    break;
   case 132:
    psb->mcache_timeout = msecs_to_jiffies(option);
    break;
   case 130:
    psb->trans_retries = option;
    break;
   case 135:
    psb->crypto_thread_num = option;
    break;
   case 131:
    psb->trans_max_pages = option;
    break;
   case 136:
    psb->crypto_fail_unsupported = 1;
    break;
   default:
    return -EINVAL;
  }
 }

 return 0;
}
