
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lang_nocrossrefs {int * list; struct lang_nocrossrefs* next; } ;
typedef int lang_nocrossref_type ;
struct TYPE_2__ {int notice_all; } ;


 int TRUE ;
 TYPE_1__ link_info ;
 struct lang_nocrossrefs* nocrossref_list ;
 struct lang_nocrossrefs* xmalloc (int) ;

void
lang_add_nocrossref (lang_nocrossref_type *l)
{
  struct lang_nocrossrefs *n;

  n = xmalloc (sizeof *n);
  n->next = nocrossref_list;
  n->list = l;
  nocrossref_list = n;


  link_info.notice_all = TRUE;
}
