
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;


 int record_file (char const*,int) ;
 int stat (char const*,struct stat*) ;
 int write_or_die (unsigned int*,int) ;

__attribute__((used)) static void read_proc_kallsyms(void)
{
 unsigned int size;
 const char *path = "/proc/kallsyms";
 struct stat st;
 int ret;

 ret = stat(path, &st);
 if (ret < 0) {

  size = 0;
  write_or_die(&size, 4);
  return;
 }
 record_file(path, 4);
}
