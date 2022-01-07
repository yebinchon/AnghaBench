
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objfile {int obfd; } ;
typedef int bfd_byte ;
typedef int CORE_ADDR ;


 int DIE_ID ;
 int DIE_NAME ;
 int bfd_get_16 (int ,int *) ;
 int bfd_get_32 (int ,int *) ;
 int bfd_get_64 (int ,int *) ;
 int bfd_get_8 (int ,int *) ;
 int complaint (int *,char*,int ,int ,int) ;
 int symfile_complaints ;

__attribute__((used)) static CORE_ADDR
target_to_host (char *from, int nbytes, int signextend,
  struct objfile *objfile)
{
  CORE_ADDR rtnval;

  switch (nbytes)
    {
    case 8:
      rtnval = bfd_get_64 (objfile->obfd, (bfd_byte *) from);
      break;
    case 4:
      rtnval = bfd_get_32 (objfile->obfd, (bfd_byte *) from);
      break;
    case 2:
      rtnval = bfd_get_16 (objfile->obfd, (bfd_byte *) from);
      break;
    case 1:
      rtnval = bfd_get_8 (objfile->obfd, (bfd_byte *) from);
      break;
    default:
      complaint (&symfile_complaints,
   "DIE @ 0x%x \"%s\", no bfd support for %d byte data object",
   DIE_ID, DIE_NAME, nbytes);
      rtnval = 0;
      break;
    }
  return (rtnval);
}
