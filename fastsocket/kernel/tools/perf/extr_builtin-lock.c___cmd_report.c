
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int print_result () ;
 scalar_t__ read_events () ;
 scalar_t__ select_key () ;
 int setup_pager () ;
 int sort_result () ;

__attribute__((used)) static int __cmd_report(void)
{
 setup_pager();

 if ((select_key() != 0) ||
     (read_events() != 0))
  return -1;

 sort_result();
 print_result();

 return 0;
}
