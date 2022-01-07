
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_abbrev (unsigned long,unsigned long,int) ;
 int add_abbrev_attr (unsigned long,unsigned long) ;
 int * first_abbrev ;
 unsigned long read_leb128 (unsigned char*,unsigned int*,int ) ;

__attribute__((used)) static unsigned char *
process_abbrev_section (unsigned char *start, unsigned char *end)
{
  if (first_abbrev != ((void*)0))
    return ((void*)0);

  while (start < end)
    {
      unsigned int bytes_read;
      unsigned long entry;
      unsigned long tag;
      unsigned long attribute;
      int children;

      entry = read_leb128 (start, & bytes_read, 0);
      start += bytes_read;




      if (entry == 0)
 return start == end ? ((void*)0) : start;

      tag = read_leb128 (start, & bytes_read, 0);
      start += bytes_read;

      children = *start++;

      add_abbrev (entry, tag, children);

      do
 {
   unsigned long form;

   attribute = read_leb128 (start, & bytes_read, 0);
   start += bytes_read;

   form = read_leb128 (start, & bytes_read, 0);
   start += bytes_read;

   if (attribute != 0)
     add_abbrev_attr (attribute, form);
 }
      while (attribute != 0);
    }

  return ((void*)0);
}
