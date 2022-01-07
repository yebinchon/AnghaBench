
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {void* _n_offset; scalar_t__ _n_zeroes; } ;
struct TYPE_8__ {int _n_name; TYPE_1__ _n_n; } ;
struct internal_syment {void* n_numaux; void* n_sclass; void* n_type; void* n_scnum; void* n_value; TYPE_3__ _n; } ;
typedef int bfd ;
struct TYPE_7__ {int e_offset; } ;
struct TYPE_9__ {scalar_t__* e_name; TYPE_2__ e; } ;
struct TYPE_10__ {int e_numaux; int e_sclass; int e_type; int e_scnum; int e_value; TYPE_4__ e; } ;
typedef TYPE_5__ SYMENT ;


 int COFF_ADJUST_SYM_IN_POST (int *,void*,void*) ;
 void* H_GET_16 (int *,int ) ;
 void* H_GET_32 (int *,int ) ;
 void* H_GET_8 (int *,int ) ;
 int SYMNMLEN ;
 int memcpy (int ,scalar_t__*,int ) ;

__attribute__((used)) static void
coff_swap_sym_in (bfd * abfd, void * ext1, void * in1)
{
  SYMENT *ext = (SYMENT *) ext1;
  struct internal_syment *in = (struct internal_syment *) in1;

  if (ext->e.e_name[0] == 0)
    {
      in->_n._n_n._n_zeroes = 0;
      in->_n._n_n._n_offset = H_GET_32 (abfd, ext->e.e.e_offset);
    }
  else
    {



      memcpy (in->_n._n_name, ext->e.e_name, SYMNMLEN);

    }

  in->n_value = H_GET_32 (abfd, ext->e_value);
  in->n_scnum = H_GET_16 (abfd, ext->e_scnum);
  if (sizeof (ext->e_type) == 2)
    in->n_type = H_GET_16 (abfd, ext->e_type);
  else
    in->n_type = H_GET_32 (abfd, ext->e_type);
  in->n_sclass = H_GET_8 (abfd, ext->e_sclass);
  in->n_numaux = H_GET_8 (abfd, ext->e_numaux);



}
