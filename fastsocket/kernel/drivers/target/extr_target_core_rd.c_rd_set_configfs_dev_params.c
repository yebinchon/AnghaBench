
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int substring_t ;
struct se_device {int dummy; } ;
struct rd_dev {int rd_page_count; int rd_flags; } ;
typedef int ssize_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_OPT_ARGS ;

 int RDF_HAS_PAGE_COUNT ;
 struct rd_dev* RD_DEV (struct se_device*) ;
 int kfree (char*) ;
 char* kstrdup (char const*,int ) ;
 int match_int (int *,int*) ;
 int match_token (char*,int ,int *) ;
 int pr_debug (char*,int) ;
 char* strsep (char**,char*) ;
 int tokens ;

__attribute__((used)) static ssize_t rd_set_configfs_dev_params(struct se_device *dev,
  const char *page, ssize_t count)
{
 struct rd_dev *rd_dev = RD_DEV(dev);
 char *orig, *ptr, *opts;
 substring_t args[MAX_OPT_ARGS];
 int ret = 0, arg, token;

 opts = kstrdup(page, GFP_KERNEL);
 if (!opts)
  return -ENOMEM;

 orig = opts;

 while ((ptr = strsep(&opts, ",\n")) != ((void*)0)) {
  if (!*ptr)
   continue;

  token = match_token(ptr, tokens, args);
  switch (token) {
  case 128:
   match_int(args, &arg);
   rd_dev->rd_page_count = arg;
   pr_debug("RAMDISK: Referencing Page"
    " Count: %u\n", rd_dev->rd_page_count);
   rd_dev->rd_flags |= RDF_HAS_PAGE_COUNT;
   break;
  default:
   break;
  }
 }

 kfree(orig);
 return (!ret) ? count : ret;
}
