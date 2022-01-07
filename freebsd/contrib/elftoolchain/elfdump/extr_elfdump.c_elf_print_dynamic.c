
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uintmax_t ;
struct section {scalar_t__ type; scalar_t__ sz; int link; int scn; int name; } ;
struct elfdump {size_t shnum; int flags; int elf; int snl; struct section* sl; } ;
typedef int idx ;
struct TYPE_10__ {scalar_t__ d_size; } ;
struct TYPE_8__ {int d_ptr; int d_val; } ;
struct TYPE_9__ {int d_tag; TYPE_1__ d_un; } ;
typedef TYPE_2__ GElf_Dyn ;
typedef TYPE_3__ Elf_Data ;
 int PRT (char*,...) ;
 scalar_t__ SHT_DYNAMIC ;
 int SOLARIS_FMT ;
 scalar_t__ STAILQ_EMPTY (int *) ;
 int assert (int) ;
 int d_tags (int) ;
 int elf_errmsg (int) ;
 int elf_errno () ;
 TYPE_3__* elf_getdata (int ,int *) ;
 char* elf_strptr (int ,int ,int ) ;
 scalar_t__ find_name (struct elfdump*,int ) ;
 TYPE_2__* gelf_getdyn (TYPE_3__*,int,TYPE_2__*) ;
 int get_ent_count (struct section*,int*) ;
 int snprintf (char*,int,char*,int) ;
 int warnx (char*,int ) ;

__attribute__((used)) static void
elf_print_dynamic(struct elfdump *ed)
{
 struct section *s;
 const char *name;
 char idx[13];
 Elf_Data *data;
 GElf_Dyn dyn;
 int elferr, i, len;

 s = ((void*)0);
 for (i = 0; (size_t)i < ed->shnum; i++) {
  s = &ed->sl[i];
  if (s->type == SHT_DYNAMIC &&
      (STAILQ_EMPTY(&ed->snl) || find_name(ed, s->name)))
   break;
 }
 if ((size_t)i >= ed->shnum)
  return;

 if (ed->flags & SOLARIS_FMT) {
  PRT("Dynamic Section:  %s\n", s->name);
  PRT("     index  tag               value\n");
 } else
  PRT("\ndynamic:\n");
 (void) elf_errno();
 if ((data = elf_getdata(s->scn, ((void*)0))) == ((void*)0)) {
  elferr = elf_errno();
  if (elferr != 0)
   warnx("elf_getdata failed: %s", elf_errmsg(elferr));
  return;
 }
 assert(data->d_size == s->sz);
 if (!get_ent_count(s, &len))
  return;
 for (i = 0; i < len; i++) {
  if (gelf_getdyn(data, i, &dyn) != &dyn) {
   warnx("gelf_getdyn failed: %s", elf_errmsg(-1));
   continue;
  }

  if (ed->flags & SOLARIS_FMT) {
   snprintf(idx, sizeof(idx), "[%d]", i);
   PRT("%10s  %-16s ", idx, d_tags(dyn.d_tag));
  } else {
   PRT("\n");
   PRT("entry: %d\n", i);
   PRT("\td_tag: %s\n", d_tags(dyn.d_tag));
  }
  switch(dyn.d_tag) {
  case 153:
  case 139:
  case 141:
  case 140:
   if ((name = elf_strptr(ed->elf, s->link,
        dyn.d_un.d_val)) == ((void*)0))
    name = "";
   if (ed->flags & SOLARIS_FMT)
    PRT("%#-16jx %s\n", (uintmax_t)dyn.d_un.d_val,
        name);
   else
    PRT("\td_val: %s\n", name);
   break;
  case 149:
  case 147:
  case 144:
  case 145:
  case 146:
  case 138:
  case 135:
  case 142:
  case 143:
  case 150:
  case 132:
  case 131:
  case 130:
  case 129:
  case 128:
   if (ed->flags & SOLARIS_FMT)
    PRT("%#jx\n", (uintmax_t)dyn.d_un.d_val);
   else
    PRT("\td_val: %ju\n",
        (uintmax_t)dyn.d_un.d_val);
   break;
  case 151:
  case 156:
  case 157:
  case 137:
  case 134:
  case 155:
  case 158:
  case 148:
  case 154:
  case 159:
   if (ed->flags & SOLARIS_FMT)
    PRT("%#jx\n", (uintmax_t)dyn.d_un.d_ptr);
   else
    PRT("\td_ptr: %#jx\n",
        (uintmax_t)dyn.d_un.d_ptr);
   break;
  case 152:
  case 136:
  case 133:
  default:
   if (ed->flags & SOLARIS_FMT)
    PRT("\n");
   break;
  }
 }
}
