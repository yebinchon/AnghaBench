
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd ;


 int bfd_map_over_sections (int *,int ,int *) ;
 int dump_section ;

__attribute__((used)) static void
dump_data (bfd *abfd)
{
  bfd_map_over_sections (abfd, dump_section, ((void*)0));
}
