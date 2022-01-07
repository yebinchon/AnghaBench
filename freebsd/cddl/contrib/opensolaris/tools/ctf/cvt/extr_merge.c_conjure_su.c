
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int t_id; TYPE_2__* t_members; } ;
typedef TYPE_1__ tdesc_t ;
struct TYPE_10__ {char* ml_name; int ml_type; int ml_size; int ml_offset; struct TYPE_10__* ml_next; } ;
typedef TYPE_2__ mlist_t ;
typedef int merge_cb_data_t ;


 TYPE_1__* conjure_template (TYPE_1__*,int) ;
 int remap_node (int *,int ,int ,TYPE_1__*,int *) ;
 TYPE_2__* xmalloc (int) ;
 char* xstrdup (char*) ;

__attribute__((used)) static tdesc_t *
conjure_su(tdesc_t *old, int newselfid, merge_cb_data_t *mcd)
{
 tdesc_t *new = conjure_template(old, newselfid);
 mlist_t *omem, **nmemp;

 for (omem = old->t_members, nmemp = &new->t_members;
     omem; omem = omem->ml_next, nmemp = &((*nmemp)->ml_next)) {
  *nmemp = xmalloc(sizeof (mlist_t));
  (*nmemp)->ml_offset = omem->ml_offset;
  (*nmemp)->ml_size = omem->ml_size;
  (*nmemp)->ml_name = xstrdup(omem->ml_name ? omem->ml_name : "empty omem->ml_name");
  (void) remap_node(&((*nmemp)->ml_type), omem->ml_type,
      old->t_id, new, mcd);
 }
 *nmemp = ((void*)0);

 return (new);
}
