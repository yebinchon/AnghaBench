
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int flagword ;
typedef int bfd_boolean ;
typedef int bfd ;


 int APCS_26_FLAG (int *) ;
 int APCS_FLOAT_FLAG (int *) ;
 scalar_t__ APCS_SET (int *) ;
 int BFD_ASSERT (int ) ;
 int FALSE ;
 int F_APCS26 ;
 int F_APCS_26 ;
 int F_APCS_FLOAT ;
 int F_INTERWORK ;
 int F_PIC ;
 int INTERWORK_FLAG (int *) ;
 scalar_t__ INTERWORK_SET (int *) ;
 int PIC_FLAG (int *) ;
 int SET_APCS_FLAGS (int *,int) ;
 int SET_INTERWORK_FLAG (int *,int) ;
 int TRUE ;
 int _ (char*) ;
 int _bfd_error_handler (int ,int *) ;

__attribute__((used)) static bfd_boolean
_bfd_coff_arm_set_private_flags (bfd * abfd, flagword flags)
{
  flagword flag;

  BFD_ASSERT (abfd != ((void*)0));

  flag = (flags & F_APCS26) ? F_APCS_26 : 0;



  if (APCS_SET (abfd)
      && ( (APCS_26_FLAG (abfd) != flag)
   || (APCS_FLOAT_FLAG (abfd) != (flags & F_APCS_FLOAT))
   || (PIC_FLAG (abfd) != (flags & F_PIC))
   ))
    return FALSE;

  flag |= (flags & (F_APCS_FLOAT | F_PIC));

  SET_APCS_FLAGS (abfd, flag);

  flag = (flags & F_INTERWORK);





  if (INTERWORK_SET (abfd) && (INTERWORK_FLAG (abfd) != flag))
    {
      if (flag)

 _bfd_error_handler (_("Warning: Not setting interworking flag of %B since it has already been specified as non-interworking"),
       abfd);
      else

 _bfd_error_handler (_("Warning: Clearing the interworking flag of %B due to outside request"),
       abfd);
      flag = 0;
    }

  SET_INTERWORK_FLAG (abfd, flag);

  return TRUE;
}
