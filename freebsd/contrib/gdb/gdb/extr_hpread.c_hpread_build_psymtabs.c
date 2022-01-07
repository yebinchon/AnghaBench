
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_9__ ;
typedef struct TYPE_29__ TYPE_8__ ;
typedef struct TYPE_28__ TYPE_7__ ;
typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_16__ ;
typedef struct TYPE_20__ TYPE_13__ ;
typedef struct TYPE_19__ TYPE_12__ ;
typedef struct TYPE_18__ TYPE_11__ ;
typedef struct TYPE_17__ TYPE_10__ ;


struct TYPE_19__ {int global; } ;
struct TYPE_18__ {unsigned long location; int global; } ;
struct TYPE_17__ {int kind; scalar_t__ extension; } ;
struct TYPE_28__ {int index; } ;
struct TYPE_29__ {TYPE_7__ dnttp; } ;
struct TYPE_30__ {TYPE_8__ type; } ;
struct TYPE_27__ {int global; } ;
struct TYPE_26__ {int regvar; } ;
struct TYPE_25__ {int const endkind; } ;
struct TYPE_24__ {unsigned long hiaddr; unsigned long lowaddr; int global; } ;
struct TYPE_23__ {unsigned long hiaddr; unsigned long lowaddr; int global; } ;
union dnttentry {TYPE_12__ dconst; TYPE_11__ dsvar; TYPE_10__ dblock; TYPE_9__ dtype; TYPE_6__ dtag; TYPE_5__ ddvar; TYPE_4__ dend; TYPE_3__ ddocfunc; TYPE_2__ dfunc; } ;
struct partial_symtab {char* filename; TYPE_1__* objfile; } ;
struct TYPE_21__ {int next; } ;
struct objfile {char* name; TYPE_16__ static_psymbols; TYPE_16__ global_psymbols; int section_offsets; } ;
struct dntt_type_block {int dummy; } ;
struct cleanup {int dummy; } ;
typedef enum address_class { ____Placeholder_address_class } address_class ;
typedef int domain_enum ;
struct TYPE_22__ {int objfile_obstack; } ;
struct TYPE_20__ {int globals; } ;
typedef TYPE_13__ PXDB_header ;


 unsigned long ANOFFSET (int ,int ) ;

 int const DNTT_TYPE_CLASS ;





 int const DNTT_TYPE_ENUM ;






 int const DNTT_TYPE_TEMPLATE ;

 int GNTT (struct objfile*) ;
 int GNTT_SYMCOUNT (struct objfile*) ;
 int LNTT_SYMCOUNT (struct objfile*) ;
 int LOC_BLOCK ;
 int LOC_CONST ;
 int LOC_LOCAL ;
 int LOC_REGISTER ;
 int LOC_STATIC ;
 int LOC_UNDEF ;
 int QUIT ;
 int SECT_OFF_DATA (struct objfile*) ;
 int SECT_OFF_TEXT (struct objfile*) ;
 int STRUCT_DOMAIN ;
 int VAR_DOMAIN ;
 int VT (struct objfile*) ;
 int add_psymbol_to_list (char*,int ,int ,int,TYPE_16__*,unsigned long,int ,int ,struct objfile*) ;
 scalar_t__ alloca (int) ;
 int discard_cleanups (struct cleanup*) ;
 int free_pending_blocks () ;
 int hpread_end_psymtab (struct partial_symtab*,char**,int,int,int,struct partial_symtab**,int) ;
 union dnttentry* hpread_get_gntt (int,struct objfile*) ;
 scalar_t__ hpread_get_header (struct objfile*,TYPE_13__*) ;
 union dnttentry* hpread_get_lntt (int,struct objfile*) ;
 unsigned long hpread_get_textlow (int,int,struct objfile*,int) ;
 int hpread_quick_traverse (struct objfile*,int ,int ,TYPE_13__*) ;
 struct partial_symtab* hpread_start_psymtab (struct objfile*,char*,unsigned long,int,int ,int ) ;
 int language_unknown ;
 scalar_t__ last_source_file ;
 int make_cleanup (int ,int ) ;
 struct cleanup* make_cleanup_free_objfile (struct objfile*) ;
 int memcpy (char**,char**,int) ;
 scalar_t__ obstack_alloc (int *,int ) ;
 int printf (char*,char*) ;
 int really_free_pendings ;
 int set_namestring (union dnttentry*,char**,struct objfile*) ;
 int strcmp (char*,char*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 char* strrchr (char*,char) ;

void
hpread_build_psymtabs (struct objfile *objfile, int mainline)
{






  char *namestring;
  int past_first_source_file = 0;
  struct cleanup *old_chain;

  int hp_symnum, symcount, i;
  int scan_start = 0;

  union dnttentry *dn_bufp;
  unsigned long valu;
  char *p;
  int texthigh = 0;
  int have_name = 0;


  struct partial_symtab *pst;


  char **psymtab_include_list;
  int includes_allocated;
  int includes_used;


  struct partial_symtab **dependency_list;
  int dependencies_used, dependencies_allocated;


  free_pending_blocks ();
  make_cleanup (really_free_pendings, 0);

  pst = (struct partial_symtab *) 0;





  includes_allocated = 30;
  includes_used = 0;
  psymtab_include_list = (char **) alloca (includes_allocated *
        sizeof (char *));

  dependencies_allocated = 30;
  dependencies_used = 0;
  dependency_list =
    (struct partial_symtab **) alloca (dependencies_allocated *
           sizeof (struct partial_symtab *));

  old_chain = make_cleanup_free_objfile (objfile);

  last_source_file = 0;
  for (i = 0; i < 1; i++)
    {
      int within_function = 0;

      if (i)
 symcount = GNTT_SYMCOUNT (objfile);
      else
 symcount = LNTT_SYMCOUNT (objfile);


      for (hp_symnum = scan_start; hp_symnum < symcount; hp_symnum++)
 {
   QUIT;
   if (i)
     dn_bufp = hpread_get_gntt (hp_symnum, objfile);
   else
     dn_bufp = hpread_get_lntt (hp_symnum, objfile);

   if (dn_bufp->dblock.extension)
     continue;



   switch (dn_bufp->dblock.kind)
     {
     case 131:
       {
  set_namestring (dn_bufp, &namestring, objfile);



  if (pst && !strcmp (namestring, pst->filename))
    continue;



  p = strrchr (namestring, '.');
  if (!strcmp (p, ".h"))
    {
      int j, found;

      found = 0;
      for (j = 0; j < includes_used; j++)
        if (!strcmp (namestring, psymtab_include_list[j]))
   {
     found = 1;
     break;
   }
      if (found)
        continue;



      psymtab_include_list[includes_used++] = namestring;
      if (includes_used >= includes_allocated)
        {
   char **orig = psymtab_include_list;

   psymtab_include_list = (char **)
     alloca ((includes_allocated *= 2) *
      sizeof (char *));
   memcpy (psymtab_include_list, orig,
    includes_used * sizeof (char *));
        }
      continue;
    }

  if (pst)
    {
      if (!have_name)
        {
   pst->filename = (char *)
     obstack_alloc (&pst->objfile->objfile_obstack,
      strlen (namestring) + 1);
   strcpy (pst->filename, namestring);
   have_name = 1;
   continue;
        }
      continue;
    }




  if (pst && past_first_source_file)
    {
      hpread_end_psymtab (pst, psymtab_include_list,
     includes_used,
     (hp_symnum
      * sizeof (struct dntt_type_block)),
     texthigh,
     dependency_list, dependencies_used);
      pst = (struct partial_symtab *) 0;
      includes_used = 0;
      dependencies_used = 0;
    }
  else
    past_first_source_file = 1;

  valu = hpread_get_textlow (i, hp_symnum, objfile, symcount);
  valu += ANOFFSET (objfile->section_offsets, SECT_OFF_TEXT (objfile));
  pst = hpread_start_psymtab (objfile,
         namestring, valu,
         (hp_symnum
      * sizeof (struct dntt_type_block)),
         objfile->global_psymbols.next,
         objfile->static_psymbols.next);
  texthigh = valu;
  have_name = 1;
  continue;
       }

     case 132:





       if (pst)
  {
    hpread_end_psymtab (pst, psymtab_include_list, includes_used,
          ((hp_symnum - 1)
           * sizeof (struct dntt_type_block)),
          texthigh,
          dependency_list, dependencies_used);
    pst = (struct partial_symtab *) 0;
    includes_used = 0;
    dependencies_used = 0;
    have_name = 0;
  }


       set_namestring (dn_bufp, &namestring, objfile);
       valu = hpread_get_textlow (i, hp_symnum, objfile, symcount);
       valu += ANOFFSET (objfile->section_offsets, SECT_OFF_TEXT (objfile));
       if (!pst)
  {
    pst = hpread_start_psymtab (objfile,
           namestring, valu,
           (hp_symnum
      * sizeof (struct dntt_type_block)),
           objfile->global_psymbols.next,
           objfile->static_psymbols.next);
    texthigh = valu;
    have_name = 0;
  }
       continue;

     case 134:
     case 135:


       valu = dn_bufp->dfunc.hiaddr + ANOFFSET (objfile->section_offsets,
             SECT_OFF_TEXT (objfile));
       if (valu > texthigh)
  texthigh = valu;
       valu = dn_bufp->dfunc.lowaddr +
  ANOFFSET (objfile->section_offsets, SECT_OFF_TEXT (objfile));
       set_namestring (dn_bufp, &namestring, objfile);
       if (dn_bufp->dfunc.global)
  add_psymbol_to_list (namestring, strlen (namestring),
         VAR_DOMAIN, LOC_BLOCK,
         &objfile->global_psymbols, valu,
         0, language_unknown, objfile);
       else
  add_psymbol_to_list (namestring, strlen (namestring),
         VAR_DOMAIN, LOC_BLOCK,
         &objfile->static_psymbols, valu,
         0, language_unknown, objfile);
       within_function = 1;
       continue;

     case 138:
       valu = dn_bufp->ddocfunc.hiaddr + ANOFFSET (objfile->section_offsets,
         SECT_OFF_TEXT (objfile));
       if (valu > texthigh)
  texthigh = valu;
       valu = dn_bufp->ddocfunc.lowaddr +
  ANOFFSET (objfile->section_offsets, SECT_OFF_TEXT (objfile));
       set_namestring (dn_bufp, &namestring, objfile);
       if (dn_bufp->ddocfunc.global)
  add_psymbol_to_list (namestring, strlen (namestring),
         VAR_DOMAIN, LOC_BLOCK,
         &objfile->global_psymbols, valu,
         0, language_unknown, objfile);
       else
  add_psymbol_to_list (namestring, strlen (namestring),
         VAR_DOMAIN, LOC_BLOCK,
         &objfile->static_psymbols, valu,
         0, language_unknown, objfile);
       within_function = 1;
       continue;

     case 140:
     case 136:
       if ((dn_bufp->dend.endkind == 134) ||
    (dn_bufp->dend.endkind == 138))
  within_function = 0;
       continue;

     case 130:
     case 137:
     case 128:
     case 129:
       {

  enum address_class storage;
  domain_enum domain;


  if (within_function
      && (dn_bufp->dblock.kind == 130
   || dn_bufp->dblock.kind == 137))
    continue;


  if (dn_bufp->dblock.kind == 129)
    domain = STRUCT_DOMAIN;
  else
    domain = VAR_DOMAIN;


  if (dn_bufp->dblock.kind == 130)
    storage = LOC_STATIC;
  else if (dn_bufp->dblock.kind == 137
    && dn_bufp->ddvar.regvar)
    storage = LOC_REGISTER;
  else if (dn_bufp->dblock.kind == 137)
    storage = LOC_LOCAL;
  else
    storage = LOC_UNDEF;

  set_namestring (dn_bufp, &namestring, objfile);
  if (!pst)
    {
      pst = hpread_start_psymtab (objfile,
      "globals", 0,
      (hp_symnum
      * sizeof (struct dntt_type_block)),
           objfile->global_psymbols.next,
          objfile->static_psymbols.next);
    }


  valu = dn_bufp->dsvar.location;

  if (storage == LOC_STATIC)
    valu += ANOFFSET (objfile->section_offsets, SECT_OFF_DATA (objfile));






  if (dn_bufp->dsvar.global)
    {
      add_psymbol_to_list (namestring, strlen (namestring),
      domain, storage,
      &objfile->global_psymbols,
      valu,
      0, language_unknown, objfile);
    }
  else
    {
      add_psymbol_to_list (namestring, strlen (namestring),
      domain, storage,
      &objfile->static_psymbols,
      valu,
      0, language_unknown, objfile);
    }
  if (dn_bufp->dblock.kind == 129 &&
    dn_bufp->dtype.type.dnttp.index < LNTT_SYMCOUNT (objfile))
    {
      int global = dn_bufp->dtag.global;

      dn_bufp = hpread_get_lntt (dn_bufp->dtype.type.dnttp.index, objfile);
      if (dn_bufp->dblock.kind == DNTT_TYPE_CLASS ||
   dn_bufp->dblock.kind == DNTT_TYPE_ENUM ||
   dn_bufp->dblock.kind == DNTT_TYPE_TEMPLATE)
        {
   if (global)
     {
       add_psymbol_to_list (namestring, strlen (namestring),
       VAR_DOMAIN, storage,
       &objfile->global_psymbols,
       dn_bufp->dsvar.location,
           0, language_unknown, objfile);
     }
   else
     {
       add_psymbol_to_list (namestring, strlen (namestring),
       VAR_DOMAIN, storage,
       &objfile->static_psymbols,
       dn_bufp->dsvar.location,
           0, language_unknown, objfile);
     }
        }
    }
       }
       continue;

     case 133:
     case 139:

       set_namestring (dn_bufp, &namestring, objfile);
       if (!pst)
  {
    pst = hpread_start_psymtab (objfile,
           "globals", 0,
           (hp_symnum
      * sizeof (struct dntt_type_block)),
           objfile->global_psymbols.next,
           objfile->static_psymbols.next);
  }
       if (dn_bufp->dconst.global)
  add_psymbol_to_list (namestring, strlen (namestring),
         VAR_DOMAIN, LOC_CONST,
         &objfile->global_psymbols, 0,
         0, language_unknown, objfile);
       else
  add_psymbol_to_list (namestring, strlen (namestring),
         VAR_DOMAIN, LOC_CONST,
         &objfile->static_psymbols, 0,
         0, language_unknown, objfile);
       continue;
     default:
       continue;
     }
 }
    }


  if (pst)
    {
      hpread_end_psymtab (pst, psymtab_include_list, includes_used,
     hp_symnum * sizeof (struct dntt_type_block),
     0, dependency_list, dependencies_used);
    }

  discard_cleanups (old_chain);
}
