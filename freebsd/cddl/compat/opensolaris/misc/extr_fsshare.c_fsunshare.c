
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fsshare_main (char const*,char const*,int *,int ) ;

int
fsunshare(const char *file, const char *mountpoint)
{

 return (fsshare_main(file, mountpoint, ((void*)0), 0));
}
