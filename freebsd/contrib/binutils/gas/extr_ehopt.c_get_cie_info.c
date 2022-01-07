
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct cie_info {int code_alignment; int z_augmentation; } ;
struct TYPE_6__ {int fr_fix; char* fr_literal; struct TYPE_6__* fr_next; } ;
typedef TYPE_2__ fragS ;
struct TYPE_7__ {int fx_where; scalar_t__ fx_size; struct TYPE_7__* fx_next; TYPE_2__* fx_frag; } ;
typedef TYPE_3__ fixS ;
struct TYPE_8__ {TYPE_1__* frchainP; } ;
struct TYPE_5__ {TYPE_3__* fix_root; TYPE_2__* frch_root; } ;


 int now_seg ;
 TYPE_4__* seg_info (int ) ;
 char* segment_name (int ) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int
get_cie_info (struct cie_info *info)
{
  fragS *f;
  fixS *fix;
  int offset;
  char CIE_id;
  char augmentation[10];
  int iaug;
  int code_alignment = 0;



  f = seg_info (now_seg)->frchainP->frch_root;
  fix = seg_info (now_seg)->frchainP->fix_root;





  if (strcmp (segment_name (now_seg), ".debug_frame") == 0)
    CIE_id = (char)0xff;
  else
    CIE_id = 0;

  offset = 4;
  while (f != ((void*)0) && offset >= f->fr_fix)
    {
      offset -= f->fr_fix;
      f = f->fr_next;
    }
  if (f == ((void*)0)
      || f->fr_fix - offset < 4
      || f->fr_literal[offset] != CIE_id
      || f->fr_literal[offset + 1] != CIE_id
      || f->fr_literal[offset + 2] != CIE_id
      || f->fr_literal[offset + 3] != CIE_id)
    return 0;



  offset += 4;
  while (f != ((void*)0) && offset >= f->fr_fix)
    {
      offset -= f->fr_fix;
      f = f->fr_next;
    }
  if (f == ((void*)0)
      || f->fr_fix - offset < 1
      || f->fr_literal[offset] != 1)
    return 0;



  iaug = 0;
  ++offset;
  while (1)
    {
      while (f != ((void*)0) && offset >= f->fr_fix)
 {
   offset -= f->fr_fix;
   f = f->fr_next;
 }
      if (f == ((void*)0))
 return 0;

      while (offset < f->fr_fix && f->fr_literal[offset] != '\0')
 {
   if ((size_t) iaug < (sizeof augmentation) - 1)
     {
       augmentation[iaug] = f->fr_literal[offset];
       ++iaug;
     }
   ++offset;
 }
      if (offset < f->fr_fix)
 break;
    }
  ++offset;
  while (f != ((void*)0) && offset >= f->fr_fix)
    {
      offset -= f->fr_fix;
      f = f->fr_next;
    }
  if (f == ((void*)0))
    return 0;

  augmentation[iaug] = '\0';
  if (augmentation[0] == '\0')
    {

    }
  else if (strcmp (augmentation, "eh") == 0)
    {


      while (fix != ((void*)0)
      && (fix->fx_frag != f || fix->fx_where != offset))
 fix = fix->fx_next;
      if (fix == ((void*)0))
 offset += 4;
      else
 offset += fix->fx_size;
      while (f != ((void*)0) && offset >= f->fr_fix)
 {
   offset -= f->fr_fix;
   f = f->fr_next;
 }
      if (f == ((void*)0))
 return 0;
    }
  else if (augmentation[0] != 'z')
    return 0;




  code_alignment = f->fr_literal[offset] & 0xff;
  if ((code_alignment & 0x80) != 0)
    code_alignment = 0;

  info->code_alignment = code_alignment;
  info->z_augmentation = (augmentation[0] == 'z');

  return 1;
}
