
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_5__ ;
typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;
typedef struct TYPE_25__ TYPE_10__ ;


struct TYPE_27__ {TYPE_4__* abfd; scalar_t__ file_offset; } ;
typedef TYPE_2__ ieee_ar_obstack_type ;
struct TYPE_30__ {unsigned char* first_byte; unsigned char* input_p; TYPE_4__* abfd; } ;
struct TYPE_28__ {int element_count; TYPE_5__ h; TYPE_10__* elements; scalar_t__ element_index; } ;
typedef TYPE_3__ ieee_ar_data_type ;
typedef scalar_t__ file_ptr ;
typedef int buffer ;
typedef int bfd_target ;
typedef int bfd_size_type ;
struct TYPE_26__ {TYPE_3__* ieee_ar_data; } ;
struct TYPE_29__ {TYPE_1__ tdata; int const* xvec; } ;
typedef TYPE_4__ bfd ;
struct TYPE_25__ {scalar_t__ file_offset; } ;


 TYPE_3__* IEEE_AR_DATA (TYPE_4__*) ;
 int IEEE_DATA (TYPE_4__*) ;
 scalar_t__ Module_Beginning ;
 int SEEK_SET ;
 void* bfd_alloc (TYPE_4__*,int) ;
 int bfd_bread (void*,int,TYPE_4__*) ;
 int bfd_error_wrong_format ;
 TYPE_2__* bfd_malloc (int) ;
 TYPE_2__* bfd_realloc (TYPE_2__*,int) ;
 int bfd_release (TYPE_4__*,TYPE_3__*) ;
 scalar_t__ bfd_seek (TYPE_4__*,scalar_t__,int ) ;
 int bfd_set_error (int ) ;
 int free (TYPE_2__*) ;
 scalar_t__ ieee_assign_value_to_variable_enum ;
 scalar_t__ ieee_pos (int ) ;
 int memcpy (TYPE_10__*,TYPE_2__*,size_t) ;
 scalar_t__ must_parse_int (TYPE_5__*) ;
 int next_byte (TYPE_5__*) ;
 int read_2bytes (TYPE_5__*) ;
 char* read_id (TYPE_5__*) ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ this_byte (TYPE_5__*) ;

__attribute__((used)) static const bfd_target *
ieee_archive_p (bfd *abfd)
{
  char *library;
  unsigned int i;
  unsigned char buffer[512];
  file_ptr buffer_offset = 0;
  ieee_ar_data_type *save = abfd->tdata.ieee_ar_data;
  ieee_ar_data_type *ieee;
  bfd_size_type alc_elts;
  ieee_ar_obstack_type *elts = ((void*)0);
  bfd_size_type amt = sizeof (ieee_ar_data_type);

  abfd->tdata.ieee_ar_data = bfd_alloc (abfd, amt);
  if (!abfd->tdata.ieee_ar_data)
    goto error_ret_restore;
  ieee = IEEE_AR_DATA (abfd);



  bfd_bread ((void *) buffer, (bfd_size_type) sizeof (buffer), abfd);

  ieee->h.first_byte = buffer;
  ieee->h.input_p = buffer;

  ieee->h.abfd = abfd;

  if (this_byte (&(ieee->h)) != Module_Beginning)
    goto got_wrong_format_error;

  next_byte (&(ieee->h));
  library = read_id (&(ieee->h));
  if (strcmp (library, "LIBRARY") != 0)
    goto got_wrong_format_error;


  read_id (&(ieee->h));

  ieee->element_count = 0;
  ieee->element_index = 0;

  next_byte (&(ieee->h));
  must_parse_int (&(ieee->h));
  must_parse_int (&(ieee->h));

  alc_elts = 10;
  elts = bfd_malloc (alc_elts * sizeof *elts);
  if (elts == ((void*)0))
    goto error_return;


  while (1)
    {
      int rec;
      ieee_ar_obstack_type *t;

      rec = read_2bytes (&(ieee->h));
      if (rec != (int) ieee_assign_value_to_variable_enum)
 break;

      if (ieee->element_count >= alc_elts)
 {
   ieee_ar_obstack_type *n;

   alc_elts *= 2;
   n = bfd_realloc (elts, alc_elts * sizeof (* elts));
   if (n == ((void*)0))
     goto error_return;
   elts = n;
 }

      t = &elts[ieee->element_count];
      ieee->element_count++;

      must_parse_int (&(ieee->h));
      t->file_offset = must_parse_int (&(ieee->h));
      t->abfd = (bfd *) ((void*)0);


      if ((size_t) ieee_pos (IEEE_DATA (abfd)) > sizeof (buffer) / 2)
 {

   buffer_offset += ieee_pos (IEEE_DATA (abfd));
   if (bfd_seek (abfd, buffer_offset, SEEK_SET) != 0)
     goto error_return;


   bfd_bread ((void *) buffer, (bfd_size_type) sizeof (buffer), abfd);
   ieee->h.first_byte = buffer;
   ieee->h.input_p = buffer;
 }
    }

  amt = ieee->element_count;
  amt *= sizeof *ieee->elements;
  ieee->elements = bfd_alloc (abfd, amt);
  if (ieee->elements == ((void*)0))
    goto error_return;

  memcpy (ieee->elements, elts, (size_t) amt);
  free (elts);
  elts = ((void*)0);


  for (i = 2; i < ieee->element_count; i++)
    {
      if (bfd_seek (abfd, ieee->elements[i].file_offset, SEEK_SET) != 0)
 goto error_return;


      bfd_bread ((void *) buffer, (bfd_size_type) sizeof (buffer), abfd);
      ieee->h.first_byte = buffer;
      ieee->h.input_p = buffer;

      next_byte (&(ieee->h));
      next_byte (&(ieee->h));
      must_parse_int (&(ieee->h));

      if (must_parse_int (&(ieee->h)) != 0)

 ieee->elements[i].file_offset = 0;
      else
 ieee->elements[i].file_offset = must_parse_int (&(ieee->h));
    }



  return abfd->xvec;

 got_wrong_format_error:
  bfd_set_error (bfd_error_wrong_format);
 error_return:
  if (elts != ((void*)0))
    free (elts);
  bfd_release (abfd, ieee);
 error_ret_restore:
  abfd->tdata.ieee_ar_data = save;

  return ((void*)0);
}
