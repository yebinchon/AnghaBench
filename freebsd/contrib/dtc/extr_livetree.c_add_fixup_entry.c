
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct property {int name; } ;
struct node {int fullpath; } ;
struct marker {scalar_t__ type; int ref; int offset; } ;
struct dt_info {int dummy; } ;


 scalar_t__ REF_PHANDLE ;
 int append_to_property (struct node*,int ,char*,scalar_t__) ;
 int assert (int) ;
 int die (char*) ;
 int free (char*) ;
 scalar_t__ strchr (int ,char) ;
 scalar_t__ strlen (char*) ;
 int xasprintf (char**,char*,int ,int ,int ) ;

__attribute__((used)) static void add_fixup_entry(struct dt_info *dti, struct node *fn,
       struct node *node, struct property *prop,
       struct marker *m)
{
 char *entry;


 assert(m->type == REF_PHANDLE);


 if (strchr(node->fullpath, ':') || strchr(prop->name, ':'))
  die("arguments should not contain ':'\n");

 xasprintf(&entry, "%s:%s:%u",
   node->fullpath, prop->name, m->offset);
 append_to_property(fn, m->ref, entry, strlen(entry) + 1);

 free(entry);
}
