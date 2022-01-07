
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_size_type ;
typedef int asymbol ;


 int ecoff_set_sym_index (int *,int ) ;

__attribute__((used)) static void
ecoff_set_index (asymbol *sym, bfd_size_type indx)
{
  ecoff_set_sym_index (sym, indx);
}
