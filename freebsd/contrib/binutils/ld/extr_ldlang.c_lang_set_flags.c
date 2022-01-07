
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; int not_flags; } ;
typedef TYPE_1__ lang_memory_region_type ;
typedef int flagword ;


 int SEC_ALLOC ;
 int SEC_CODE ;
 int SEC_DATA ;
 int SEC_LOAD ;
 int SEC_READONLY ;
 int _ (char*) ;
 int einfo (int ) ;

void
lang_set_flags (lang_memory_region_type *ptr, const char *flags, int invert)
{
  flagword *ptr_flags;

  ptr_flags = invert ? &ptr->not_flags : &ptr->flags;
  while (*flags)
    {
      switch (*flags)
 {
 case 'A': case 'a':
   *ptr_flags |= SEC_ALLOC;
   break;

 case 'R': case 'r':
   *ptr_flags |= SEC_READONLY;
   break;

 case 'W': case 'w':
   *ptr_flags |= SEC_DATA;
   break;

 case 'X': case 'x':
   *ptr_flags |= SEC_CODE;
   break;

 case 'L': case 'l':
 case 'I': case 'i':
   *ptr_flags |= SEC_LOAD;
   break;

 default:
   einfo (_("%P%F: invalid syntax in flags\n"));
   break;
 }
      flags++;
    }
}
