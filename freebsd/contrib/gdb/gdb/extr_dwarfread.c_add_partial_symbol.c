
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objfile {int static_psymbols; int global_psymbols; } ;
struct dieinfo {int die_tag; int at_name; int has_at_byte_size; int at_low_pc; } ;


 int LOC_BLOCK ;
 int LOC_STATIC ;
 int LOC_TYPEDEF ;
 int STRUCT_DOMAIN ;
 int VAR_DOMAIN ;
 int add_psymbol_to_list (int ,int ,int ,int ,int *,int ,int ,int ,struct objfile*) ;
 int cu_language ;
 int language_cplus ;
 int strlen (int ) ;

__attribute__((used)) static void
add_partial_symbol (struct dieinfo *dip, struct objfile *objfile)
{
  switch (dip->die_tag)
    {
    case 134:
      add_psymbol_to_list (dip->at_name, strlen (dip->at_name),
      VAR_DOMAIN, LOC_BLOCK,
      &objfile->global_psymbols,
      0, dip->at_low_pc, cu_language, objfile);
      break;
    case 133:
      add_psymbol_to_list (dip->at_name, strlen (dip->at_name),
      VAR_DOMAIN, LOC_STATIC,
      &objfile->global_psymbols,
      0, 0, cu_language, objfile);
      break;
    case 130:
      add_psymbol_to_list (dip->at_name, strlen (dip->at_name),
      VAR_DOMAIN, LOC_BLOCK,
      &objfile->static_psymbols,
      0, dip->at_low_pc, cu_language, objfile);
      break;
    case 132:
      add_psymbol_to_list (dip->at_name, strlen (dip->at_name),
      VAR_DOMAIN, LOC_STATIC,
      &objfile->static_psymbols,
      0, 0, cu_language, objfile);
      break;
    case 129:
      add_psymbol_to_list (dip->at_name, strlen (dip->at_name),
      VAR_DOMAIN, LOC_TYPEDEF,
      &objfile->static_psymbols,
      0, 0, cu_language, objfile);
      break;
    case 136:
    case 131:
    case 128:
    case 135:

      if (!dip->has_at_byte_size)
 break;
      add_psymbol_to_list (dip->at_name, strlen (dip->at_name),
      STRUCT_DOMAIN, LOC_TYPEDEF,
      &objfile->static_psymbols,
      0, 0, cu_language, objfile);
      if (cu_language == language_cplus)
 {

   add_psymbol_to_list (dip->at_name, strlen (dip->at_name),
          VAR_DOMAIN, LOC_TYPEDEF,
          &objfile->static_psymbols,
          0, 0, cu_language, objfile);
 }
      break;
    }
}
