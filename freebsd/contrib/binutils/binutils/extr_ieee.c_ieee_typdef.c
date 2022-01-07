
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee_write_type {unsigned int indx; char const* name; int unsignedp; int size; scalar_t__ localp; } ;
struct ieee_name_type_hash_entry {struct ieee_name_type* types; } ;
struct ieee_name_type {unsigned int id; struct ieee_name_type* next; int kind; struct ieee_write_type type; } ;
struct ieee_handle {int typedefs; TYPE_1__* type_stack; } ;
struct ieee_buflist {int dummy; } ;
typedef enum builtin_types { ____Placeholder_builtin_types } builtin_types ;
typedef scalar_t__ bfd_boolean ;
struct TYPE_2__ {struct ieee_write_type type; } ;


 int DEBUG_KIND_ILLEGAL ;
 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 scalar_t__ builtin_bcd_float ;
 int ieee_define_named_type (struct ieee_handle*,char const*,unsigned int,int ,int ,scalar_t__,struct ieee_buflist*) ;
 struct ieee_name_type_hash_entry* ieee_name_type_hash_lookup (int *,char const*,scalar_t__,scalar_t__) ;
 unsigned int ieee_pop_type (struct ieee_handle*) ;
 int ieee_pop_unused_type (struct ieee_handle*) ;
 int ieee_write_number (struct ieee_handle*,unsigned int) ;
 int memset (struct ieee_name_type*,int ,int) ;
 int strcmp (char const*,char*) ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static bfd_boolean
ieee_typdef (void *p, const char *name)
{
  struct ieee_handle *info = (struct ieee_handle *) p;
  struct ieee_write_type type;
  unsigned int indx;
  bfd_boolean found;
  bfd_boolean localp;
  struct ieee_name_type_hash_entry *h;
  struct ieee_name_type *nt;

  type = info->type_stack->type;
  indx = type.indx;






  found = FALSE;
  if (indx <= (unsigned int) builtin_bcd_float)
    {
      switch ((enum builtin_types) indx)
 {
 default:
   break;

 case 128:
   if (strcmp (name, "void") == 0)
     found = TRUE;
   break;

 case 140:
 case 149:
   if (strcmp (name, "signed char") == 0)
     {
       indx = (unsigned int) 140;
       found = TRUE;
     }
   else if (strcmp (name, "char") == 0)
     {
       indx = (unsigned int) 149;
       found = TRUE;
     }
   break;

 case 134:
   if (strcmp (name, "unsigned char") == 0)
     found = TRUE;
   break;

 case 136:
 case 142:
 case 141:
 case 137:
   if (strcmp (name, "signed short int") == 0)
     {
       indx = (unsigned int) 136;
       found = TRUE;
     }
   else if (strcmp (name, "short") == 0)
     {
       indx = (unsigned int) 142;
       found = TRUE;
     }
   else if (strcmp (name, "short int") == 0)
     {
       indx = (unsigned int) 141;
       found = TRUE;
     }
   else if (strcmp (name, "signed short") == 0)
     {
       indx = (unsigned int) 137;
       found = TRUE;
     }
   break;

 case 129:
 case 130:
   if (strcmp (name, "unsigned short int") == 0
       || strcmp (name, "short unsigned int") == 0)
     {
       indx = 129;
       found = TRUE;
     }
   else if (strcmp (name, "unsigned short") == 0)
     {
       indx = 130;
       found = TRUE;
     }
   break;

 case 139:
 case 146:
 case 145:
   if (strcmp (name, "signed long") == 0)
     {
       indx = 139;
       found = TRUE;
     }
   else if (strcmp (name, "int") == 0)
     {
       indx = 146;
       found = TRUE;
     }
   else if (strcmp (name, "long") == 0
     || strcmp (name, "long int") == 0)
     {
       indx = 145;
       found = TRUE;
     }
   break;

 case 132:
 case 135:
 case 133:
   if (strcmp (name, "unsigned long") == 0
       || strcmp (name, "long unsigned int") == 0)
     {
       indx = 132;
       found = TRUE;
     }
   else if (strcmp (name, "unsigned") == 0)
     {
       indx = 135;
       found = TRUE;
     }
   else if (strcmp (name, "unsigned int") == 0)
     {
       indx = 133;
       found = TRUE;
     }
   break;

 case 138:
   if (strcmp (name, "signed long long") == 0
       || strcmp (name, "long long int") == 0)
     found = TRUE;
   break;

 case 131:
   if (strcmp (name, "unsigned long long") == 0
       || strcmp (name, "long long unsigned int") == 0)
     found = TRUE;
   break;

 case 147:
   if (strcmp (name, "float") == 0)
     found = TRUE;
   break;

 case 148:
   if (strcmp (name, "double") == 0)
     found = TRUE;
   break;

 case 144:
   if (strcmp (name, "long double") == 0)
     found = TRUE;
   break;

 case 143:
   if (strcmp (name, "long long double") == 0)
     found = TRUE;
   break;
 }

      if (found)
 type.indx = indx;
    }

  h = ieee_name_type_hash_lookup (&info->typedefs, name, TRUE, FALSE);
  if (h == ((void*)0))
    return FALSE;


  localp = type.localp;
  for (nt = h->types; nt != ((void*)0); nt = nt->next)
    {
      if (nt->id == indx)
 {


   if (! nt->type.localp)
     {
       ieee_pop_unused_type (info);
       return TRUE;
     }
 }
      else
 {

   localp = TRUE;
 }
    }



  nt = (struct ieee_name_type *) xmalloc (sizeof *nt);
  memset (nt, 0, sizeof *nt);
  nt->id = indx;
  nt->type = type;
  nt->type.name = name;
  nt->type.localp = localp;
  nt->kind = DEBUG_KIND_ILLEGAL;

  nt->next = h->types;
  h->types = nt;

  if (found)
    {


      ieee_pop_unused_type (info);
      return TRUE;
    }

  indx = ieee_pop_type (info);

  if (! ieee_define_named_type (info, name, (unsigned int) -1, type.size,
    type.unsignedp, localp,
    (struct ieee_buflist *) ((void*)0))
      || ! ieee_write_number (info, 'T')
      || ! ieee_write_number (info, indx))
    return FALSE;




  (void) ieee_pop_type (info);

  return TRUE;
}
