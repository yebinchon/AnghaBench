
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct web_entry {scalar_t__ extra_info; } ;
struct see_entry_extra_info {scalar_t__ relevancy; int source_mode_signed; int source_mode; int source_mode_unsigned; } ;



 int MAX_MACHINE_MODE ;




 int gcc_assert (int) ;
 int gcc_unreachable () ;
 struct web_entry* unionfind_root (struct web_entry*) ;
 scalar_t__ unionfind_union (struct web_entry*,struct web_entry*) ;

__attribute__((used)) static bool
see_update_leader_extra_info (struct web_entry *first, struct web_entry *second)
{
  struct see_entry_extra_info *first_ei, *second_ei;

  first = unionfind_root (first);
  second = unionfind_root (second);

  if (unionfind_union (first, second))
    return 1;

  first_ei = (struct see_entry_extra_info *) first->extra_info;
  second_ei = (struct see_entry_extra_info *) second->extra_info;

  gcc_assert (first_ei && second_ei);

  if (second_ei->relevancy == 131)
    {
      first_ei->relevancy = 131;
      return 0;
    }
  switch (first_ei->relevancy)
    {
    case 131:
      break;
    case 130:
      switch (second_ei->relevancy)
 {
 case 130:
   break;
 case 132:
   first_ei->relevancy = second_ei->relevancy;
   first_ei->source_mode_signed = second_ei->source_mode_signed;
   first_ei->source_mode_unsigned = second_ei->source_mode_unsigned;
   break;
 case 129:
 case 128:
   first_ei->relevancy = second_ei->relevancy;
   first_ei->source_mode = second_ei->source_mode;
   break;
 default:
   gcc_unreachable ();
 }
      break;
    case 129:
      switch (second_ei->relevancy)
 {
 case 129:

   first_ei->source_mode =
     (first_ei->source_mode > second_ei->source_mode) ?
     first_ei->source_mode : second_ei->source_mode;
   break;
 case 130:
   break;
 case 128:

   first_ei->relevancy = 131;
   break;
 case 132:
   if (second_ei->source_mode_signed == MAX_MACHINE_MODE)
     first_ei->relevancy = 131;
   else

     first_ei->source_mode =
       (first_ei->source_mode > second_ei->source_mode_signed) ?
       first_ei->source_mode : second_ei->source_mode_signed;
   break;
 default:
   gcc_unreachable ();
 }
      break;

    case 128:
      switch (second_ei->relevancy)
 {
 case 129:

   first_ei->relevancy = 131;
   break;
 case 130:
   break;
 case 128:

   first_ei->source_mode =
     (first_ei->source_mode > second_ei->source_mode) ?
     first_ei->source_mode : second_ei->source_mode;
   break;
 case 132:
   if (second_ei->source_mode_unsigned == MAX_MACHINE_MODE)
     first_ei->relevancy = 131;
   else

     first_ei->source_mode =
       (first_ei->source_mode > second_ei->source_mode_unsigned) ?
       first_ei->source_mode : second_ei->source_mode_unsigned;
   break;
 default:
   gcc_unreachable ();
 }
      break;
    case 132:
      if (first_ei->source_mode_signed != MAX_MACHINE_MODE
   && first_ei->source_mode_unsigned != MAX_MACHINE_MODE)
 {
   switch (second_ei->relevancy)
     {
     case 129:
       first_ei->relevancy = 129;
       first_ei->source_mode =
  (first_ei->source_mode_signed > second_ei->source_mode) ?
  first_ei->source_mode_signed : second_ei->source_mode;
       break;
     case 130:
       break;
     case 128:
       first_ei->relevancy = 128;
       first_ei->source_mode =
  (first_ei->source_mode_unsigned > second_ei->source_mode) ?
  first_ei->source_mode_unsigned : second_ei->source_mode;
       break;
     case 132:
       if (second_ei->source_mode_unsigned != MAX_MACHINE_MODE)
  first_ei->source_mode_unsigned =
    (first_ei->source_mode_unsigned >
    second_ei->source_mode_unsigned) ?
    first_ei->source_mode_unsigned :
    second_ei->source_mode_unsigned;
       if (second_ei->source_mode_signed != MAX_MACHINE_MODE)
  first_ei->source_mode_signed =
    (first_ei->source_mode_signed >
    second_ei->source_mode_signed) ?
    first_ei->source_mode_signed : second_ei->source_mode_signed;
       break;
     default:
       gcc_unreachable ();
     }
 }
      else if (first_ei->source_mode_signed == MAX_MACHINE_MODE)
 {
   gcc_assert (first_ei->source_mode_unsigned != MAX_MACHINE_MODE);
   switch (second_ei->relevancy)
     {
     case 129:
       first_ei->relevancy = 131;
       break;
     case 130:
       break;
     case 128:
       first_ei->relevancy = 128;
       first_ei->source_mode =
  (first_ei->source_mode_unsigned > second_ei->source_mode) ?
  first_ei->source_mode_unsigned : second_ei->source_mode;
       break;
     case 132:
       if (second_ei->source_mode_unsigned == MAX_MACHINE_MODE)
  first_ei->relevancy = 131;
       else
  first_ei->source_mode_unsigned =
    (first_ei->source_mode_unsigned >
    second_ei->source_mode_unsigned) ?
    first_ei->source_mode_unsigned :
    second_ei->source_mode_unsigned;
       break;
     default:
       gcc_unreachable ();
     }
 }
      else
 {
   gcc_assert (first_ei->source_mode_unsigned == MAX_MACHINE_MODE);
   gcc_assert (first_ei->source_mode_signed != MAX_MACHINE_MODE);
   switch (second_ei->relevancy)
     {
     case 129:
       first_ei->relevancy = 129;
       first_ei->source_mode =
  (first_ei->source_mode_signed > second_ei->source_mode) ?
  first_ei->source_mode_signed : second_ei->source_mode;
       break;
     case 130:
       break;
     case 128:
       first_ei->relevancy = 131;
       break;
     case 132:
       if (second_ei->source_mode_signed == MAX_MACHINE_MODE)
  first_ei->relevancy = 131;
       else
  first_ei->source_mode_signed =
    (first_ei->source_mode_signed >
    second_ei->source_mode_signed) ?
    first_ei->source_mode_signed : second_ei->source_mode_signed;
       break;
     default:
       gcc_unreachable ();
     }
 }
      break;
    default:

      gcc_unreachable ();
    }

  return 0;
}
