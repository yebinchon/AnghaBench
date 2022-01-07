
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* make_relative_prefix_1 (char const*,char const*,char const*,int ) ;

char *
make_relative_prefix_ignore_links (const char *progname,
       const char *bin_prefix,
       const char *prefix)
{
  return make_relative_prefix_1 (progname, bin_prefix, prefix, 0);
}
