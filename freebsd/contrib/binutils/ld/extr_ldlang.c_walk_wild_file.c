
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int lang_wild_statement_type ;
struct TYPE_7__ {int * the_bfd; } ;
typedef TYPE_1__ lang_input_statement_type ;
typedef int callback_t ;
struct TYPE_8__ {TYPE_1__* usrdata; } ;
typedef TYPE_2__ bfd ;


 int bfd_archive ;
 int bfd_check_format (int *,int ) ;
 TYPE_2__* bfd_openr_next_archived_file (int *,TYPE_2__*) ;
 int walk_wild_section (int *,TYPE_1__*,int ,void*) ;

__attribute__((used)) static void
walk_wild_file (lang_wild_statement_type *s,
  lang_input_statement_type *f,
  callback_t callback,
  void *data)
{
  if (f->the_bfd == ((void*)0)
      || ! bfd_check_format (f->the_bfd, bfd_archive))
    walk_wild_section (s, f, callback, data);
  else
    {
      bfd *member;



      member = bfd_openr_next_archived_file (f->the_bfd, ((void*)0));
      while (member != ((void*)0))
 {





   if (member->usrdata != ((void*)0))
     {
       walk_wild_section (s, member->usrdata, callback, data);
     }

   member = bfd_openr_next_archived_file (f->the_bfd, member);
 }
    }
}
