
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct ieee_name_type_hash_entry {int dummy; } ;
struct TYPE_9__ {int root; } ;
struct TYPE_8__ {int root; } ;
struct TYPE_10__ {struct ieee_buf* head; } ;
struct ieee_handle {int type_indx; int name_indx; TYPE_2__ tags; TYPE_1__ typedefs; TYPE_3__ data; TYPE_3__ vars; void* error; TYPE_3__ global_types; int * filename; TYPE_3__ fnargs; TYPE_3__ fntype; TYPE_3__ linenos; TYPE_3__ cxx; TYPE_3__ types; int * abfd; } ;
struct ieee_buf {scalar_t__ c; int buf; struct ieee_buf* next; } ;
typedef scalar_t__ file_ptr ;
typedef scalar_t__ bfd_size_type ;
typedef void* bfd_boolean ;
typedef int bfd ;
typedef int asection ;


 void* FALSE ;
 int SEC_DEBUGGING ;
 int SEC_HAS_CONTENTS ;
 void* TRUE ;
 char* bfd_errmsg (int ) ;
 int bfd_get_error () ;
 char* bfd_get_filename (int *) ;
 int bfd_hash_table_free (int *) ;
 int bfd_hash_table_init (int *,int ,int) ;
 int * bfd_make_section (int *,char*) ;
 int bfd_map_over_sections (int *,int ,void*) ;
 int bfd_set_section_contents (int *,int *,int ,scalar_t__,scalar_t__) ;
 int bfd_set_section_flags (int *,int *,int) ;
 int bfd_set_section_size (int *,int *,scalar_t__) ;
 scalar_t__ builtin_void ;
 int debug_write (void*,int *,void*) ;
 int fprintf (int ,char*,char*,char const*,char*) ;
 int ieee_add_bb11_blocks ;
 int ieee_append_buffer (struct ieee_handle*,TYPE_3__*,TYPE_3__*) ;
 scalar_t__ ieee_be_record_enum ;
 scalar_t__ ieee_buffer_emptyp (TYPE_3__*) ;
 int ieee_change_buffer (struct ieee_handle*,TYPE_3__*) ;
 int ieee_finish_compilation_unit (struct ieee_handle*) ;
 int ieee_fns ;
 int ieee_init_buffer (struct ieee_handle*,TYPE_3__*) ;
 int ieee_name_type_hash_traverse (TYPE_2__*,int ,void*) ;
 int ieee_name_type_newfunc ;
 scalar_t__ ieee_nn_record ;
 scalar_t__ ieee_ty_record_enum ;
 int ieee_write_byte (struct ieee_handle*,int) ;
 int ieee_write_id (struct ieee_handle*,char*) ;
 int ieee_write_number (struct ieee_handle*,int) ;
 int ieee_write_undefined_tag ;
 int memset (struct ieee_handle*,int ,int) ;
 int stderr ;

bfd_boolean
write_ieee_debugging_info (bfd *abfd, void *dhandle)
{
  struct ieee_handle info;
  asection *s;
  const char *err;
  struct ieee_buf *b;

  memset (&info, 0, sizeof info);
  info.abfd = abfd;
  info.type_indx = 256;
  info.name_indx = 32;

  if (!bfd_hash_table_init (&info.typedefs.root, ieee_name_type_newfunc,
       sizeof (struct ieee_name_type_hash_entry))
      || !bfd_hash_table_init (&info.tags.root, ieee_name_type_newfunc,
          sizeof (struct ieee_name_type_hash_entry)))
    return FALSE;

  if (! ieee_init_buffer (&info, &info.global_types)
      || ! ieee_init_buffer (&info, &info.data)
      || ! ieee_init_buffer (&info, &info.types)
      || ! ieee_init_buffer (&info, &info.vars)
      || ! ieee_init_buffer (&info, &info.cxx)
      || ! ieee_init_buffer (&info, &info.linenos)
      || ! ieee_init_buffer (&info, &info.fntype)
      || ! ieee_init_buffer (&info, &info.fnargs))
    return FALSE;

  if (! debug_write (dhandle, &ieee_fns, (void *) &info))
    return FALSE;

  if (info.filename != ((void*)0))
    {
      if (! ieee_finish_compilation_unit (&info))
 return FALSE;
    }


  info.error = FALSE;
  ieee_name_type_hash_traverse (&info.tags,
    ieee_write_undefined_tag,
    (void *) &info);
  if (info.error)
    return FALSE;


  if (! ieee_buffer_emptyp (&info.global_types))
    {


      if (! ieee_change_buffer (&info, &info.global_types)
   || ! ieee_write_byte (&info, (int) ieee_nn_record)
   || ! ieee_write_number (&info, info.name_indx)
   || ! ieee_write_id (&info, "")
   || ! ieee_write_byte (&info, (int) ieee_ty_record_enum)
   || ! ieee_write_number (&info, info.type_indx)
   || ! ieee_write_byte (&info, 0xce)
   || ! ieee_write_number (&info, info.name_indx)
   || ! ieee_write_number (&info, 'P')
   || ! ieee_write_number (&info, (int) builtin_void + 32)
   || ! ieee_write_byte (&info, (int) ieee_be_record_enum))
 return FALSE;

      if (! ieee_append_buffer (&info, &info.global_types, &info.data))
 return FALSE;
      info.data = info.global_types;
    }



  info.error = FALSE;
  if (! ieee_init_buffer (&info, &info.vars))
    return FALSE;
  bfd_map_over_sections (abfd, ieee_add_bb11_blocks, (void *) &info);
  if (info.error)
    return FALSE;
  if (! ieee_buffer_emptyp (&info.vars))
    {
      if (! ieee_change_buffer (&info, &info.vars)
   || ! ieee_write_byte (&info, (int) ieee_be_record_enum))
 return FALSE;

      if (! ieee_append_buffer (&info, &info.data, &info.vars))
 return FALSE;
    }





  if (ieee_buffer_emptyp (&info.data))
    {

      return TRUE;
    }
  err = ((void*)0);
  s = bfd_make_section (abfd, ".debug");
  if (s == ((void*)0))
    err = "bfd_make_section";
  if (err == ((void*)0))
    {
      if (! bfd_set_section_flags (abfd, s, SEC_DEBUGGING | SEC_HAS_CONTENTS))
 err = "bfd_set_section_flags";
    }
  if (err == ((void*)0))
    {
      bfd_size_type size;

      size = 0;
      for (b = info.data.head; b != ((void*)0); b = b->next)
 size += b->c;
      if (! bfd_set_section_size (abfd, s, size))
 err = "bfd_set_section_size";
    }
  if (err == ((void*)0))
    {
      file_ptr offset;

      offset = 0;
      for (b = info.data.head; b != ((void*)0); b = b->next)
 {
   if (! bfd_set_section_contents (abfd, s, b->buf, offset, b->c))
     {
       err = "bfd_set_section_contents";
       break;
     }
   offset += b->c;
 }
    }

  if (err != ((void*)0))
    {
      fprintf (stderr, "%s: %s: %s\n", bfd_get_filename (abfd), err,
        bfd_errmsg (bfd_get_error ()));
      return FALSE;
    }

  bfd_hash_table_free (&info.typedefs.root);
  bfd_hash_table_free (&info.tags.root);

  return TRUE;
}
