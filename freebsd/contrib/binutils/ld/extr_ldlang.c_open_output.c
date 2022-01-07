
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef enum bfd_endian { ____Placeholder_bfd_endian } bfd_endian ;
struct TYPE_8__ {int byteorder; TYPE_1__* alternative_target; } ;
typedef TYPE_2__ bfd_target ;
typedef int bfd ;
struct TYPE_11__ {scalar_t__ endian; } ;
struct TYPE_10__ {int * hash; } ;
struct TYPE_9__ {scalar_t__ name; } ;
struct TYPE_7__ {int byteorder; scalar_t__ name; } ;


 int BFD_ENDIAN_BIG ;
 int BFD_ENDIAN_LITTLE ;
 scalar_t__ ENDIAN_BIG ;
 scalar_t__ ENDIAN_UNSET ;
 int TRUE ;
 int _ (char*) ;
 scalar_t__ bfd_error_invalid_target ;
 scalar_t__ bfd_get_error () ;
 int * bfd_link_hash_table_create (int *) ;
 int bfd_object ;
 int * bfd_openw (char const*,scalar_t__) ;
 TYPE_2__* bfd_search_for_target (int ,void*) ;
 int bfd_set_arch_mach (int *,int ,int ) ;
 int bfd_set_format (int *,int ) ;
 int bfd_set_gp_size (int *,int ) ;
 int closest_target_match ;
 TYPE_5__ command_line ;
 int delete_output_file_on_failure ;
 int einfo (int ,...) ;
 int g_switch_value ;
 int get_target ;
 scalar_t__ lang_get_output_target () ;
 int ldfile_output_architecture ;
 int ldfile_output_machine ;
 TYPE_4__ link_info ;
 scalar_t__ output_target ;
 TYPE_3__* winner ;

__attribute__((used)) static bfd *
open_output (const char *name)
{
  bfd *output;

  output_target = lang_get_output_target ();



  if (command_line.endian != ENDIAN_UNSET)
    {
      const bfd_target *target;
      enum bfd_endian desired_endian;


      target = bfd_search_for_target (get_target, (void *) output_target);


      if (target != ((void*)0))
 {
   if (command_line.endian == ENDIAN_BIG)
     desired_endian = BFD_ENDIAN_BIG;
   else
     desired_endian = BFD_ENDIAN_LITTLE;





   if (target->byteorder != desired_endian)
     {


       if (target->alternative_target != ((void*)0)
    && (target->alternative_target->byteorder == desired_endian))
  output_target = target->alternative_target->name;
       else
  {



    bfd_search_for_target (closest_target_match,
      (void *) target);



    if (winner == ((void*)0))
      einfo (_("%P: warning: could not find any targets"
        " that match endianness requirement\n"));
    else
      output_target = winner->name;
  }
     }
 }
    }

  output = bfd_openw (name, output_target);

  if (output == ((void*)0))
    {
      if (bfd_get_error () == bfd_error_invalid_target)
 einfo (_("%P%F: target %s not found\n"), output_target);

      einfo (_("%P%F: cannot open output file %s: %E\n"), name);
    }

  delete_output_file_on_failure = TRUE;

  if (! bfd_set_format (output, bfd_object))
    einfo (_("%P%F:%s: can not make object file: %E\n"), name);
  if (! bfd_set_arch_mach (output,
      ldfile_output_architecture,
      ldfile_output_machine))
    einfo (_("%P%F:%s: can not set architecture: %E\n"), name);

  link_info.hash = bfd_link_hash_table_create (output);
  if (link_info.hash == ((void*)0))
    einfo (_("%P%F: can not create hash table: %E\n"));

  bfd_set_gp_size (output, g_switch_value);
  return output;
}
