
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comp_unit {char* dwarf_frame_buffer; int dwarf_frame_size; TYPE_2__* dwarf_frame_section; } ;
typedef int ptrdiff_t ;
struct TYPE_4__ {int name; TYPE_1__* owner; } ;
struct TYPE_3__ {int filename; } ;


 int complaint (int *,char*,int ,int ) ;
 char* decode_frame_entry_1 (struct comp_unit*,char*,int) ;
 int symfile_complaints ;

__attribute__((used)) static char *
decode_frame_entry (struct comp_unit *unit, char *start, int eh_frame_p)
{
  enum { NONE, ALIGN4, ALIGN8, FAIL } workaround = NONE;
  char *ret;
  const char *msg;
  ptrdiff_t start_offset;

  while (1)
    {
      ret = decode_frame_entry_1 (unit, start, eh_frame_p);
      if (ret != ((void*)0))
 break;
      start_offset = start - unit->dwarf_frame_buffer;
      if (workaround < ALIGN4 && (start_offset & 3) != 0)
 {
   start += 4 - (start_offset & 3);
   workaround = ALIGN4;
   continue;
 }
      if (workaround < ALIGN8 && (start_offset & 7) != 0)
 {
   start += 8 - (start_offset & 7);
   workaround = ALIGN8;
   continue;
 }




      workaround = FAIL;
      ret = unit->dwarf_frame_buffer + unit->dwarf_frame_size;
      break;
    }

  switch (workaround)
    {
    case NONE:
      break;

    case ALIGN4:
      complaint (&symfile_complaints,
   "Corrupt data in %s:%s; align 4 workaround apparently succeeded",
   unit->dwarf_frame_section->owner->filename,
   unit->dwarf_frame_section->name);
      break;

    case ALIGN8:
      complaint (&symfile_complaints,
   "Corrupt data in %s:%s; align 8 workaround apparently succeeded",
   unit->dwarf_frame_section->owner->filename,
   unit->dwarf_frame_section->name);
      break;

    default:
      complaint (&symfile_complaints,
   "Corrupt data in %s:%s",
   unit->dwarf_frame_section->owner->filename,
   unit->dwarf_frame_section->name);
      break;
    }

  return ret;
}
