
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int bfd_boolean ;
struct TYPE_2__ {int head; } ;


 int abs_output_section ;
 int lang_size_sections_1 (int ,int ,int *,int ,int ,int *,int ) ;
 int lang_statement_iteration ;
 TYPE_1__ statement_list ;

void
one_lang_size_sections_pass (bfd_boolean *relax, bfd_boolean check_regions)
{
  lang_statement_iteration++;
  lang_size_sections_1 (statement_list.head, abs_output_section,
   &statement_list.head, 0, 0, relax, check_regions);
}
