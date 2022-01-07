
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_list_element {int dummy; } ;


 int * current_demangling_style_string ;
 int * savestring (char*,int ) ;
 int set_demangling_command (char*,int ,struct cmd_list_element*) ;
 int strlen (char*) ;
 int xfree (int *) ;

void
set_demangling_style (char *style)
{
  if (current_demangling_style_string != ((void*)0))
    {
      xfree (current_demangling_style_string);
    }
  current_demangling_style_string = savestring (style, strlen (style));
  set_demangling_command ((char *) ((void*)0), 0, (struct cmd_list_element *) ((void*)0));
}
