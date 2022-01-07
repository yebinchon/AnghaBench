
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int section_count; } ;
typedef TYPE_1__ bfd ;
struct TYPE_11__ {int id; TYPE_1__* owner; int index; } ;
typedef TYPE_2__ asection ;


 int BFD_SEND (TYPE_1__*,int ,TYPE_1__*) ;
 int _new_section_hook ;
 int bfd_section_list_append (TYPE_1__*,TYPE_2__*) ;

__attribute__((used)) static asection *
bfd_section_init (bfd *abfd, asection *newsect)
{
  static int section_id = 0x10;

  newsect->id = section_id;
  newsect->index = abfd->section_count;
  newsect->owner = abfd;

  if (! BFD_SEND (abfd, _new_section_hook, (abfd, newsect)))
    return ((void*)0);

  section_id++;
  abfd->section_count++;
  bfd_section_list_append (abfd, newsect);
  return newsect;
}
