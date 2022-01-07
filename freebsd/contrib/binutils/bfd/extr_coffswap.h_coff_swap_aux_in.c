
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_43__ TYPE_9__ ;
typedef struct TYPE_42__ TYPE_8__ ;
typedef struct TYPE_41__ TYPE_7__ ;
typedef struct TYPE_40__ TYPE_6__ ;
typedef struct TYPE_39__ TYPE_5__ ;
typedef struct TYPE_38__ TYPE_4__ ;
typedef struct TYPE_37__ TYPE_3__ ;
typedef struct TYPE_36__ TYPE_2__ ;
typedef struct TYPE_35__ TYPE_1__ ;
typedef struct TYPE_34__ TYPE_18__ ;
typedef struct TYPE_33__ TYPE_17__ ;
typedef struct TYPE_32__ TYPE_16__ ;
typedef struct TYPE_31__ TYPE_15__ ;
typedef struct TYPE_30__ TYPE_14__ ;
typedef struct TYPE_29__ TYPE_13__ ;
typedef struct TYPE_28__ TYPE_12__ ;
typedef struct TYPE_27__ TYPE_11__ ;
typedef struct TYPE_26__ TYPE_10__ ;


struct TYPE_31__ {int x_size; int x_lnno; } ;
struct TYPE_32__ {TYPE_15__ x_lnsz; void* x_fsize; } ;
struct TYPE_43__ {void** x_dimen; } ;
struct TYPE_41__ {int l; } ;
struct TYPE_42__ {TYPE_7__ x_endndx; int x_lnnoptr; } ;
struct TYPE_26__ {TYPE_9__ x_ary; TYPE_8__ x_fcn; } ;
struct TYPE_40__ {void* l; } ;
struct TYPE_33__ {TYPE_16__ x_misc; TYPE_10__ x_fcnary; void* x_tvndx; TYPE_6__ x_tagndx; } ;
struct TYPE_39__ {int x_comdat; int x_associated; int x_checksum; int x_nlinno; int x_nreloc; int x_scnlen; } ;
struct TYPE_35__ {void* x_offset; int x_zeroes; } ;
struct TYPE_37__ {int x_fname; TYPE_1__ x_n; } ;
union internal_auxent {TYPE_17__ x_sym; TYPE_5__ x_scn; TYPE_3__ x_file; } ;
typedef int bfd ;
struct TYPE_36__ {int x_offset; } ;
struct TYPE_38__ {int * x_fname; TYPE_2__ x_n; } ;
struct TYPE_29__ {int x_fsize; } ;
struct TYPE_27__ {int * x_dimen; } ;
struct TYPE_28__ {TYPE_11__ x_ary; } ;
struct TYPE_30__ {TYPE_13__ x_misc; TYPE_12__ x_fcnary; int x_tvndx; int x_tagndx; } ;
struct TYPE_34__ {TYPE_14__ x_sym; TYPE_4__ x_file; } ;
typedef TYPE_18__ AUXENT ;


 int COFF_ADJUST_AUX_IN_POST (int *,void*,int,int,int,int,void*) ;
 int COFF_ADJUST_AUX_IN_PRE (int *,void*,int,int,int,int,void*) ;
 int C_BLOCK ;
 int C_FCN ;




 int FILNMLEN ;
 int GET_FCN_ENDNDX (int *,TYPE_18__*) ;
 int GET_FCN_LNNOPTR (int *,TYPE_18__*) ;
 int GET_LNSZ_LNNO (int *,TYPE_18__*) ;
 int GET_LNSZ_SIZE (int *,TYPE_18__*) ;
 int GET_SCN_NLINNO (int *,TYPE_18__*) ;
 int GET_SCN_NRELOC (int *,TYPE_18__*) ;
 int GET_SCN_SCNLEN (int *,TYPE_18__*) ;
 void* H_GET_16 (int *,int ) ;
 void* H_GET_32 (int *,int ) ;
 scalar_t__ ISFCN (int) ;
 scalar_t__ ISTAG (int) ;
 int T_NULL ;
 int memcpy (int ,int *,int) ;

__attribute__((used)) static void
coff_swap_aux_in (bfd *abfd,
    void * ext1,
    int type,
    int class,
    int indx,
    int numaux,
    void * in1)
{
  AUXENT *ext = (AUXENT *) ext1;
  union internal_auxent *in = (union internal_auxent *) in1;





  switch (class)
    {
    case 131:
      if (ext->x_file.x_fname[0] == 0)
 {
   in->x_file.x_n.x_zeroes = 0;
   in->x_file.x_n.x_offset = H_GET_32 (abfd, ext->x_file.x_n.x_offset);
 }
      else
 {



   if (numaux > 1)
     {
       if (indx == 0)
  memcpy (in->x_file.x_fname, ext->x_file.x_fname,
   numaux * sizeof (AUXENT));
     }
   else
     memcpy (in->x_file.x_fname, ext->x_file.x_fname, FILNMLEN);

 }
      goto end;

    case 128:

    case 129:

    case 130:
      if (type == T_NULL)
 {
   in->x_scn.x_scnlen = GET_SCN_SCNLEN (abfd, ext);
   in->x_scn.x_nreloc = GET_SCN_NRELOC (abfd, ext);
   in->x_scn.x_nlinno = GET_SCN_NLINNO (abfd, ext);



   in->x_scn.x_checksum = 0;
   in->x_scn.x_associated = 0;
   in->x_scn.x_comdat = 0;

   goto end;
 }
      break;
    }

  in->x_sym.x_tagndx.l = H_GET_32 (abfd, ext->x_sym.x_tagndx);

  in->x_sym.x_tvndx = H_GET_16 (abfd, ext->x_sym.x_tvndx);


  if (class == C_BLOCK || class == C_FCN || ISFCN (type) || ISTAG (class))
    {
      in->x_sym.x_fcnary.x_fcn.x_lnnoptr = GET_FCN_LNNOPTR (abfd, ext);
      in->x_sym.x_fcnary.x_fcn.x_endndx.l = GET_FCN_ENDNDX (abfd, ext);
    }
  else
    {



      in->x_sym.x_fcnary.x_ary.x_dimen[0] =
 H_GET_16 (abfd, ext->x_sym.x_fcnary.x_ary.x_dimen[0]);
      in->x_sym.x_fcnary.x_ary.x_dimen[1] =
 H_GET_16 (abfd, ext->x_sym.x_fcnary.x_ary.x_dimen[1]);
      in->x_sym.x_fcnary.x_ary.x_dimen[2] =
 H_GET_16 (abfd, ext->x_sym.x_fcnary.x_ary.x_dimen[2]);
      in->x_sym.x_fcnary.x_ary.x_dimen[3] =
 H_GET_16 (abfd, ext->x_sym.x_fcnary.x_ary.x_dimen[3]);
    }

  if (ISFCN (type))
    in->x_sym.x_misc.x_fsize = H_GET_32 (abfd, ext->x_sym.x_misc.x_fsize);
  else
    {
      in->x_sym.x_misc.x_lnsz.x_lnno = GET_LNSZ_LNNO (abfd, ext);
      in->x_sym.x_misc.x_lnsz.x_size = GET_LNSZ_SIZE (abfd, ext);
    }

 end: ;




}
