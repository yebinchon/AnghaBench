
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ _n_zeroes; scalar_t__ _n_offset; } ;
struct TYPE_4__ {TYPE_1__ _n_n; int _n_name; } ;
struct internal_syment {TYPE_2__ _n; } ;
typedef int bfd ;


 int BFD_ASSERT (int) ;
 scalar_t__ STRING_SIZE_SIZE ;
 size_t SYMNMLEN ;
 char* _bfd_coff_read_string_table (int *) ;
 int memcpy (char*,int ,size_t) ;
 char* obj_coff_strings (int *) ;

const char *
_bfd_coff_internal_syment_name (bfd *abfd,
    const struct internal_syment *sym,
    char *buf)
{


  if (sym->_n._n_n._n_zeroes != 0
      || sym->_n._n_n._n_offset == 0)
    {
      memcpy (buf, sym->_n._n_name, SYMNMLEN);
      buf[SYMNMLEN] = '\0';
      return buf;
    }
  else
    {
      const char *strings;

      BFD_ASSERT (sym->_n._n_n._n_offset >= STRING_SIZE_SIZE);
      strings = obj_coff_strings (abfd);
      if (strings == ((void*)0))
 {
   strings = _bfd_coff_read_string_table (abfd);
   if (strings == ((void*)0))
     return ((void*)0);
 }
      return strings + sym->_n._n_n._n_offset;
    }
}
