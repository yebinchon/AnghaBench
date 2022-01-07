
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Qdisc_class_hash {int hashelems; int * hash; int hashmask; } ;
struct Qdisc_class_common {int hnode; int classid; } ;


 int INIT_HLIST_NODE (int *) ;
 int hlist_add_head (int *,int *) ;
 unsigned int qdisc_class_hash (int ,int ) ;

void qdisc_class_hash_insert(struct Qdisc_class_hash *clhash,
        struct Qdisc_class_common *cl)
{
 unsigned int h;

 INIT_HLIST_NODE(&cl->hnode);
 h = qdisc_class_hash(cl->classid, clhash->hashmask);
 hlist_add_head(&cl->hnode, &clhash->hash[h]);
 clhash->hashelems++;
}
