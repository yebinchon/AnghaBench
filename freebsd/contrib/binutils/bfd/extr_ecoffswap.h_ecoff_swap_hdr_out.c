
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct hdr_ext {int h_cbExtOffset; int h_iextMax; int h_cbRfdOffset; int h_crfd; int h_cbFdOffset; int h_ifdMax; int h_cbSsExtOffset; int h_issExtMax; int h_cbSsOffset; int h_issMax; int h_cbAuxOffset; int h_iauxMax; int h_cbOptOffset; int h_ioptMax; int h_cbSymOffset; int h_isymMax; int h_cbPdOffset; int h_ipdMax; int h_cbDnOffset; int h_idnMax; int h_cbLineOffset; int h_cbLine; int h_ilineMax; int h_vstamp; int h_magic; } ;
typedef int bfd ;
struct TYPE_3__ {int cbExtOffset; int iextMax; int cbRfdOffset; int crfd; int cbFdOffset; int ifdMax; int cbSsExtOffset; int issExtMax; int cbSsOffset; int issMax; int cbAuxOffset; int iauxMax; int cbOptOffset; int ioptMax; int cbSymOffset; int isymMax; int cbPdOffset; int ipdMax; int cbDnOffset; int idnMax; int cbLineOffset; int cbLine; int ilineMax; int vstamp; int magic; } ;
typedef TYPE_1__ HDRR ;


 int ECOFF_PUT_OFF (int *,int ,int ) ;
 int H_PUT_32 (int *,int ,int ) ;
 int H_PUT_S16 (int *,int ,int ) ;
 int abort () ;
 scalar_t__ memcmp (char*,char*,int) ;

__attribute__((used)) static void
ecoff_swap_hdr_out (bfd *abfd, const HDRR *intern_copy, void * ext_ptr)
{
  struct hdr_ext *ext = (struct hdr_ext *) ext_ptr;
  HDRR intern[1];

  *intern = *intern_copy;

  H_PUT_S16 (abfd, intern->magic, ext->h_magic);
  H_PUT_S16 (abfd, intern->vstamp, ext->h_vstamp);
  H_PUT_32 (abfd, intern->ilineMax, ext->h_ilineMax);
  ECOFF_PUT_OFF (abfd, intern->cbLine, ext->h_cbLine);
  ECOFF_PUT_OFF (abfd, intern->cbLineOffset, ext->h_cbLineOffset);
  H_PUT_32 (abfd, intern->idnMax, ext->h_idnMax);
  ECOFF_PUT_OFF (abfd, intern->cbDnOffset, ext->h_cbDnOffset);
  H_PUT_32 (abfd, intern->ipdMax, ext->h_ipdMax);
  ECOFF_PUT_OFF (abfd, intern->cbPdOffset, ext->h_cbPdOffset);
  H_PUT_32 (abfd, intern->isymMax, ext->h_isymMax);
  ECOFF_PUT_OFF (abfd, intern->cbSymOffset, ext->h_cbSymOffset);
  H_PUT_32 (abfd, intern->ioptMax, ext->h_ioptMax);
  ECOFF_PUT_OFF (abfd, intern->cbOptOffset, ext->h_cbOptOffset);
  H_PUT_32 (abfd, intern->iauxMax, ext->h_iauxMax);
  ECOFF_PUT_OFF (abfd, intern->cbAuxOffset, ext->h_cbAuxOffset);
  H_PUT_32 (abfd, intern->issMax, ext->h_issMax);
  ECOFF_PUT_OFF (abfd, intern->cbSsOffset, ext->h_cbSsOffset);
  H_PUT_32 (abfd, intern->issExtMax, ext->h_issExtMax);
  ECOFF_PUT_OFF (abfd, intern->cbSsExtOffset, ext->h_cbSsExtOffset);
  H_PUT_32 (abfd, intern->ifdMax, ext->h_ifdMax);
  ECOFF_PUT_OFF (abfd, intern->cbFdOffset, ext->h_cbFdOffset);
  H_PUT_32 (abfd, intern->crfd, ext->h_crfd);
  ECOFF_PUT_OFF (abfd, intern->cbRfdOffset, ext->h_cbRfdOffset);
  H_PUT_32 (abfd, intern->iextMax, ext->h_iextMax);
  ECOFF_PUT_OFF (abfd, intern->cbExtOffset, ext->h_cbExtOffset);





}
