
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int file_ptr ;
typedef scalar_t__ bfd_size_type ;
typedef int bfd_byte ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_5__ {scalar_t__ size; } ;
typedef TYPE_1__ asection ;


 int FALSE ;
 int NOTE_ARCH_STRING ;
 int TRUE ;
 int _ (char*) ;
 int _bfd_error_handler (int ,char const*,int ) ;
 int arm_Note ;
 int arm_check_note (int *,int *,scalar_t__,int ,char**) ;
 int bfd_get_filename (int *) ;
 int bfd_get_mach (int *) ;
 TYPE_1__* bfd_get_section_by_name (int *,char const*) ;
 int bfd_malloc_and_get_section (int *,TYPE_1__*,int **) ;
 int bfd_set_section_contents (int *,TYPE_1__*,int *,int ,scalar_t__) ;
 int free (int *) ;
 int name ;
 int offsetof (int ,int ) ;
 scalar_t__ strcmp (char*,char*) ;
 int strcpy (char*,char*) ;
 int strlen (int ) ;
 int stub1 (int ,char const*,int ) ;

bfd_boolean
bfd_arm_update_notes (bfd *abfd, const char *note_section)
{
  asection * arm_arch_section;
  bfd_size_type buffer_size;
  bfd_byte * buffer;
  char * arch_string;
  char * expected;




  arm_arch_section = bfd_get_section_by_name (abfd, note_section);

  if (arm_arch_section == ((void*)0))
    return TRUE;

  buffer_size = arm_arch_section->size;
  if (buffer_size == 0)
    return FALSE;

  if (!bfd_malloc_and_get_section (abfd, arm_arch_section, &buffer))
    goto FAIL;


  if (! arm_check_note (abfd, buffer, buffer_size, NOTE_ARCH_STRING, & arch_string))
    goto FAIL;


  switch (bfd_get_mach (abfd))
    {
    default:
    case 128: expected = "unknown"; break;
    case 141: expected = "armv2"; break;
    case 140: expected = "armv2a"; break;
    case 139: expected = "armv3"; break;
    case 138: expected = "armv3M"; break;
    case 137: expected = "armv4"; break;
    case 136: expected = "armv4t"; break;
    case 135: expected = "armv5"; break;
    case 134: expected = "armv5t"; break;
    case 133: expected = "armv5te"; break;
    case 132: expected = "XScale"; break;
    case 131: expected = "ep9312"; break;
    case 130: expected = "iWMMXt"; break;
    case 129: expected = "iWMMXt2"; break;
    }

  if (strcmp (arch_string, expected) != 0)
    {
      strcpy ((char *) buffer + (offsetof (arm_Note, name)
     + ((strlen (NOTE_ARCH_STRING) + 3) & ~3)),
       expected);

      if (! bfd_set_section_contents (abfd, arm_arch_section, buffer,
          (file_ptr) 0, buffer_size))
 {
   (*_bfd_error_handler)
     (_("warning: unable to update contents of %s section in %s"),
      note_section, bfd_get_filename (abfd));
   goto FAIL;
 }
    }

  free (buffer);
  return TRUE;

 FAIL:
  if (buffer != ((void*)0))
    free (buffer);
  return FALSE;
}
