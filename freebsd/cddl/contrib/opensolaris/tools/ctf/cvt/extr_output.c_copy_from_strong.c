
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uchar_t ;
struct TYPE_11__ {int td_iihash; } ;
typedef TYPE_1__ tdata_t ;
struct TYPE_12__ {int ii_type; } ;
typedef TYPE_2__ iidesc_t ;
struct TYPE_13__ {int st_info; } ;
typedef TYPE_3__ GElf_Sym ;


 int GELF_ST_TYPE (int ) ;
 int II_GFUN ;
 int II_GVAR ;


 int hash_add (int ,TYPE_2__*) ;
 TYPE_2__* iidesc_dup_rename (TYPE_2__*,char const*,char const*) ;

__attribute__((used)) static iidesc_t *
copy_from_strong(tdata_t *td, GElf_Sym *sym, iidesc_t *strongdesc,
    const char *weakname, const char *weakfile)
{
 iidesc_t *new = iidesc_dup_rename(strongdesc, weakname, weakfile);
 uchar_t type = GELF_ST_TYPE(sym->st_info);

 switch (type) {
 case 128:
  new->ii_type = II_GVAR;
  break;
 case 129:
  new->ii_type = II_GFUN;
  break;
 }

 hash_add(td->td_iihash, new);

 return (new);
}
