
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum darwin_section_enum { ____Placeholder_darwin_section_enum } darwin_section_enum ;


 size_t ARRAY_SIZE (int const*) ;
 int * darwin_sections ;
 int output_section_asm_op (void const*) ;
 int switch_to_section (int ) ;

__attribute__((used)) static void
output_objc_section_asm_op (const void *directive)
{
  static bool been_here = 0;

  if (! been_here)
    {
      static const enum darwin_section_enum tomark[] =
 {

   147,
   146,
   129,
   139,
   130,
   131,
   140,
   143,
   136,

   141,
   138,
   132,
   144,
   134,
   135,
   145,
   142,
   137,
   133,
   128
 };
      size_t i;

      been_here = 1;
      for (i = 0; i < ARRAY_SIZE (tomark); i++)
 switch_to_section (darwin_sections[tomark[i]]);
    }
  output_section_asm_op (directive);
}
