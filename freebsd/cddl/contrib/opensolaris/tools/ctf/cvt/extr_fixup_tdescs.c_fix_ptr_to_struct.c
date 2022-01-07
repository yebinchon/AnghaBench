
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ t_type; struct TYPE_7__* t_tdesc; scalar_t__ t_id; scalar_t__ t_name; TYPE_3__* t_members; } ;
typedef TYPE_1__ tdesc_t ;
struct TYPE_8__ {int td_nextid; } ;
typedef TYPE_2__ tdata_t ;
typedef int strs ;
struct TYPE_9__ {TYPE_1__* ml_type; scalar_t__ ml_name; struct TYPE_9__* ml_next; } ;
typedef TYPE_3__ mlist_t ;


 scalar_t__ FORWARD ;
 scalar_t__ POINTER ;
 scalar_t__ STRUCT ;
 scalar_t__ TYPEDEF ;
 int debug (int,char*,char const*,scalar_t__) ;
 TYPE_1__* lookupname (char const*) ;
 int streq (scalar_t__,char const*) ;
 TYPE_1__* xcalloc (int) ;

__attribute__((used)) static void
fix_ptr_to_struct(tdata_t *td)
{
 const char *strs[2] = { "vmem", "id_space" };
 const char *mems[2] = { ((void*)0), "is_vmem" };
 tdesc_t *ptr = ((void*)0);
 tdesc_t *str, *vmt;
 mlist_t *ml;
 int i;

 if ((vmt = lookupname("vmem_t")) == ((void*)0) || vmt->t_type != TYPEDEF)
  return;

 for (i = 0; i < (int) (sizeof (strs) / sizeof (strs[0])); i++) {
  if (!(str = lookupname(strs[i])) || str->t_type != STRUCT)
   continue;

  for (ml = str->t_members; ml; ml = ml->ml_next) {
   if (mems[i] && !streq(ml->ml_name, mems[i]))
    continue;

   if (ml->ml_type->t_type != POINTER ||
       ml->ml_type->t_name ||
       (ml->ml_type->t_tdesc->t_type != STRUCT &&
       ml->ml_type->t_tdesc->t_type != FORWARD) ||
       !streq(ml->ml_type->t_tdesc->t_name, "vmem"))
    continue;

   debug(3, "Fixed %s->%s => ptr struct vmem bug\n",
       strs[i], ml->ml_name);

   if (!ptr) {
    ptr = xcalloc(sizeof (*ptr));
    ptr->t_type = POINTER;
    ptr->t_id = td->td_nextid++;
    ptr->t_tdesc = vmt;
   }

   ml->ml_type = ptr;
  }
 }
}
