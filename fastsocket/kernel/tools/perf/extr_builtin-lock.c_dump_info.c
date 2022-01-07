
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dump_map () ;
 int dump_threads () ;
 scalar_t__ info_map ;
 scalar_t__ info_threads ;
 int pr_err (char*) ;

__attribute__((used)) static int dump_info(void)
{
 int rc = 0;

 if (info_threads)
  dump_threads();
 else if (info_map)
  dump_map();
 else {
  rc = -1;
  pr_err("Unknown type of information\n");
 }

 return rc;
}
