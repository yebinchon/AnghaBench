
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup_subsys {char* name; int disabled; } ;
struct cgroup_sb_opts {unsigned long subsys_bits; int none; unsigned long flags; void* name; void* release_agent; } ;


 int CGROUP_SUBSYS_COUNT ;
 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_CGROUP_ROOT_NAMELEN ;
 int PATH_MAX ;
 int ROOT_NOPREFIX ;
 unsigned long cpuset_subsys_id ;
 scalar_t__ isalnum (char) ;
 void* kstrndup (char const*,int ,int ) ;
 int memset (struct cgroup_sb_opts*,int ,int) ;
 int set_bit (int,unsigned long*) ;
 int strcmp (char*,char*) ;
 int strlen (char const*) ;
 int strncmp (char*,char*,int) ;
 char* strsep (char**,char*) ;
 struct cgroup_subsys** subsys ;
 scalar_t__ test_bit (int,unsigned long*) ;

__attribute__((used)) static int parse_cgroupfs_options(char *data,
         struct cgroup_sb_opts *opts)
{
 char *token, *o = data ?: "all";
 unsigned long mask = (unsigned long)-1;





 memset(opts, 0, sizeof(*opts));

 while ((token = strsep(&o, ",")) != ((void*)0)) {
  if (!*token)
   return -EINVAL;
  if (!strcmp(token, "all")) {

   int i;
   opts->subsys_bits = 0;
   for (i = 0; i < CGROUP_SUBSYS_COUNT; i++) {
    struct cgroup_subsys *ss = subsys[i];
    if (!ss->disabled)
     opts->subsys_bits |= 1ul << i;
   }
  } else if (!strcmp(token, "none")) {

   opts->none = 1;
  } else if (!strcmp(token, "noprefix")) {
   set_bit(ROOT_NOPREFIX, &opts->flags);
  } else if (!strncmp(token, "release_agent=", 14)) {

   if (opts->release_agent)
    return -EINVAL;
   opts->release_agent =
    kstrndup(token + 14, PATH_MAX, GFP_KERNEL);
   if (!opts->release_agent)
    return -ENOMEM;
  } else if (!strncmp(token, "name=", 5)) {
   int i;
   const char *name = token + 5;

   if (!strlen(name))
    return -EINVAL;

   for (i = 0; i < strlen(name); i++) {
    char c = name[i];
    if (isalnum(c))
     continue;
    if ((c == '.') || (c == '-') || (c == '_'))
     continue;
    return -EINVAL;
   }

   if (opts->name)
    return -EINVAL;
   opts->name = kstrndup(name,
           MAX_CGROUP_ROOT_NAMELEN,
           GFP_KERNEL);
   if (!opts->name)
    return -ENOMEM;
  } else {
   struct cgroup_subsys *ss;
   int i;
   for (i = 0; i < CGROUP_SUBSYS_COUNT; i++) {
    ss = subsys[i];
    if (!strcmp(token, ss->name)) {
     if (!ss->disabled)
      set_bit(i, &opts->subsys_bits);
     break;
    }
   }
   if (i == CGROUP_SUBSYS_COUNT)
    return -ENOENT;
  }
 }
 if (test_bit(ROOT_NOPREFIX, &opts->flags) &&
     (opts->subsys_bits & mask))
  return -EINVAL;



 if (opts->subsys_bits && opts->none)
  return -EINVAL;





 if (!opts->subsys_bits && !opts->name)
  return -EINVAL;

 return 0;
}
