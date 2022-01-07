
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int bfd_boolean ;
struct TYPE_9__ {TYPE_1__* xvec; } ;
typedef TYPE_2__ bfd ;
struct TYPE_8__ {scalar_t__ byteorder; } ;


 scalar_t__ BFD_ENDIAN_UNKNOWN ;
 int FALSE ;
 int TRUE ;
 char* _ (char*) ;
 int _bfd_error_handler (char const*,TYPE_2__*) ;
 scalar_t__ bfd_big_endian (TYPE_2__*) ;
 int bfd_error_wrong_format ;
 int bfd_set_error (int ) ;
 int stub1 (char const*,TYPE_2__*) ;

bfd_boolean
_bfd_generic_verify_endian_match (bfd *ibfd, bfd *obfd)
{
  if (ibfd->xvec->byteorder != obfd->xvec->byteorder
      && ibfd->xvec->byteorder != BFD_ENDIAN_UNKNOWN
      && obfd->xvec->byteorder != BFD_ENDIAN_UNKNOWN)
    {
      const char *msg;

      if (bfd_big_endian (ibfd))
 msg = _("%B: compiled for a big endian system and target is little endian");
      else
 msg = _("%B: compiled for a little endian system and target is big endian");

      (*_bfd_error_handler) (msg, ibfd);

      bfd_set_error (bfd_error_wrong_format);
      return FALSE;
    }

  return TRUE;
}
