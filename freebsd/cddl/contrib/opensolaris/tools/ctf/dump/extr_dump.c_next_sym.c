
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uchar_t ;
struct TYPE_8__ {int cd_nsyms; TYPE_1__* cd_strdata; int cd_symdata; } ;
typedef TYPE_2__ ctf_data_t ;
struct TYPE_9__ {int st_name; int st_info; } ;
struct TYPE_7__ {scalar_t__ d_buf; } ;
typedef TYPE_3__ GElf_Sym ;


 int GELF_ST_TYPE (int ) ;
 scalar_t__ gelf_getsym (int ,int,TYPE_3__*) ;
 scalar_t__ ignore_symbol (TYPE_3__*,char*) ;

__attribute__((used)) static int
next_sym(const ctf_data_t *cd, const int symidx, const uchar_t matchtype,
    char **namep)
{
 int i;

 for (i = symidx + 1; i < cd->cd_nsyms; i++) {
  GElf_Sym sym;
  char *name;
  int type;

  if (gelf_getsym(cd->cd_symdata, i, &sym) == 0)
   return (-1);

  name = (char *)cd->cd_strdata->d_buf + sym.st_name;
  type = GELF_ST_TYPE(sym.st_info);




  if (type != matchtype || ignore_symbol(&sym, name))
   continue;


  *namep = name;
  return (i);
 }

 return (-1);
}
