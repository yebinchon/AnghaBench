
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int do_jail (int,char**,int) ;

__attribute__((used)) static int
zfs_do_jail(int argc, char **argv)
{

 return (do_jail(argc, argv, 1));
}
