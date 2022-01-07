
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int B_TRUE ;
 int zfs_do_hold_rele_impl (int,char**,int ) ;

__attribute__((used)) static int
zfs_do_hold(int argc, char **argv)
{
 return (zfs_do_hold_rele_impl(argc, argv, B_TRUE));
}
