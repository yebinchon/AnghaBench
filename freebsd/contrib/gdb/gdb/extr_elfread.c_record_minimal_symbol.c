
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct objfile {int dummy; } ;
struct minimal_symbol {int dummy; } ;
typedef enum minimal_symbol_type { ____Placeholder_minimal_symbol_type } minimal_symbol_type ;
struct TYPE_4__ {int index; } ;
typedef TYPE_1__ asection ;
typedef int CORE_ADDR ;


 int SMASH_TEXT_ADDRESS (int ) ;
 int mst_file_text ;
 int mst_text ;
 struct minimal_symbol* prim_record_minimal_symbol_and_info (char*,int ,int,int *,int ,TYPE_1__*,struct objfile*) ;

__attribute__((used)) static struct minimal_symbol *
record_minimal_symbol (char *name, CORE_ADDR address,
         enum minimal_symbol_type ms_type,
         asection *bfd_section, struct objfile *objfile)
{
  if (ms_type == mst_text || ms_type == mst_file_text)
    address = SMASH_TEXT_ADDRESS (address);

  return prim_record_minimal_symbol_and_info
    (name, address, ms_type, ((void*)0), bfd_section->index, bfd_section, objfile);
}
