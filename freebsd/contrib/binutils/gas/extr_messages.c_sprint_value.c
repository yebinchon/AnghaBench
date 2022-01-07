
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ valueT ;
typedef int val ;
typedef int bfd_vma ;


 int abort () ;
 int sprintf (char*,char*,long) ;
 int sprintf_vma (char*,scalar_t__) ;

void
sprint_value (char *buf, valueT val)
{
  if (sizeof (val) <= sizeof (long))
    {
      sprintf (buf, "%ld", (long) val);
      return;
    }
  if (sizeof (val) <= sizeof (bfd_vma))
    {
      sprintf_vma (buf, val);
      return;
    }
  abort ();
}
