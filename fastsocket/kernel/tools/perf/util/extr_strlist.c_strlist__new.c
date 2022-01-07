
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int node_delete; int node_new; int node_cmp; } ;
struct strlist {int dupstr; TYPE_1__ rblist; } ;


 int free (struct strlist*) ;
 struct strlist* malloc (int) ;
 int rblist__init (TYPE_1__*) ;
 int strlist__node_cmp ;
 int strlist__node_delete ;
 int strlist__node_new ;
 scalar_t__ strlist__parse_list (struct strlist*,char const*) ;

struct strlist *strlist__new(bool dupstr, const char *slist)
{
 struct strlist *self = malloc(sizeof(*self));

 if (self != ((void*)0)) {
  rblist__init(&self->rblist);
  self->rblist.node_cmp = strlist__node_cmp;
  self->rblist.node_new = strlist__node_new;
  self->rblist.node_delete = strlist__node_delete;

  self->dupstr = dupstr;
  if (slist && strlist__parse_list(self, slist) != 0)
   goto out_error;
 }

 return self;
out_error:
 free(self);
 return ((void*)0);
}
