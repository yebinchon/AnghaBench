
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd ;
typedef int asection ;


 int PF_R ;
 int PF_W ;
 int PF_X ;
 int PT_LOAD ;
 int PT_NOTE ;
 int SEC_CODE ;
 int SEC_READONLY ;
 int bfd_get_section_flags (int *,int *) ;
 int bfd_record_phdr (int *,int,int,int,int ,int ,int ,int ,int,int **) ;
 int bfd_section_name (int *,int *) ;
 scalar_t__ strncmp (int ,char*,int) ;

__attribute__((used)) static void
make_output_phdrs (bfd *obfd, asection *osec, void *ignored)
{
  int p_flags = 0;
  int p_type;


  if (strncmp (bfd_section_name (obfd, osec), "load", 4) == 0)
    p_type = PT_LOAD;
  else
    p_type = PT_NOTE;

  p_flags |= PF_R;
  if (!(bfd_get_section_flags (obfd, osec) & SEC_READONLY))
    p_flags |= PF_W;
  if (bfd_get_section_flags (obfd, osec) & SEC_CODE)
    p_flags |= PF_X;

  bfd_record_phdr (obfd, p_type, 1, p_flags, 0, 0, 0, 0, 1, &osec);
}
