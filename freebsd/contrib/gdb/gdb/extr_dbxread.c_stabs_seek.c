
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SEEK_CUR ;
 int bfd_seek (int ,int,int ) ;
 scalar_t__ stabs_data ;
 int symbuf_left ;
 int symbuf_read ;
 int symfile_bfd ;

__attribute__((used)) static void
stabs_seek (int sym_offset)
{
  if (stabs_data)
    {
      symbuf_read += sym_offset;
      symbuf_left -= sym_offset;
    }
  else
    bfd_seek (symfile_bfd, sym_offset, SEEK_CUR);
}
