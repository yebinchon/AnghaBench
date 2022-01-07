
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ieee_var {char* name; unsigned long namlen; scalar_t__* pslot; void* kind; scalar_t__ type; } ;
struct TYPE_5__ {TYPE_1__* bsp; TYPE_1__* stack; } ;
struct TYPE_6__ {int alloc; struct ieee_var* vars; } ;
struct ieee_info {TYPE_2__ blockstack; int abfd; void* dhandle; TYPE_3__ vars; } ;
typedef int ieee_record_enum_type ;
typedef scalar_t__ debug_type ;
typedef int bfd_vma ;
typedef int bfd_byte ;
typedef int bfd_boolean ;
struct TYPE_4__ {int kind; } ;


 int DEBUG_GLOBAL ;
 scalar_t__ DEBUG_KIND_POINTER ;
 int DEBUG_LOCAL ;
 int DEBUG_LOCAL_STATIC ;
 int DEBUG_REGISTER ;
 int DEBUG_STATIC ;
 scalar_t__ DEBUG_TYPE_NULL ;
 int FALSE ;
 void* IEEE_EXTERNAL ;
 void* IEEE_GLOBAL ;
 void* IEEE_LOCAL ;
 void* IEEE_STATIC ;
 int TRUE ;
 int _ (char*) ;
 scalar_t__ debug_get_type_kind (void*,scalar_t__) ;
 scalar_t__ debug_make_indirect_type (void*,scalar_t__*,char const*) ;
 scalar_t__ debug_make_void_type (void*) ;
 int debug_record_line (void*,int,int) ;
 int debug_record_variable (void*,char*,scalar_t__,int ,int) ;


 int ieee_error (struct ieee_info*,int const*,int ) ;
 int ieee_read_cxx_misc (struct ieee_info*,int const**,int) ;
 int ieee_read_number (struct ieee_info*,int const**,int*) ;
 int ieee_read_optional_id (struct ieee_info*,int const**,char const**,unsigned long*,int *) ;
 int ieee_read_optional_number (struct ieee_info*,int const**,int*,int *) ;
 int ieee_read_type_index (struct ieee_info*,int const**,scalar_t__*) ;
 int ieee_regno_to_genreg (int ,int) ;
 int ieee_require_asn (struct ieee_info*,int const**,int*) ;
 int ieee_require_atn65 (struct ieee_info*,int const**,char const**,unsigned long*) ;
 int memset (struct ieee_var*,int ,unsigned int) ;
 char* savestring (char const*,unsigned long) ;
 scalar_t__ xmalloc (int) ;
 scalar_t__ xrealloc (struct ieee_var*,unsigned int) ;

__attribute__((used)) static bfd_boolean
parse_ieee_atn (struct ieee_info *info, const bfd_byte **pp)
{
  const bfd_byte *atn_start, *atn_code_start;
  bfd_vma varindx;
  struct ieee_var *pvar;
  debug_type type;
  bfd_vma atn_code;
  void *dhandle;
  bfd_vma v, v2, v3, v4, v5;
  const char *name;
  unsigned long namlen;
  char *namcopy;
  bfd_boolean present;
  int blocktype;

  atn_start = *pp;

  if (! ieee_read_number (info, pp, &varindx)
      || ! ieee_read_type_index (info, pp, &type))
    return FALSE;

  atn_code_start = *pp;

  if (! ieee_read_number (info, pp, &atn_code))
    return FALSE;

  if (varindx == 0)
    {
      pvar = ((void*)0);
      name = "";
      namlen = 0;
    }
  else if (varindx < 32)
    {


      if (atn_code == 9)
 return ieee_read_number (info, pp, &v);

      ieee_error (info, atn_start, _("illegal variable index"));
      return FALSE;
    }
  else
    {
      varindx -= 32;
      if (varindx >= info->vars.alloc
   || info->vars.vars[varindx].name == ((void*)0))
 {


   if (atn_code == 62)
     {
       if (varindx >= info->vars.alloc)
  {
    unsigned int alloc;

    alloc = info->vars.alloc;
    if (alloc == 0)
      alloc = 4;
    while (varindx >= alloc)
      alloc *= 2;
    info->vars.vars = ((struct ieee_var *)
         xrealloc (info->vars.vars,
            (alloc
      * sizeof *info->vars.vars)));
    memset (info->vars.vars + info->vars.alloc, 0,
     ((alloc - info->vars.alloc)
      * sizeof *info->vars.vars));
    info->vars.alloc = alloc;
  }

       pvar = info->vars.vars + varindx;
       pvar->name = "";
       pvar->namlen = 0;
     }
   else
     {
       ieee_error (info, atn_start, _("undefined variable in ATN"));
       return FALSE;
     }
 }

      pvar = info->vars.vars + varindx;

      pvar->type = type;

      name = pvar->name;
      namlen = pvar->namlen;
    }

  dhandle = info->dhandle;





  if (pvar != ((void*)0)
      && type != DEBUG_TYPE_NULL
      && debug_get_type_kind (dhandle, type) == DEBUG_KIND_POINTER)
    {
      switch (atn_code)
 {
 case 1:
 case 2:
 case 3:
 case 5:
 case 8:
 case 10:
   pvar->pslot = (debug_type *) xmalloc (sizeof *pvar->pslot);
   *pvar->pslot = type;
   type = debug_make_indirect_type (dhandle, pvar->pslot,
        (const char *) ((void*)0));
   pvar->type = type;
   break;
 }
    }

  switch (atn_code)
    {
    default:
      ieee_error (info, atn_code_start, _("unknown ATN type"));
      return FALSE;

    case 1:

      if (! ieee_read_number (info, pp, &v))
 return FALSE;
      namcopy = savestring (name, namlen);
      if (type == ((void*)0))
 type = debug_make_void_type (dhandle);
      if (pvar != ((void*)0))
 pvar->kind = IEEE_LOCAL;
      return debug_record_variable (dhandle, namcopy, type, DEBUG_LOCAL, v);

    case 2:

      if (! ieee_read_number (info, pp, &v))
 return FALSE;
      namcopy = savestring (name, namlen);
      if (type == ((void*)0))
 type = debug_make_void_type (dhandle);
      if (pvar != ((void*)0))
 pvar->kind = IEEE_LOCAL;
      return debug_record_variable (dhandle, namcopy, type, DEBUG_REGISTER,
        ieee_regno_to_genreg (info->abfd, v));

    case 3:

      if (! ieee_require_asn (info, pp, &v))
 return FALSE;
      namcopy = savestring (name, namlen);
      if (type == ((void*)0))
 type = debug_make_void_type (dhandle);
      if (info->blockstack.bsp <= info->blockstack.stack)
 blocktype = 0;
      else
 blocktype = info->blockstack.bsp[-1].kind;
      if (pvar != ((void*)0))
 {
   if (blocktype == 4 || blocktype == 6)
     pvar->kind = IEEE_LOCAL;
   else
     pvar->kind = IEEE_STATIC;
 }
      return debug_record_variable (dhandle, namcopy, type,
        (blocktype == 4 || blocktype == 6
         ? DEBUG_LOCAL_STATIC
         : DEBUG_STATIC),
        v);

    case 4:

      if (pvar != ((void*)0))
 pvar->kind = IEEE_EXTERNAL;
      return TRUE;

    case 5:

      if (pvar != ((void*)0))
 pvar->kind = IEEE_EXTERNAL;
      return TRUE;

    case 7:
      if (! ieee_read_number (info, pp, &v)
   || ! ieee_read_number (info, pp, &v2)
   || ! ieee_read_optional_number (info, pp, &v3, &present))
 return FALSE;
      if (present)
 {
   if (! ieee_read_optional_number (info, pp, &v4, &present))
     return FALSE;
 }




      if (! ieee_require_asn (info, pp, &v3))
 return FALSE;



      return debug_record_line (dhandle, v, v3);

    case 8:

      if (! ieee_require_asn (info, pp, &v))
 return FALSE;
      namcopy = savestring (name, namlen);
      if (type == ((void*)0))
 type = debug_make_void_type (dhandle);
      if (pvar != ((void*)0))
 pvar->kind = IEEE_GLOBAL;
      return debug_record_variable (dhandle, namcopy, type, DEBUG_GLOBAL, v);

    case 9:

      if (! ieee_read_number (info, pp, &v))
 return FALSE;


      return TRUE;

    case 10:



      if (! ieee_read_number (info, pp, &v)
   || ! ieee_read_optional_number (info, pp, &v2, &present))
 return FALSE;




      namcopy = savestring (name, namlen);
      if (type == ((void*)0))
 type = debug_make_void_type (dhandle);
      if (pvar != ((void*)0))
 pvar->kind = IEEE_LOCAL;
      return debug_record_variable (dhandle, namcopy, type, DEBUG_REGISTER, v);

    case 11:

      ieee_error (info, atn_code_start, _("unsupported ATN11"));


      return TRUE;

    case 12:

      v3 = 0;
      v4 = 0x80;
      v5 = 0;
      if (! ieee_read_number (info, pp, &v)
   || ! ieee_read_number (info, pp, &v2)
   || ! ieee_read_optional_number (info, pp, &v3, &present))
 return FALSE;
      if (present)
 {
   if (! ieee_read_optional_number (info, pp, &v4, &present))
     return FALSE;
   if (present)
     {
       if (! ieee_read_optional_number (info, pp, &v5, &present))
  return FALSE;
     }
 }



      ieee_error (info, atn_code_start, _("unsupported ATN12"));


      return TRUE;

    case 16:


      if (! ieee_read_number (info, pp, &v)
   || ! ieee_read_optional_number (info, pp, &v2, &present))
 return FALSE;
      if (present)
 {
   if (! ieee_read_optional_number (info, pp, &v2, &present))
     return FALSE;
   if (present)
     {
       if (! ieee_read_optional_id (info, pp, &name, &namlen, &present))
  return FALSE;
     }
 }

      if ((ieee_record_enum_type) **pp == 128)
 {
   if (! ieee_require_asn (info, pp, &v3))
     return FALSE;
 }

      return TRUE;

    case 19:

      v2 = 0;
      if (! ieee_read_number (info, pp, &v)
   || ! ieee_read_optional_number (info, pp, &v2, &present)
   || ! ieee_require_asn (info, pp, &v3))
 return FALSE;
      namcopy = savestring (name, namlen);

      return debug_record_variable (dhandle, namcopy,
        debug_make_void_type (dhandle),
        v2 != 0 ? DEBUG_GLOBAL : DEBUG_STATIC,
        v3);

    case 62:

    case 63:

    case 64:

      if (! ieee_read_number (info, pp, &v)
   || ! ieee_read_number (info, pp, &v2)
   || ! ieee_read_optional_id (info, pp, &name, &namlen, &present))
 return FALSE;

      if (atn_code == 62 && v == 80)
 {
   if (present)
     {
       ieee_error (info, atn_code_start,
     _("unexpected string in C++ misc"));
       return FALSE;
     }
   return ieee_read_cxx_misc (info, pp, v2);
 }



      for (; v2 > 0; --v2)
 {
   switch ((ieee_record_enum_type) **pp)
     {
     default:
       ieee_error (info, *pp, _("bad misc record"));
       return FALSE;

     case 129:
       if (! ieee_require_atn65 (info, pp, &name, &namlen))
  return FALSE;
       break;

     case 128:
       if (! ieee_require_asn (info, pp, &v3))
  return FALSE;
       break;
     }
 }

      return TRUE;
    }


}
