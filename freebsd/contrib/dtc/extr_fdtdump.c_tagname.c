
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;


 size_t ARRAY_SIZE (char const* const*) ;





 char const* const TN (int ) ;

__attribute__((used)) static const char *tagname(uint32_t tag)
{
 static const char * const names[] = {

  [132] = "FDT_BEGIN_NODE",
  [130] = "FDT_END_NODE",
  [128] = "FDT_PROP",
  [129] = "FDT_NOP",
  [131] = "FDT_END",

 };
 if (tag < ARRAY_SIZE(names))
  if (names[tag])
   return names[tag];
 return "FDT_???";
}
