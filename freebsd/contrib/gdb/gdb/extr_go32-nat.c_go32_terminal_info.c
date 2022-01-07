
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__** redirection; } ;
struct TYPE_3__ {int inf_handle; scalar_t__ file_name; } ;


 int DBG_HANDLES ;
 int _get_dev_info (int) ;
 TYPE_2__ child_cmd ;
 int inf_mode_valid ;
 scalar_t__ inf_terminal_mode ;
 int printf_unfiltered (char*,...) ;

__attribute__((used)) static void
go32_terminal_info (char *args, int from_tty)
{
  printf_unfiltered ("Inferior's terminal is in %s mode.\n",
       !inf_mode_valid
       ? "default" : inf_terminal_mode ? "raw" : "cooked");
}
