
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cbq_sched_data {int clhash; } ;
struct cbq_class {struct cbq_class* sibling; struct cbq_class* children; int common; struct cbq_class* tparent; int qdisc; } ;


 int qdisc_class_hash_insert (int *,int *) ;
 struct cbq_sched_data* qdisc_priv (int ) ;

__attribute__((used)) static void cbq_link_class(struct cbq_class *this)
{
 struct cbq_sched_data *q = qdisc_priv(this->qdisc);
 struct cbq_class *parent = this->tparent;

 this->sibling = this;
 qdisc_class_hash_insert(&q->clhash, &this->common);

 if (parent == ((void*)0))
  return;

 if (parent->children == ((void*)0)) {
  parent->children = this;
 } else {
  this->sibling = parent->children->sibling;
  parent->children->sibling = this;
 }
}
