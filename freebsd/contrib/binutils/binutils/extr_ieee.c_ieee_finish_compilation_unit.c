
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ieee_range {int low; int high; struct ieee_range* next; } ;
struct ieee_handle {int highaddr; char* modname; TYPE_2__* abfd; struct ieee_range* ranges; int data; int linenos; int vars; int types; int lineno_filename; int filename; int * pending_lineno_filename; int cxx; } ;
typedef int bfd_vma ;
typedef int bfd_boolean ;
struct TYPE_6__ {int flags; int index; struct TYPE_6__* next; } ;
typedef TYPE_1__ asection ;
struct TYPE_7__ {TYPE_1__* sections; } ;


 int FALSE ;
 int IEEE_SECTION_NUMBER_BASE ;
 int SEC_CODE ;
 int SEC_READONLY ;
 int TRUE ;
 int assert (int) ;
 scalar_t__ bfd_get_section_vma (TYPE_2__*,TYPE_1__*) ;
 scalar_t__ bfd_section_size (TYPE_2__*,TYPE_1__*) ;
 int ieee_add_range (struct ieee_handle*,int ,int,int) ;
 int ieee_append_buffer (struct ieee_handle*,int *,int *) ;
 scalar_t__ ieee_bb_record_enum ;
 scalar_t__ ieee_be_record_enum ;
 int ieee_buffer_emptyp (int *) ;
 int ieee_change_buffer (struct ieee_handle*,int *) ;
 int ieee_lineno (void*,char const*,int ,int) ;
 int ieee_write_byte (struct ieee_handle*,int) ;
 int ieee_write_id (struct ieee_handle*,char*) ;
 int ieee_write_number (struct ieee_handle*,int) ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static bfd_boolean
ieee_finish_compilation_unit (struct ieee_handle *info)
{
  struct ieee_range *r;

  if (! ieee_buffer_emptyp (&info->types))
    {
      if (! ieee_change_buffer (info, &info->types)
   || ! ieee_write_byte (info, (int) ieee_be_record_enum))
 return FALSE;
    }

  if (! ieee_buffer_emptyp (&info->cxx))
    {


      assert (! ieee_buffer_emptyp (&info->vars));
      if (! ieee_change_buffer (info, &info->vars))
 return FALSE;



      if (! ieee_write_byte (info, (int) ieee_bb_record_enum)
   || ! ieee_write_byte (info, 6)
   || ! ieee_write_number (info, 0)
   || ! ieee_write_id (info, "__XRYCPP")
   || ! ieee_write_number (info, 0)
   || ! ieee_write_number (info, 0)
   || ! ieee_write_number (info, info->highaddr - 1)
   || ! ieee_append_buffer (info, &info->vars, &info->cxx)
   || ! ieee_change_buffer (info, &info->vars)
   || ! ieee_write_byte (info, (int) ieee_be_record_enum)
   || ! ieee_write_number (info, info->highaddr - 1))
 return FALSE;
    }

  if (! ieee_buffer_emptyp (&info->vars))
    {
      if (! ieee_change_buffer (info, &info->vars)
   || ! ieee_write_byte (info, (int) ieee_be_record_enum))
 return FALSE;
    }

  if (info->pending_lineno_filename != ((void*)0))
    {

      if (! ieee_lineno ((void *) info, (const char *) ((void*)0), 0, (bfd_vma) -1))
 return FALSE;
    }
  if (! ieee_buffer_emptyp (&info->linenos))
    {
      if (! ieee_change_buffer (info, &info->linenos)
   || ! ieee_write_byte (info, (int) ieee_be_record_enum))
 return FALSE;
      if (strcmp (info->filename, info->lineno_filename) != 0)
 {



   if (! ieee_write_byte (info, (int) ieee_be_record_enum))
     return FALSE;
 }
    }

  if (! ieee_append_buffer (info, &info->data, &info->types)
      || ! ieee_append_buffer (info, &info->data, &info->vars)
      || ! ieee_append_buffer (info, &info->data, &info->linenos))
    return FALSE;


  if (! ieee_change_buffer (info, &info->data))
    return FALSE;

  if (! ieee_write_byte (info, (int) ieee_bb_record_enum)
      || ! ieee_write_byte (info, 10)
      || ! ieee_write_number (info, 0)
      || ! ieee_write_id (info, info->modname)
      || ! ieee_write_id (info, "")
      || ! ieee_write_number (info, 0)
      || ! ieee_write_id (info, "GNU objcopy"))
    return FALSE;

  for (r = info->ranges; r != ((void*)0); r = r->next)
    {
      bfd_vma low, high;
      asection *s;
      int kind;

      low = r->low;
      high = r->high;


      for (s = info->abfd->sections; s != ((void*)0); s = s->next)
 {
   if (bfd_get_section_vma (info->abfd, s) <= low
       && high <= (bfd_get_section_vma (info->abfd, s)
     + bfd_section_size (info->abfd, s)))
     break;
 }

      if (s == ((void*)0))
 {

   continue;
 }


      while (r->next != ((void*)0)
      && high + 0x1000 >= r->next->low
      && (r->next->high
   <= (bfd_get_section_vma (info->abfd, s)
       + bfd_section_size (info->abfd, s))))
 {
   r = r->next;
   high = r->high;
 }

      if ((s->flags & SEC_CODE) != 0)
 kind = 1;
      else if ((s->flags & SEC_READONLY) != 0)
 kind = 3;
      else
 kind = 2;

      if (! ieee_write_byte (info, (int) ieee_bb_record_enum)
   || ! ieee_write_byte (info, 11)
   || ! ieee_write_number (info, 0)
   || ! ieee_write_id (info, "")
   || ! ieee_write_number (info, kind)
   || ! ieee_write_number (info, s->index + IEEE_SECTION_NUMBER_BASE)
   || ! ieee_write_number (info, low)
   || ! ieee_write_byte (info, (int) ieee_be_record_enum)
   || ! ieee_write_number (info, high - low))
 return FALSE;


      if (! ieee_add_range (info, TRUE, low, high))
 return FALSE;
    }

  if (! ieee_write_byte (info, (int) ieee_be_record_enum))
    return FALSE;

  return TRUE;
}
