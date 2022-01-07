
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct magic_set {int dummy; } ;


 int errno ;
 int file_error (struct magic_set*,int ,char*) ;

void
file_badseek(struct magic_set *ms)
{
 file_error(ms, errno, "error seeking");
}
