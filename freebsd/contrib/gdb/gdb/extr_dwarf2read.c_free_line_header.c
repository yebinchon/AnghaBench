
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line_header {struct line_header* include_dirs; struct line_header* file_names; struct line_header* standard_opcode_lengths; } ;


 int xfree (struct line_header*) ;

__attribute__((used)) static void
free_line_header (struct line_header *lh)
{
  if (lh->standard_opcode_lengths)
    xfree (lh->standard_opcode_lengths);



  if (lh->file_names)
    xfree (lh->file_names);


  if (lh->include_dirs)
    xfree (lh->include_dirs);

  xfree (lh);
}
