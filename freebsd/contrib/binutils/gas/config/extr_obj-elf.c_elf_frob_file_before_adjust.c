
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int symbolS ;
struct TYPE_2__ {scalar_t__ versioned_name; } ;


 char ELF_VER_CHR ;
 int S_IS_DEFINED (int *) ;
 scalar_t__ S_IS_WEAK (int *) ;
 int know (int ) ;
 int memmove (char*,char*,size_t) ;
 char* strchr (scalar_t__,char) ;
 int strlen (char*) ;
 TYPE_1__* symbol_get_obj (int *) ;
 int symbol_lastP ;
 int * symbol_next (int *) ;
 int symbol_remove (int *,int **,int *) ;
 int * symbol_rootP ;
 scalar_t__ symbol_used_in_reloc_p (int *) ;
 scalar_t__ symbol_used_p (int *) ;

void
elf_frob_file_before_adjust (void)
{
  if (symbol_rootP)
    {
      symbolS *symp;

      for (symp = symbol_rootP; symp; symp = symbol_next (symp))
 if (!S_IS_DEFINED (symp))
   {
     if (symbol_get_obj (symp)->versioned_name)
       {
  char *p;





  p = strchr (symbol_get_obj (symp)->versioned_name,
       ELF_VER_CHR);
  know (p != ((void*)0));
  if (p[1] == ELF_VER_CHR && p[2] == ELF_VER_CHR)
    {
      size_t l = strlen (&p[3]) + 1;
      memmove (&p[1], &p[3], l);
    }
  if (symbol_used_p (symp) == 0
      && symbol_used_in_reloc_p (symp) == 0)
    symbol_remove (symp, &symbol_rootP, &symbol_lastP);
       }




     else if (S_IS_WEAK (symp)
       && symbol_used_p (symp) == 0
       && symbol_used_in_reloc_p (symp) == 0)
       symbol_remove (symp, &symbol_rootP, &symbol_lastP);
   }
    }
}
