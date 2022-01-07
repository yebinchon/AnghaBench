
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sec_merge_sec_info {int * first_str; } ;
typedef scalar_t__ file_ptr ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_5__ {scalar_t__ output_offset; TYPE_1__* output_section; } ;
typedef TYPE_2__ asection ;
struct TYPE_4__ {scalar_t__ filepos; } ;


 int FALSE ;
 int SEEK_SET ;
 int TRUE ;
 scalar_t__ bfd_seek (int *,scalar_t__,int ) ;
 int sec_merge_emit (int *,int *) ;

bfd_boolean
_bfd_write_merged_section (bfd *output_bfd, asection *sec, void *psecinfo)
{
  struct sec_merge_sec_info *secinfo;
  file_ptr pos;

  secinfo = (struct sec_merge_sec_info *) psecinfo;

  if (secinfo->first_str == ((void*)0))
    return TRUE;

  pos = sec->output_section->filepos + sec->output_offset;
  if (bfd_seek (output_bfd, pos, SEEK_SET) != 0)
    return FALSE;

  if (! sec_merge_emit (output_bfd, secinfo->first_str))
    return FALSE;

  return TRUE;
}
