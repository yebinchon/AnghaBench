
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_ops {int dummy; } ;


 int baud_rate ;
 int dev_name ;
 int printf_unfiltered (char*,int ,int ) ;

__attribute__((used)) static void
monitor_files_info (struct target_ops *ops)
{
  printf_unfiltered ("\tAttached to %s at %d baud.\n", dev_name, baud_rate);
}
