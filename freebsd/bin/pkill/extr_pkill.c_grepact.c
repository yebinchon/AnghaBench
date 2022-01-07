
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kinfo_proc {int dummy; } ;


 char* delim ;
 int printf (char*,char*) ;
 int quiet ;
 int show_process (struct kinfo_proc const*) ;

__attribute__((used)) static int
grepact(const struct kinfo_proc *kp)
{
 static bool first = 1;

 if (!quiet && !first)
  printf("%s", delim);
 show_process(kp);
 first = 0;
 return (1);
}
