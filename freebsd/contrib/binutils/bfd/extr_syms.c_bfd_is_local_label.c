
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_3__ {int flags; int * name; } ;
typedef TYPE_1__ asymbol ;


 int BSF_FILE ;
 int BSF_GLOBAL ;
 int BSF_SECTION_SYM ;
 int BSF_WEAK ;
 int FALSE ;
 int bfd_is_local_label_name (int *,int *) ;

bfd_boolean
bfd_is_local_label (bfd *abfd, asymbol *sym)
{



  if ((sym->flags & (BSF_GLOBAL | BSF_WEAK | BSF_FILE | BSF_SECTION_SYM)) != 0)
    return FALSE;
  if (sym->name == ((void*)0))
    return FALSE;
  return bfd_is_local_label_name (abfd, sym->name);
}
