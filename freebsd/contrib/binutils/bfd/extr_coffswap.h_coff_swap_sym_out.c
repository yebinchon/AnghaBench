
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int _n_offset; } ;
struct TYPE_9__ {scalar_t__* _n_name; TYPE_1__ _n_n; } ;
struct internal_syment {int n_numaux; int n_sclass; int n_type; int n_scnum; int n_value; TYPE_4__ _n; } ;
typedef int bfd ;
struct TYPE_7__ {int e_offset; int e_zeroes; } ;
struct TYPE_8__ {int e_name; TYPE_2__ e; } ;
struct TYPE_10__ {int e_numaux; int e_sclass; int e_type; int e_scnum; int e_value; TYPE_3__ e; } ;
typedef TYPE_5__ SYMENT ;


 int COFF_ADJUST_SYM_OUT_POST (int *,void*,void*) ;
 int COFF_ADJUST_SYM_OUT_PRE (int *,void*,void*) ;
 int H_PUT_16 (int *,int ,int ) ;
 int H_PUT_32 (int *,int ,int ) ;
 int H_PUT_8 (int *,int ,int ) ;
 unsigned int SYMESZ ;
 int SYMNMLEN ;
 int memcpy (int ,scalar_t__*,int ) ;

__attribute__((used)) static unsigned int
coff_swap_sym_out (bfd * abfd, void * inp, void * extp)
{
  struct internal_syment *in = (struct internal_syment *) inp;
  SYMENT *ext =(SYMENT *) extp;





  if (in->_n._n_name[0] == 0)
    {
      H_PUT_32 (abfd, 0, ext->e.e.e_zeroes);
      H_PUT_32 (abfd, in->_n._n_n._n_offset, ext->e.e.e_offset);
    }
  else
    {



      memcpy (ext->e.e_name, in->_n._n_name, SYMNMLEN);

    }

  H_PUT_32 (abfd, in->n_value, ext->e_value);
  H_PUT_16 (abfd, in->n_scnum, ext->e_scnum);

  if (sizeof (ext->e_type) == 2)
    H_PUT_16 (abfd, in->n_type, ext->e_type);
  else
    H_PUT_32 (abfd, in->n_type, ext->e_type);

  H_PUT_8 (abfd, in->n_sclass, ext->e_sclass);
  H_PUT_8 (abfd, in->n_numaux, ext->e_numaux);





  return SYMESZ;
}
