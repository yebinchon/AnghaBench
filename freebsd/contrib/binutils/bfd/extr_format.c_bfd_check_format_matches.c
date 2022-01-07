
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int file_ptr ;
struct TYPE_16__ {char* name; } ;
typedef TYPE_1__ const bfd_target ;
typedef int bfd_size_type ;
typedef scalar_t__ bfd_format ;
typedef scalar_t__ bfd_error_type ;
typedef int bfd_boolean ;
struct TYPE_17__ {scalar_t__ format; scalar_t__ direction; int output_has_begun; TYPE_1__ const* xvec; int target_defaulted; } ;
typedef TYPE_2__ bfd ;


 TYPE_1__ const* BFD_SEND_FMT (TYPE_2__*,int ,TYPE_2__*) ;
 int FALSE ;
 int SEEK_SET ;
 int TRUE ;
 int _bfd_check_format ;
 int _bfd_target_vector_entries ;
 scalar_t__ bfd_archive ;
 TYPE_1__ const** bfd_associated_vector ;
 TYPE_1__ const** bfd_default_vector ;
 scalar_t__ bfd_error_file_ambiguously_recognized ;
 scalar_t__ bfd_error_file_not_recognized ;
 scalar_t__ bfd_error_invalid_operation ;
 scalar_t__ bfd_error_wrong_format ;
 scalar_t__ bfd_error_wrong_object_format ;
 scalar_t__ bfd_get_error () ;
 TYPE_1__ const** bfd_malloc (int) ;
 int bfd_read_p (TYPE_2__*) ;
 scalar_t__ bfd_seek (TYPE_2__*,int ,int ) ;
 int bfd_set_error (scalar_t__) ;
 TYPE_1__ const** bfd_target_vector ;
 scalar_t__ bfd_type_end ;
 scalar_t__ bfd_unknown ;
 scalar_t__ both_direction ;
 int free (TYPE_1__ const**) ;
 int memcpy (TYPE_1__ const**,TYPE_1__ const**,int) ;

bfd_boolean
bfd_check_format_matches (bfd *abfd, bfd_format format, char ***matching)
{
  extern const bfd_target binary_vec;
  const bfd_target * const *target;
  const bfd_target **matching_vector = ((void*)0);
  const bfd_target *save_targ, *right_targ, *ar_right_targ;
  int match_count;
  int ar_match_index;

  if (!bfd_read_p (abfd)
      || (unsigned int) abfd->format >= (unsigned int) bfd_type_end)
    {
      bfd_set_error (bfd_error_invalid_operation);
      return FALSE;
    }

  if (abfd->format != bfd_unknown)
    return abfd->format == format;



  save_targ = abfd->xvec;
  match_count = 0;
  ar_match_index = _bfd_target_vector_entries;

  if (matching)
    {
      bfd_size_type amt;

      *matching = ((void*)0);
      amt = sizeof (*matching_vector) * 2 * _bfd_target_vector_entries;
      matching_vector = bfd_malloc (amt);
      if (!matching_vector)
 return FALSE;
    }

  right_targ = 0;
  ar_right_targ = 0;


  abfd->format = format;


  if (!abfd->target_defaulted)
    {
      if (bfd_seek (abfd, (file_ptr) 0, SEEK_SET) != 0)
 {
   if (matching)
     free (matching_vector);
   return FALSE;
 }

      right_targ = BFD_SEND_FMT (abfd, _bfd_check_format, (abfd));

      if (right_targ)
 {
   abfd->xvec = right_targ;

   if (matching)
     free (matching_vector);






   if (abfd->direction == both_direction)
     abfd->output_has_begun = TRUE;

   return TRUE;
 }
      if (format == bfd_archive && save_targ == &binary_vec)
 {
   abfd->xvec = save_targ;
   abfd->format = bfd_unknown;

   if (matching)
     free (matching_vector);

   bfd_set_error (bfd_error_file_not_recognized);

   return FALSE;
 }
    }

  for (target = bfd_target_vector; *target != ((void*)0); target++)
    {
      const bfd_target *temp;
      bfd_error_type err;


      if (*target == &binary_vec
   || (!abfd->target_defaulted && *target == save_targ))
 continue;

      abfd->xvec = *target;

      if (bfd_seek (abfd, (file_ptr) 0, SEEK_SET) != 0)
 {
   if (matching)
     free (matching_vector);
   return FALSE;
 }





      bfd_set_error (bfd_error_wrong_format);

      temp = BFD_SEND_FMT (abfd, _bfd_check_format, (abfd));

      if (temp)
 {

   right_targ = temp;




   if (temp == bfd_default_vector[0])
     {
       match_count = 1;
       break;
     }

   if (matching)
     matching_vector[match_count] = temp;

   match_count++;
 }
      else if ((err = bfd_get_error ()) == bfd_error_wrong_object_format
        || err == bfd_error_file_ambiguously_recognized)
 {



   if (ar_right_targ != bfd_default_vector[0])
     ar_right_targ = *target;
   if (matching)
     matching_vector[ar_match_index] = *target;
   ar_match_index++;
 }
      else if (err != bfd_error_wrong_format)
 {
   abfd->xvec = save_targ;
   abfd->format = bfd_unknown;

   if (matching)
     free (matching_vector);

   return FALSE;
 }
    }

  if (match_count == 0)
    {

      right_targ = ar_right_targ;

      if (right_targ == bfd_default_vector[0])
 {
   match_count = 1;
 }
      else
 {
   match_count = ar_match_index - _bfd_target_vector_entries;

   if (matching && match_count > 1)
     memcpy (matching_vector,
      matching_vector + _bfd_target_vector_entries,
      sizeof (*matching_vector) * match_count);
 }
    }

  if (match_count > 1
      && bfd_associated_vector != ((void*)0)
      && matching)
    {
      const bfd_target * const *assoc = bfd_associated_vector;

      while ((right_targ = *assoc++) != ((void*)0))
 {
   int i = match_count;

   while (--i >= 0)
     if (matching_vector[i] == right_targ)
       break;

   if (i >= 0)
     {
       match_count = 1;
       break;
     }
 }
    }

  if (match_count == 1)
    {
      abfd->xvec = right_targ;

      if (matching)
 free (matching_vector);






      if (abfd->direction == both_direction)
 abfd->output_has_begun = TRUE;

      return TRUE;
    }

  abfd->xvec = save_targ;
  abfd->format = bfd_unknown;

  if (match_count == 0)
    {
      bfd_set_error (bfd_error_file_not_recognized);

      if (matching)
 free (matching_vector);
    }
  else
    {
      bfd_set_error (bfd_error_file_ambiguously_recognized);

      if (matching)
 {
   *matching = (char **) matching_vector;
   matching_vector[match_count] = ((void*)0);


   while (--match_count >= 0)
     {
       const char *name = matching_vector[match_count]->name;
       *(const char **) &matching_vector[match_count] = name;
     }
 }
    }

  return FALSE;
}
