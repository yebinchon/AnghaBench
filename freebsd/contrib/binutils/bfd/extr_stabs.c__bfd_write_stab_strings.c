
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct stab_info {int includes; int strings; TYPE_1__* stabstr; } ;
typedef int file_ptr ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_4__ {scalar_t__ size; scalar_t__ filepos; } ;
struct TYPE_3__ {scalar_t__ output_offset; TYPE_2__* output_section; } ;


 int BFD_ASSERT (int) ;
 int FALSE ;
 int SEEK_SET ;
 int TRUE ;
 int _bfd_stringtab_emit (int *,int ) ;
 int _bfd_stringtab_free (int ) ;
 scalar_t__ _bfd_stringtab_size (int ) ;
 int bfd_hash_table_free (int *) ;
 scalar_t__ bfd_is_abs_section (TYPE_2__*) ;
 scalar_t__ bfd_seek (int *,int ,int ) ;

bfd_boolean
_bfd_write_stab_strings (bfd *output_bfd, struct stab_info *sinfo)
{
  if (bfd_is_abs_section (sinfo->stabstr->output_section))

    return TRUE;

  BFD_ASSERT ((sinfo->stabstr->output_offset
        + _bfd_stringtab_size (sinfo->strings))
       <= sinfo->stabstr->output_section->size);

  if (bfd_seek (output_bfd,
  (file_ptr) (sinfo->stabstr->output_section->filepos
       + sinfo->stabstr->output_offset),
  SEEK_SET) != 0)
    return FALSE;

  if (! _bfd_stringtab_emit (output_bfd, sinfo->strings))
    return FALSE;


  _bfd_stringtab_free (sinfo->strings);
  bfd_hash_table_free (&sinfo->includes);

  return TRUE;
}
