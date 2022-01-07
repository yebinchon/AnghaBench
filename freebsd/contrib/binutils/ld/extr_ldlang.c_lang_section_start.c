
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int segment_type ;
struct TYPE_3__ {char const* section_name; int const* segment; int * address; } ;
typedef TYPE_1__ lang_address_statement_type ;
typedef int etree_type ;


 int lang_address_statement ;
 TYPE_1__* new_stat (int ,int ) ;
 int stat_ptr ;

void
lang_section_start (const char *name, etree_type *address,
      const segment_type *segment)
{
  lang_address_statement_type *ad;

  ad = new_stat (lang_address_statement, stat_ptr);
  ad->section_name = name;
  ad->address = address;
  ad->segment = segment;
}
