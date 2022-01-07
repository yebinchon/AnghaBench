
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;


 char* get_tracing_file (char*) ;
 int put_tracing_file (char*) ;
 int record_file (char*,int) ;
 int stat (char*,struct stat*) ;
 int write_or_die (unsigned int*,int) ;

__attribute__((used)) static void read_ftrace_printk(void)
{
 unsigned int size;
 char *path;
 struct stat st;
 int ret;

 path = get_tracing_file("printk_formats");
 ret = stat(path, &st);
 if (ret < 0) {

  size = 0;
  write_or_die(&size, 4);
  goto out;
 }
 record_file(path, 4);

out:
 put_tracing_file(path);
}
