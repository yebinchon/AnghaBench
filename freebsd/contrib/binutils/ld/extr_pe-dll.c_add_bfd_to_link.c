
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct bfd_link_info {int dummy; } ;
struct TYPE_4__ {int * the_bfd; } ;
typedef TYPE_1__ lang_input_statement_type ;
typedef int bfd ;


 int bfd_link_add_symbols (int *,struct bfd_link_info*) ;
 int einfo (char*,char const*) ;
 TYPE_1__* lang_add_input_file (char const*,int ,int *) ;
 int lang_input_file_is_fake_enum ;
 int ldlang_add_file (TYPE_1__*) ;

__attribute__((used)) static void
add_bfd_to_link (bfd *abfd, const char *name, struct bfd_link_info *link_info)
{
  lang_input_statement_type *fake_file;

  fake_file = lang_add_input_file (name,
       lang_input_file_is_fake_enum,
       ((void*)0));
  fake_file->the_bfd = abfd;
  ldlang_add_file (fake_file);

  if (!bfd_link_add_symbols (abfd, link_info))
    einfo ("%Xaddsym %s: %E\n", name);
}
