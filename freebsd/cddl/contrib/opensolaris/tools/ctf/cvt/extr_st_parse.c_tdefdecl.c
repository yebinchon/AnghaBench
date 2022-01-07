
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {char* t_name; int t_id; struct TYPE_11__* t_tdesc; int t_size; int t_type; TYPE_1__* t_fndef; } ;
typedef TYPE_2__ tdesc_t ;
typedef int fndef_t ;
struct TYPE_10__ {int fn_ret; } ;


 int ARRAY ;
 int CONST ;
 int FORWARD ;
 int FUNCTION ;
 int POINTER ;
 int RESTRICT ;
 int STRUCT ;
 int TYPEDEF ;
 int TYPEDEF_UNRES ;
 int TYPEFILE (int) ;
 int TYPENUM (int) ;
 int UNION ;
 int VOLATILE ;
 int addhash (TYPE_2__*,int) ;
 char* arraydef (char*,TYPE_2__**) ;
 TYPE_2__* calloc (int,int) ;
 int expected (char*,char*,char*) ;
 int faketypenumber ;
 int free (char*) ;
 char* id (char*,int*) ;
 char* intrinsic (char*,TYPE_2__**) ;
 TYPE_2__* lookup (int) ;
 int lookupname (char*) ;
 char* name (char*,char**) ;
 int parse_debug (int,char*,char*,...) ;
 char* soudef (char*,int ,TYPE_2__**) ;
 int strchr (char*,int ) ;
 int strcmp (char*,char*) ;
 int terminate (char*,int ,int ,...) ;
 void* xcalloc (int) ;

__attribute__((used)) static char *
tdefdecl(char *cp, int h, tdesc_t **rtdp)
{
 tdesc_t *ntdp;
 char *w;
 int c, h2;
 char type;

 parse_debug(3, cp, "tdefdecl h=%d", h);


 switch (type = *cp) {
 case 'b':
 case 'R':
  cp = intrinsic(cp, rtdp);
  break;
 case '(':
  cp = id(cp, &h2);
  ntdp = lookup(h2);

  if (ntdp != ((void*)0) && *cp == '=') {
   if (ntdp->t_type == FORWARD && *(cp + 1) == 'x') {
    char *c2 = cp + 2;
    char *nm;

    if (!strchr("sue", *c2++)) {
     expected("tdefdecl/x-redefine", "[sue]",
         c2 - 1);
    }

    c2 = name(c2, &nm);
    if (strcmp(nm, ntdp->t_name) != 0) {
     terminate("Stabs error: Attempt to "
         "redefine type (%d,%d) as "
         "something else: %s\n",
         TYPEFILE(h2), TYPENUM(h2),
         c2 - 1);
    }
    free(nm);

    h2 = faketypenumber++;
    ntdp = ((void*)0);
   } else {
    terminate("Stabs error: Attempting to "
        "redefine type (%d,%d)\n", TYPEFILE(h2),
        TYPENUM(h2));
   }
  }

  if (ntdp == ((void*)0)) {
   if (*cp != '=') {

    parse_debug(3, ((void*)0), "tdefdecl unres type %d",
        h2);
    *rtdp = calloc(sizeof (**rtdp), 1);
    (*rtdp)->t_type = TYPEDEF_UNRES;
    (*rtdp)->t_id = h2;
    break;
   } else
    cp++;


   cp = tdefdecl(cp, h2, rtdp);
   if ((*rtdp)->t_id && (*rtdp)->t_id != h2) {
    ntdp = calloc(sizeof (*ntdp), 1);
    ntdp->t_type = TYPEDEF;
    ntdp->t_tdesc = *rtdp;
    *rtdp = ntdp;
   }

   addhash(*rtdp, h2);

  } else {
   if (ntdp->t_type != TYPEDEF || ntdp->t_name != ((void*)0)) {
    *rtdp = ntdp;
   } else {
    parse_debug(3, ((void*)0),
        "No duplicate typedef anon for ref");
    *rtdp = ntdp;
   }
  }
  break;
 case '*':
  ntdp = ((void*)0);
  cp = tdefdecl(cp + 1, h, &ntdp);
  if (ntdp == ((void*)0))
   expected("tdefdecl/*", "id", cp);

  if (!ntdp->t_id)
   ntdp->t_id = faketypenumber++;

  *rtdp = xcalloc(sizeof (**rtdp));
  (*rtdp)->t_type = POINTER;
  (*rtdp)->t_size = 0;
  (*rtdp)->t_id = h;
  (*rtdp)->t_tdesc = ntdp;
  break;
 case 'f':
  cp = tdefdecl(cp + 1, h, &ntdp);
  *rtdp = xcalloc(sizeof (**rtdp));
  (*rtdp)->t_type = FUNCTION;
  (*rtdp)->t_size = 0;
  (*rtdp)->t_id = h;
  (*rtdp)->t_fndef = xcalloc(sizeof (fndef_t));
  (*rtdp)->t_fndef->fn_ret = lookupname("int");
  break;
 case 'a':
 case 'z':
  cp++;
  if (*cp++ != 'r')
   expected("tdefdecl/[az]", "r", cp - 1);
  *rtdp = xcalloc(sizeof (**rtdp));
  (*rtdp)->t_type = ARRAY;
  (*rtdp)->t_id = h;
  cp = arraydef(cp, rtdp);
  break;
 case 'x':
  c = *++cp;
  if (c != 's' && c != 'u' && c != 'e')
   expected("tdefdecl/x", "[sue]", cp - 1);
  cp = name(cp + 1, &w);

  ntdp = xcalloc(sizeof (*ntdp));
  ntdp->t_type = FORWARD;
  ntdp->t_name = w;






  *rtdp = ntdp;
  break;

 case 'B':
  cp = tdefdecl(cp + 1, h, &ntdp);

  if (!ntdp->t_id)
   ntdp->t_id = faketypenumber++;

  *rtdp = xcalloc(sizeof (**rtdp));
  (*rtdp)->t_type = VOLATILE;
  (*rtdp)->t_size = 0;
  (*rtdp)->t_tdesc = ntdp;
  (*rtdp)->t_id = h;
  break;

 case 'k':
  cp = tdefdecl(cp + 1, h, &ntdp);

  if (!ntdp->t_id)
   ntdp->t_id = faketypenumber++;

  *rtdp = xcalloc(sizeof (**rtdp));
  (*rtdp)->t_type = CONST;
  (*rtdp)->t_size = 0;
  (*rtdp)->t_tdesc = ntdp;
  (*rtdp)->t_id = h;
  break;

 case 'K':
  cp = tdefdecl(cp + 1, h, &ntdp);

  if (!ntdp->t_id)
   ntdp->t_id = faketypenumber++;

  *rtdp = xcalloc(sizeof (**rtdp));
  (*rtdp)->t_type = RESTRICT;
  (*rtdp)->t_size = 0;
  (*rtdp)->t_tdesc = ntdp;
  (*rtdp)->t_id = h;
  break;

 case 'u':
 case 's':
  cp++;

  *rtdp = xcalloc(sizeof (**rtdp));
  (*rtdp)->t_name = ((void*)0);
  cp = soudef(cp, (type == 'u') ? UNION : STRUCT, rtdp);
  break;
 default:
  expected("tdefdecl", "<type code>", cp);
 }
 return (cp);
}
