
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct hdr_ext {int h_cbExtOffset; int h_iextMax; int h_cbRfdOffset; int h_crfd; int h_cbFdOffset; int h_ifdMax; int h_cbSsExtOffset; int h_issExtMax; int h_cbSsOffset; int h_issMax; int h_cbAuxOffset; int h_iauxMax; int h_cbOptOffset; int h_ioptMax; int h_cbSymOffset; int h_isymMax; int h_cbPdOffset; int h_ipdMax; int h_cbDnOffset; int h_idnMax; int h_cbLineOffset; int h_cbLine; int h_ilineMax; int h_vstamp; int h_magic; } ;
typedef int bfd ;
struct TYPE_3__ {void* cbExtOffset; void* iextMax; void* cbRfdOffset; void* crfd; void* cbFdOffset; void* ifdMax; void* cbSsExtOffset; void* issExtMax; void* cbSsOffset; void* issMax; void* cbAuxOffset; void* iauxMax; void* cbOptOffset; void* ioptMax; void* cbSymOffset; void* isymMax; void* cbPdOffset; void* ipdMax; void* cbDnOffset; void* idnMax; void* cbLineOffset; void* cbLine; void* ilineMax; void* vstamp; void* magic; } ;
typedef TYPE_1__ HDRR ;


 void* ECOFF_GET_OFF (int *,int ) ;
 void* H_GET_32 (int *,int ) ;
 void* H_GET_S16 (int *,int ) ;
 int abort () ;
 scalar_t__ memcmp (char*,char*,int) ;

__attribute__((used)) static void
ecoff_swap_hdr_in (bfd *abfd, void * ext_copy, HDRR *intern)
{
  struct hdr_ext ext[1];

  *ext = *(struct hdr_ext *) ext_copy;

  intern->magic = H_GET_S16 (abfd, ext->h_magic);
  intern->vstamp = H_GET_S16 (abfd, ext->h_vstamp);
  intern->ilineMax = H_GET_32 (abfd, ext->h_ilineMax);
  intern->cbLine = ECOFF_GET_OFF (abfd, ext->h_cbLine);
  intern->cbLineOffset = ECOFF_GET_OFF (abfd, ext->h_cbLineOffset);
  intern->idnMax = H_GET_32 (abfd, ext->h_idnMax);
  intern->cbDnOffset = ECOFF_GET_OFF (abfd, ext->h_cbDnOffset);
  intern->ipdMax = H_GET_32 (abfd, ext->h_ipdMax);
  intern->cbPdOffset = ECOFF_GET_OFF (abfd, ext->h_cbPdOffset);
  intern->isymMax = H_GET_32 (abfd, ext->h_isymMax);
  intern->cbSymOffset = ECOFF_GET_OFF (abfd, ext->h_cbSymOffset);
  intern->ioptMax = H_GET_32 (abfd, ext->h_ioptMax);
  intern->cbOptOffset = ECOFF_GET_OFF (abfd, ext->h_cbOptOffset);
  intern->iauxMax = H_GET_32 (abfd, ext->h_iauxMax);
  intern->cbAuxOffset = ECOFF_GET_OFF (abfd, ext->h_cbAuxOffset);
  intern->issMax = H_GET_32 (abfd, ext->h_issMax);
  intern->cbSsOffset = ECOFF_GET_OFF (abfd, ext->h_cbSsOffset);
  intern->issExtMax = H_GET_32 (abfd, ext->h_issExtMax);
  intern->cbSsExtOffset = ECOFF_GET_OFF (abfd, ext->h_cbSsExtOffset);
  intern->ifdMax = H_GET_32 (abfd, ext->h_ifdMax);
  intern->cbFdOffset = ECOFF_GET_OFF (abfd, ext->h_cbFdOffset);
  intern->crfd = H_GET_32 (abfd, ext->h_crfd);
  intern->cbRfdOffset = ECOFF_GET_OFF (abfd, ext->h_cbRfdOffset);
  intern->iextMax = H_GET_32 (abfd, ext->h_iextMax);
  intern->cbExtOffset = ECOFF_GET_OFF (abfd, ext->h_cbExtOffset);





}
