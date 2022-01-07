
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef int bfd_boolean ;
struct TYPE_21__ {TYPE_1__* xvec; } ;
typedef TYPE_2__ bfd ;
struct TYPE_20__ {scalar_t__ flavour; } ;


 int APCS_26_FLAG (TYPE_2__*) ;
 int APCS_FLOAT_FLAG (TYPE_2__*) ;
 scalar_t__ APCS_SET (TYPE_2__*) ;
 int BFD_ASSERT (int) ;
 int FALSE ;
 scalar_t__ INTERWORK_FLAG (TYPE_2__*) ;
 scalar_t__ INTERWORK_SET (TYPE_2__*) ;
 int PIC_FLAG (TYPE_2__*) ;
 int SET_APCS_FLAGS (TYPE_2__*,int) ;
 int SET_INTERWORK_FLAG (TYPE_2__*,scalar_t__) ;
 int TRUE ;
 char* _ (char*) ;
 int _bfd_error_handler (char const*,TYPE_2__*,TYPE_2__*,...) ;
 int bfd_arm_merge_machines (TYPE_2__*,TYPE_2__*) ;
 int bfd_error_wrong_format ;
 int bfd_get_arch (TYPE_2__*) ;
 int bfd_get_mach (TYPE_2__*) ;
 int bfd_set_arch_mach (TYPE_2__*,int ,int ) ;
 int bfd_set_error (int ) ;
 scalar_t__ bfd_target_coff_flavour ;

__attribute__((used)) static bfd_boolean
coff_arm_merge_private_bfd_data (bfd * ibfd, bfd * obfd)
{
  BFD_ASSERT (ibfd != ((void*)0) && obfd != ((void*)0));

  if (ibfd == obfd)
    return TRUE;




  if ( ibfd->xvec->flavour != bfd_target_coff_flavour
      || obfd->xvec->flavour != bfd_target_coff_flavour)
    return TRUE;



  if (! bfd_arm_merge_machines (ibfd, obfd))
    return FALSE;


  if (APCS_SET (ibfd))
    {
      if (APCS_SET (obfd))
 {

   if (APCS_26_FLAG (obfd) != APCS_26_FLAG (ibfd))
     {
       _bfd_error_handler

  (_("ERROR: %B is compiled for APCS-%d, whereas %B is compiled for APCS-%d"),
   ibfd, obfd,
   APCS_26_FLAG (ibfd) ? 26 : 32,
   APCS_26_FLAG (obfd) ? 26 : 32
   );

       bfd_set_error (bfd_error_wrong_format);
       return FALSE;
     }

   if (APCS_FLOAT_FLAG (obfd) != APCS_FLOAT_FLAG (ibfd))
     {
       const char *msg;

       if (APCS_FLOAT_FLAG (ibfd))

  msg = _("ERROR: %B passes floats in float registers, whereas %B passes them in integer registers");
       else

  msg = _("ERROR: %B passes floats in integer registers, whereas %B passes them in float registers");

       _bfd_error_handler (msg, ibfd, obfd);

       bfd_set_error (bfd_error_wrong_format);
       return FALSE;
     }

   if (PIC_FLAG (obfd) != PIC_FLAG (ibfd))
     {
       const char * msg;

       if (PIC_FLAG (ibfd))

  msg = _("ERROR: %B is compiled as position independent code, whereas target %B is absolute position");
       else

  msg = _("ERROR: %B is compiled as absolute position code, whereas target %B is position independent");
       _bfd_error_handler (msg, ibfd, obfd);

       bfd_set_error (bfd_error_wrong_format);
       return FALSE;
     }
 }
      else
 {
   SET_APCS_FLAGS (obfd, APCS_26_FLAG (ibfd) | APCS_FLOAT_FLAG (ibfd) | PIC_FLAG (ibfd));


   bfd_set_arch_mach (obfd, bfd_get_arch (ibfd), bfd_get_mach (ibfd));
 }
    }


  if (INTERWORK_SET (ibfd))
    {
      if (INTERWORK_SET (obfd))
 {

   if (INTERWORK_FLAG (obfd) != INTERWORK_FLAG (ibfd))
     {
       const char * msg;

       if (INTERWORK_FLAG (ibfd))

  msg = _("Warning: %B supports interworking, whereas %B does not");
       else

  msg = _("Warning: %B does not support interworking, whereas %B does");

       _bfd_error_handler (msg, ibfd, obfd);
     }
 }
      else
 {
   SET_INTERWORK_FLAG (obfd, INTERWORK_FLAG (ibfd));
 }
    }

  return TRUE;
}
