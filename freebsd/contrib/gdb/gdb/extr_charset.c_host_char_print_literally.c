
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* host_char_print_literally ) (int ,int) ;int host_char_print_literally_baton; } ;


 TYPE_1__* current_host_charset ;
 int stub1 (int ,int) ;

int
host_char_print_literally (int host_char)
{
  return ((*current_host_charset->host_char_print_literally)
          (current_host_charset->host_char_print_literally_baton,
           host_char));
}
