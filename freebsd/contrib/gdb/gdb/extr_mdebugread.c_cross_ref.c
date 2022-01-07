
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_11__ ;
typedef struct TYPE_13__ TYPE_10__ ;


union aux_ext {int a_ti; int a_rndx; } ;
struct type {int dummy; } ;
struct mdebug_pending {struct type* t; } ;
typedef enum type_code { ____Placeholder_type_code } type_code ;
struct TYPE_18__ {int csym; int isymBase; int issBase; int iauxBase; int fBigendian; } ;
struct TYPE_17__ {int rfd; int index; } ;
struct TYPE_16__ {scalar_t__ sc; scalar_t__ st; int iss; int index; } ;
struct TYPE_15__ {scalar_t__ tq0; int bt; } ;
struct TYPE_14__ {char* ss; union aux_ext* external_aux; scalar_t__ external_sym; TYPE_4__* fdr; } ;
struct TYPE_13__ {int external_sym_size; int (* swap_tir_in ) (int,int *,TYPE_1__*) ;int (* swap_sym_in ) (int ,char*,TYPE_2__*) ;int (* swap_rndx_in ) (int,int *,TYPE_3__*) ;} ;
typedef TYPE_1__ TIR ;
typedef TYPE_2__ SYMR ;
typedef TYPE_3__ RNDXR ;
typedef TYPE_4__ FDR ;


 unsigned int AUX_GET_ISYM (int,union aux_ext*) ;
 int SC_IS_COMMON (scalar_t__) ;
 int TYPE_FLAG_STUB ;
 int add_pending (TYPE_4__*,char*,struct type*) ;
 int bad_rfd_entry_complaint (char*,int,int) ;





 int complaint (int *,char*,...) ;
 int cur_bfd ;
 int current_objfile ;
 TYPE_11__* debug_info ;
 TYPE_10__* debug_swap ;
 TYPE_4__* get_rfd (int,unsigned int) ;
 struct type* init_type (int,int ,int ,char*,int ) ;
 struct mdebug_pending* is_pending_symbol (TYPE_4__*,char*) ;
 struct type* parse_type (int,union aux_ext*,int,int*,int,char*) ;
 scalar_t__ scInfo ;
 scalar_t__ stBlock ;
 scalar_t__ stEnum ;
 scalar_t__ stIndirect ;
 scalar_t__ stStruct ;
 scalar_t__ stTypedef ;
 scalar_t__ stUnion ;
 int stub1 (int,int *,TYPE_3__*) ;
 int stub2 (int ,char*,TYPE_2__*) ;
 int stub3 (int,int *,TYPE_1__*) ;
 int symfile_complaints ;
 scalar_t__ tqNil ;

__attribute__((used)) static int
cross_ref (int fd, union aux_ext *ax, struct type **tpp, enum type_code type_code,
    char **pname, int bigend, char *sym_name)
{
  RNDXR rn[1];
  unsigned int rf;
  int result = 1;
  FDR *fh;
  char *esh;
  SYMR sh;
  int xref_fd;
  struct mdebug_pending *pend;

  *tpp = (struct type *) ((void*)0);

  (*debug_swap->swap_rndx_in) (bigend, &ax->a_rndx, rn);


  if (rn->rfd == 0xfff)
    {
      result++;
      rf = AUX_GET_ISYM (bigend, ax + 1);
    }
  else
    {
      rf = rn->rfd;
    }




  if (rf == -1)
    {
      *pname = "<undefined>";
      *tpp = init_type (type_code, 0, TYPE_FLAG_STUB, (char *) ((void*)0), current_objfile);
      return result;
    }




  if (rn->rfd == 0xfff && rn->index == 0)
    {
      *pname = "<undefined>";
      return result;
    }


  fh = get_rfd (fd, rf);
  xref_fd = fh - debug_info->fdr;

  if (rn->index >= fh->csym)
    {

      *pname = "<illegal>";
      bad_rfd_entry_complaint (sym_name, xref_fd, rn->index);
      return result;
    }







  esh = ((char *) debug_info->external_sym
  + ((fh->isymBase + rn->index)
     * debug_swap->external_sym_size));
  (*debug_swap->swap_sym_in) (cur_bfd, esh, &sh);


  if ((sh.sc != scInfo
       || (sh.st != stBlock && sh.st != stTypedef && sh.st != stIndirect
    && sh.st != stStruct && sh.st != stUnion
    && sh.st != stEnum))
      && (sh.st != stBlock || !SC_IS_COMMON (sh.sc)))
    {

      *pname = "<illegal>";
      bad_rfd_entry_complaint (sym_name, xref_fd, rn->index);
      return result;
    }

  *pname = debug_info->ss + fh->issBase + sh.iss;

  pend = is_pending_symbol (fh, esh);
  if (pend)
    *tpp = pend->t;
  else
    {


      if ((sh.iss == 0 && sh.st == stTypedef) || sh.st == stIndirect)
 {
   TIR tir;
   (*debug_swap->swap_tir_in) (bigend,
          &(debug_info->external_aux
     + fh->iauxBase + sh.index)->a_ti,
          &tir);
   if (tir.tq0 != tqNil)
     complaint (&symfile_complaints,
         "illegal tq0 in forward typedef for %s", sym_name);
   switch (tir.bt)
     {
     case 128:
       *tpp = init_type (type_code, 0, 0, (char *) ((void*)0),
    current_objfile);
       *pname = "<undefined>";
       break;

     case 131:
     case 129:
     case 132:
       cross_ref (xref_fd,
    (debug_info->external_aux
     + fh->iauxBase + sh.index + 1),
    tpp, type_code, pname,
    fh->fBigendian, sym_name);
       break;

     case 130:







       *tpp = parse_type (xref_fd,
     debug_info->external_aux + fh->iauxBase,
     sh.index,
     (int *) ((void*)0),
     fh->fBigendian,
     debug_info->ss + fh->issBase + sh.iss);
       add_pending (fh, esh, *tpp);
       break;

     default:
       complaint (&symfile_complaints,
    "illegal bt %d in forward typedef for %s", tir.bt,
    sym_name);
       *tpp = init_type (type_code, 0, 0, (char *) ((void*)0),
    current_objfile);
       break;
     }
   return result;
 }
      else if (sh.st == stTypedef)
 {







   *tpp = parse_type (xref_fd,
        debug_info->external_aux + fh->iauxBase,
        sh.index,
        (int *) ((void*)0),
        fh->fBigendian,
        debug_info->ss + fh->issBase + sh.iss);
 }
      else
 {





   *tpp = init_type (type_code, 0, 0, (char *) ((void*)0), current_objfile);
 }
      add_pending (fh, esh, *tpp);
    }


  return result;
}
