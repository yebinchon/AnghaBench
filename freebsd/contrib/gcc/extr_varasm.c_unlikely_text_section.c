
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int section ;
struct TYPE_2__ {int unlikely_text_section_name; } ;


 int UNLIKELY_EXECUTED_TEXT_SECTION_NAME ;
 TYPE_1__* cfun ;
 int * get_named_section (int *,int ,int ) ;
 int initialize_cold_section_name () ;

section *
unlikely_text_section (void)
{
  if (cfun)
    {
      if (!cfun->unlikely_text_section_name)
 initialize_cold_section_name ();

      return get_named_section (((void*)0), cfun->unlikely_text_section_name, 0);
    }
  else
    return get_named_section (((void*)0), UNLIKELY_EXECUTED_TEXT_SECTION_NAME, 0);
}
