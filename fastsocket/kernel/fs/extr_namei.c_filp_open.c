
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filename {char const* name; } ;
struct file {int dummy; } ;


 int AT_FDCWD ;
 struct file* do_filp_open (int ,struct filename*,int,int,int ) ;

struct file *filp_open(const char *filename, int flags, int mode)
{
 struct filename name = { .name = filename };

 return do_filp_open(AT_FDCWD, &name, flags, mode, 0);
}
