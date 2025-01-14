
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_1__ ;


typedef int bfd_boolean ;
struct TYPE_14__ {scalar_t__ xvec; } ;
typedef TYPE_1__ bfd ;


 int APCS_26_FLAG (TYPE_1__*) ;
 int APCS_FLOAT_FLAG (TYPE_1__*) ;
 scalar_t__ APCS_SET (TYPE_1__*) ;
 int BFD_ASSERT (int) ;
 int FALSE ;
 scalar_t__ INTERWORK_FLAG (TYPE_1__*) ;
 scalar_t__ INTERWORK_SET (TYPE_1__*) ;
 int PIC_FLAG (TYPE_1__*) ;
 int SET_APCS_FLAGS (TYPE_1__*,int) ;
 int SET_INTERWORK_FLAG (TYPE_1__*,scalar_t__) ;
 int TRUE ;
 int _bfd_error_handler (char*,TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static bfd_boolean
coff_arm_copy_private_bfd_data (bfd * src, bfd * dest)
{
  BFD_ASSERT (src != ((void*)0) && dest != ((void*)0));

  if (src == dest)
    return TRUE;



  if (src->xvec != dest->xvec)
    return TRUE;


  if (APCS_SET (src))
    {
      if (APCS_SET (dest))
 {

   if (APCS_26_FLAG (dest) != APCS_26_FLAG (src))
     return FALSE;

   if (APCS_FLOAT_FLAG (dest) != APCS_FLOAT_FLAG (src))
     return FALSE;

   if (PIC_FLAG (dest) != PIC_FLAG (src))
     return FALSE;
 }
      else
 SET_APCS_FLAGS (dest, APCS_26_FLAG (src) | APCS_FLOAT_FLAG (src)
   | PIC_FLAG (src));
    }

  if (INTERWORK_SET (src))
    {
      if (INTERWORK_SET (dest))
 {


   if (INTERWORK_FLAG (dest) != INTERWORK_FLAG (src))
     {
       if (INTERWORK_FLAG (dest))
  {

    _bfd_error_handler (("Warning: Clearing the interworking flag of %B because non-interworking code in %B has been linked with it"),

          dest, src);
  }

       SET_INTERWORK_FLAG (dest, 0);
     }
 }
      else
 {
   SET_INTERWORK_FLAG (dest, INTERWORK_FLAG (src));
 }
    }

  return TRUE;
}
