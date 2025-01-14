
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int WLP_DEV_CAT_COMPUTER ;
 unsigned int WLP_DEV_CAT_OTHER ;
 unsigned int WLP_DEV_CAT_TELEPHONE ;
 char const** __wlp_dev_category ;

__attribute__((used)) static
const char *wlp_dev_category_str(unsigned cat)
{
 if ((cat >= WLP_DEV_CAT_COMPUTER && cat <= WLP_DEV_CAT_TELEPHONE)
     || cat == WLP_DEV_CAT_OTHER)
  return __wlp_dev_category[cat];
 return "unknown category";
}
