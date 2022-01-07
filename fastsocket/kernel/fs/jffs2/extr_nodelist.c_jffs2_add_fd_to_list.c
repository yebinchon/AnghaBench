
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jffs2_sb_info {int dummy; } ;
struct jffs2_full_dirent {scalar_t__ nhash; scalar_t__ version; struct jffs2_full_dirent* next; scalar_t__ raw; int ino; int name; } ;


 int dbg_dentlist (char*,int ,int ) ;
 int jffs2_free_full_dirent (struct jffs2_full_dirent*) ;
 int jffs2_mark_node_obsolete (struct jffs2_sb_info*,scalar_t__) ;
 int strcmp (int ,int ) ;

void jffs2_add_fd_to_list(struct jffs2_sb_info *c, struct jffs2_full_dirent *new, struct jffs2_full_dirent **list)
{
 struct jffs2_full_dirent **prev = list;

 dbg_dentlist("add dirent \"%s\", ino #%u\n", new->name, new->ino);

 while ((*prev) && (*prev)->nhash <= new->nhash) {
  if ((*prev)->nhash == new->nhash && !strcmp((*prev)->name, new->name)) {

   if (new->version < (*prev)->version) {
    dbg_dentlist("Eep! Marking new dirent node obsolete, old is \"%s\", ino #%u\n",
     (*prev)->name, (*prev)->ino);
    jffs2_mark_node_obsolete(c, new->raw);
    jffs2_free_full_dirent(new);
   } else {
    dbg_dentlist("marking old dirent \"%s\", ino #%u obsolete\n",
     (*prev)->name, (*prev)->ino);
    new->next = (*prev)->next;


    if ((*prev)->raw)
     jffs2_mark_node_obsolete(c, ((*prev)->raw));
    jffs2_free_full_dirent(*prev);
    *prev = new;
   }
   return;
  }
  prev = &((*prev)->next);
 }
 new->next = *prev;
 *prev = new;
}
