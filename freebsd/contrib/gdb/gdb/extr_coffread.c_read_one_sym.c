
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union internal_auxent {int dummy; } internal_auxent ;
struct internal_syment {int n_numaux; int n_sclass; scalar_t__ n_type; int n_scnum; int n_value; } ;
struct coff_symbol {int c_symnum; int c_naux; char* c_name; int c_sclass; unsigned int c_type; int c_value; int c_secnum; } ;
 int SDB_TYPE (unsigned int) ;
 int bfd_bread (int ,int ,int ) ;
 int bfd_coff_swap_aux_in (int ,int ,scalar_t__,int,int ,int,char*) ;
 int bfd_coff_swap_sym_in (int ,int ,char*) ;
 int cs_section_address (struct coff_symbol*,int ) ;
 char* getsymname (struct internal_syment*) ;
 int local_auxesz ;
 int local_symesz ;
 int nlist_bfd_global ;
 scalar_t__ pe_file ;
 int printf (char*,char*,int) ;
 int symfile_bfd ;
 int symnum ;
 int temp_aux ;
 int temp_sym ;

__attribute__((used)) static void
read_one_sym (struct coff_symbol *cs,
       struct internal_syment *sym,
       union internal_auxent *aux)
{
  int i;

  cs->c_symnum = symnum;
  bfd_bread (temp_sym, local_symesz, nlist_bfd_global);
  bfd_coff_swap_sym_in (symfile_bfd, temp_sym, (char *) sym);
  cs->c_naux = sym->n_numaux & 0xff;
  if (cs->c_naux >= 1)
    {
      bfd_bread (temp_aux, local_auxesz, nlist_bfd_global);
      bfd_coff_swap_aux_in (symfile_bfd, temp_aux, sym->n_type, sym->n_sclass,
       0, cs->c_naux, (char *) aux);


      for (i = 1; i < cs->c_naux; i++)
 bfd_bread (temp_aux, local_auxesz, nlist_bfd_global);
    }
  cs->c_name = getsymname (sym);
  cs->c_value = sym->n_value;
  cs->c_sclass = (sym->n_sclass & 0xff);
  cs->c_secnum = sym->n_scnum;
  cs->c_type = (unsigned) sym->n_type;
  if (!SDB_TYPE (cs->c_type))
    cs->c_type = 0;






  symnum += 1 + cs->c_naux;






  if (pe_file)
    {
      switch (cs->c_sclass)
 {
 case 138:
 case 132:
 case 131:
 case 134:
 case 135:
 case 133:
 case 129:
 case 128:
 case 136:
 case 130:
 case 140:
 case 137:
 case 139:
   if (cs->c_secnum != 0)
     cs->c_value += cs_section_address (cs, symfile_bfd);
   break;
 }
    }
}
