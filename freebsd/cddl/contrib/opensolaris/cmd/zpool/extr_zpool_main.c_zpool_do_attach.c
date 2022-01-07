
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int B_FALSE ;
 int zpool_do_attach_or_replace (int,char**,int ) ;

int
zpool_do_attach(int argc, char **argv)
{
 return (zpool_do_attach_or_replace(argc, argv, B_FALSE));
}
