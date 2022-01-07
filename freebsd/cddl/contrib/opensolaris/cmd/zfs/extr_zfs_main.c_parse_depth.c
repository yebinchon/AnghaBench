
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int B_FALSE ;
 int ZFS_ITER_DEPTH_LIMIT ;
 int ZFS_ITER_RECURSE ;
 int fprintf (int ,char*,...) ;
 char* gettext (char*) ;
 int stderr ;
 scalar_t__ strtol (char*,char**,int ) ;
 int usage (int ) ;

__attribute__((used)) static int
parse_depth(char *opt, int *flags)
{
 char *tmp;
 int depth;

 depth = (int)strtol(opt, &tmp, 0);
 if (*tmp) {
  (void) fprintf(stderr,
      gettext("%s is not an integer\n"), opt);
  usage(B_FALSE);
 }
 if (depth < 0) {
  (void) fprintf(stderr,
      gettext("Depth can not be negative.\n"));
  usage(B_FALSE);
 }
 *flags |= (ZFS_ITER_DEPTH_LIMIT|ZFS_ITER_RECURSE);
 return (depth);
}
