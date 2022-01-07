
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_vma ;
typedef int bfd_boolean ;
typedef int bfd ;
typedef int asymbol ;


 int FALSE ;
 int TRUE ;
 int _bfd_get_gp_value (int *) ;
 int _bfd_set_gp_value (int *,int) ;
 char* bfd_asymbol_name (int *) ;
 int bfd_asymbol_value (int *) ;
 int ** bfd_get_outsymbols (int *) ;
 unsigned int bfd_get_symcount (int *) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static bfd_boolean
score_elf_assign_gp (bfd *output_bfd, bfd_vma *pgp)
{
  unsigned int count;
  asymbol **sym;
  unsigned int i;


  *pgp = _bfd_get_gp_value (output_bfd);
  if (*pgp)
    return TRUE;

  count = bfd_get_symcount (output_bfd);
  sym = bfd_get_outsymbols (output_bfd);



  if (sym == ((void*)0))
    i = count;
  else
    {
      for (i = 0; i < count; i++, sym++)
 {
   const char *name;

   name = bfd_asymbol_name (*sym);
   if (*name == '_' && strcmp (name, "_gp") == 0)
     {
       *pgp = bfd_asymbol_value (*sym);
       _bfd_set_gp_value (output_bfd, *pgp);
       break;
     }
 }
    }

  if (i >= count)
    {

      *pgp = 4;
      _bfd_set_gp_value (output_bfd, *pgp);
      return FALSE;
    }

  return TRUE;
}
