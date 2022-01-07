
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;


 int die (char*,char*) ;
 char* get_tracing_file (char*) ;
 int put_tracing_file (char*) ;
 int record_file (char*,int) ;
 scalar_t__ stat (char*,struct stat*) ;
 int write_or_die (char*,int) ;

__attribute__((used)) static void read_header_files(void)
{
 char *path;
 struct stat st;

 path = get_tracing_file("events/header_page");
 if (stat(path, &st) < 0)
  die("can't read '%s'", path);

 write_or_die("header_page", 12);
 record_file(path, 8);
 put_tracing_file(path);

 path = get_tracing_file("events/header_event");
 if (stat(path, &st) < 0)
  die("can't read '%s'", path);

 write_or_die("header_event", 13);
 record_file(path, 8);
 put_tracing_file(path);
}
