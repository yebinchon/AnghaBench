
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fsshare_main (char const*,char const*,char const*,int) ;

int
fsshare(const char *file, const char *mountpoint, const char *shareopts)
{

 return (fsshare_main(file, mountpoint, shareopts, 1));
}
