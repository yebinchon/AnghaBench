
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fputs (char*,int ) ;
 int stderr ;

void
cpio_usage(void)
{
 (void)fputs("usage: cpio -o [-aABcLvVzZ] [-C bytes] [-H format] [-O archive]\n", stderr);
 (void)fputs("               [-F archive] < name-list [> archive]\n", stderr);
 (void)fputs("       cpio -i [-bBcdfmnrsStuvVzZ6] [-C bytes] [-E file] [-H format]\n", stderr);
 (void)fputs("               [-I archive] [-F archive] [pattern...] [< archive]\n", stderr);
 (void)fputs("       cpio -p [-adlLmuvV] destination-directory < name-list\n", stderr);
 exit(1);
}
