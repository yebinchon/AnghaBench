
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coff_symfile_info {scalar_t__ min_lineno_offset; scalar_t__ max_lineno_offset; } ;
struct bfd_section {int lineno_count; scalar_t__ line_filepos; } ;
typedef scalar_t__ file_ptr ;
typedef int bfd ;


 int local_linesz ;

__attribute__((used)) static void
find_linenos (bfd *abfd, struct bfd_section *asect, void *vpinfo)
{
  struct coff_symfile_info *info;
  int size, count;
  file_ptr offset, maxoff;


  count = asect->lineno_count;


  if (count == 0)
    return;
  size = count * local_linesz;

  info = (struct coff_symfile_info *) vpinfo;

  offset = asect->line_filepos;


  if (offset < info->min_lineno_offset || info->min_lineno_offset == 0)
    info->min_lineno_offset = offset;

  maxoff = offset + size;
  if (maxoff > info->max_lineno_offset)
    info->max_lineno_offset = maxoff;
}
