
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int symbolS ;
struct elf_obj_sy {int * versioned_name; TYPE_4__* size; } ;
struct TYPE_7__ {int X_op; scalar_t__ X_add_number; int * X_add_symbol; int * X_op_symbol; } ;
struct TYPE_6__ {int flags; } ;
struct TYPE_5__ {scalar_t__ fr_address; } ;


 int BSF_FUNCTION ;
 int BSF_OBJECT ;
 scalar_t__ ECOFF_DEBUGGING ;
 char ELF_VER_CHR ;


 int * S_GET_NAME (int *) ;
 int S_GET_OTHER (int *) ;
 int S_GET_SEGMENT (int *) ;
 scalar_t__ S_GET_VALUE (int *) ;
 scalar_t__ S_IS_COMMON (int *) ;
 int S_IS_DEFINED (int *) ;
 scalar_t__ S_IS_EXTERNAL (int *) ;
 scalar_t__ S_IS_WEAK (int *) ;
 int S_SET_EXTERNAL (int *) ;
 int S_SET_NAME (int *,int *) ;
 int S_SET_OTHER (int *,int ) ;
 int S_SET_SEGMENT (int *,int ) ;
 int S_SET_SIZE (int *,scalar_t__) ;
 int S_SET_VALUE (int *,scalar_t__) ;
 int S_SET_WEAK (int *) ;
 int TARGET_OS ;
 int TRUE ;
 int _ (char*) ;
 int as_bad (int ,...) ;
 int copy_symbol_attributes (int *,int *) ;
 int ecoff_frob_symbol (int *) ;
 int free (TYPE_4__*) ;
 int know (int ) ;
 int memmove (char*,char*,size_t) ;
 char* strchr (int *,char) ;
 int strlen (char*) ;
 int * strstr (int ,char*) ;
 int * symbol_find_or_make (int *) ;
 TYPE_3__* symbol_get_bfdsym (int *) ;
 TYPE_1__* symbol_get_frag (int *) ;
 struct elf_obj_sy* symbol_get_obj (int *) ;
 int symbol_set_frag (int *,TYPE_1__*) ;

void
elf_frob_symbol (symbolS *symp, int *puntp)
{
  struct elf_obj_sy *sy_obj;






  sy_obj = symbol_get_obj (symp);

  if (sy_obj->size != ((void*)0))
    {
      switch (sy_obj->size->X_op)
 {
 case 128:
   S_SET_SIZE (symp,
        (S_GET_VALUE (sy_obj->size->X_add_symbol)
         + sy_obj->size->X_add_number
         - S_GET_VALUE (sy_obj->size->X_op_symbol)));
   break;
 case 129:
   S_SET_SIZE (symp,
        (S_GET_VALUE (sy_obj->size->X_add_symbol)
         + sy_obj->size->X_add_number));
   break;
 default:
   as_bad (_(".size expression too complicated to fix up"));
   break;
 }
      free (sy_obj->size);
      sy_obj->size = ((void*)0);
    }

  if (sy_obj->versioned_name != ((void*)0))
    {
      char *p;

      p = strchr (sy_obj->versioned_name, ELF_VER_CHR);
      know (p != ((void*)0));
      if (! S_IS_DEFINED (symp))
 {



   if (p[1] == ELF_VER_CHR)
     {
       as_bad (_("invalid attempt to declare external version name as default in symbol `%s'"),
        sy_obj->versioned_name);
       *puntp = TRUE;
     }
   S_SET_NAME (symp, sy_obj->versioned_name);
 }
      else
 {
   if (p[1] == ELF_VER_CHR && p[2] == ELF_VER_CHR)
     {
       size_t l;



       l = strlen (&p[3]) + 1;
       memmove (&p[2], &p[3], l);
       S_SET_NAME (symp, sy_obj->versioned_name);
     }
   else
     {
       symbolS *symp2;
       symp2 = symbol_find_or_make (sy_obj->versioned_name);



       S_SET_SEGMENT (symp2, S_GET_SEGMENT (symp));



       S_SET_VALUE (symp2,
      (S_GET_VALUE (symp)
       - symbol_get_frag (symp)->fr_address));

       symbol_set_frag (symp2, symbol_get_frag (symp));


       copy_symbol_attributes (symp2, symp);

       S_SET_OTHER (symp2, S_GET_OTHER (symp));

       if (S_IS_WEAK (symp))
  S_SET_WEAK (symp2);

       if (S_IS_EXTERNAL (symp))
  S_SET_EXTERNAL (symp2);
     }
 }
    }


  if (S_IS_WEAK (symp))
    {
      if (S_IS_COMMON (symp))
 as_bad (_("symbol `%s' can not be both weak and common"),
  S_GET_NAME (symp));
    }
}
