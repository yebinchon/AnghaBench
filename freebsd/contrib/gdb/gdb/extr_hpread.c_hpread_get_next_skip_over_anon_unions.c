
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int index; } ;
struct TYPE_8__ {TYPE_2__ dnttp; } ;
struct TYPE_6__ {int bitoffset; int name; TYPE_3__ nextfield; int type; } ;
union dnttentry {TYPE_1__ dfield; } ;
struct type {int dummy; } ;
struct objfile {int dummy; } ;
typedef TYPE_3__ dnttpointer ;


 struct type* CHECK_TYPEDEF (struct type*) ;
 scalar_t__ DEPRECATED_STREQ (char*,char*) ;
 scalar_t__ TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_CODE_UNION ;
 int TYPE_NFIELDS (struct type*) ;
 char* VT (struct objfile*) ;
 int hpread_adjust_bitoffsets (struct type*,int) ;
 union dnttentry* hpread_get_lntt (int ,struct objfile*) ;
 struct type* hpread_type_lookup (int ,struct objfile*) ;

__attribute__((used)) static dnttpointer
hpread_get_next_skip_over_anon_unions (int skip_fields, dnttpointer field,
           union dnttentry **fieldp,
           struct objfile *objfile)
{
  struct type *anon_type;
  int i;
  int bitoffset;
  char *name;

  for (i = 0; i < skip_fields; i++)
    {


      anon_type = hpread_type_lookup ((*fieldp)->dfield.type, objfile);
      anon_type = CHECK_TYPEDEF (anon_type);
      bitoffset = (*fieldp)->dfield.bitoffset;
      name = VT (objfile) + (*fieldp)->dfield.name;

      field = (*fieldp)->dfield.nextfield;
      *fieldp = hpread_get_lntt (field.dnttp.index, objfile);


      if ((TYPE_CODE (anon_type) == TYPE_CODE_UNION) &&
   (!name || DEPRECATED_STREQ (name, "")))
 {
   hpread_adjust_bitoffsets (anon_type, bitoffset);
   field = hpread_get_next_skip_over_anon_unions (TYPE_NFIELDS (anon_type), field, fieldp, objfile);
 }
    }
  return field;
}
