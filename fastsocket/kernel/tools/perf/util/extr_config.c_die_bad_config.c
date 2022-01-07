
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ config_file_name ;
 int die (char*,char const*,...) ;

__attribute__((used)) static void die_bad_config(const char *name)
{
 if (config_file_name)
  die("bad config value for '%s' in %s", name, config_file_name);
 die("bad config value for '%s'", name);
}
