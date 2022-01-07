
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nameidata {int dummy; } ;
struct filename {char const* name; } ;


 int filename_lookup (int,struct filename*,unsigned int,struct nameidata*) ;

__attribute__((used)) static int do_path_lookup(int dfd, const char *name,
    unsigned int flags, struct nameidata *nd)
{
 struct filename filename = { .name = name };

 return filename_lookup(dfd, &filename, flags, nd);
}
