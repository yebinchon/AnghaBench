
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int buf ;


 int printf (char*,char*) ;
 int zfs_nicenum (int ,char*,int) ;

__attribute__((used)) static void
print_one_stat(uint64_t value)
{
 char buf[64];

 zfs_nicenum(value, buf, sizeof (buf));
 (void) printf("  %5s", buf);
}
