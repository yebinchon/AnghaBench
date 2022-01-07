
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_proto {struct flow_head* root; } ;
struct flow_head {int filters; } ;


 int ENOBUFS ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct flow_head* kzalloc (int,int ) ;

__attribute__((used)) static int flow_init(struct tcf_proto *tp)
{
 struct flow_head *head;

 head = kzalloc(sizeof(*head), GFP_KERNEL);
 if (head == ((void*)0))
  return -ENOBUFS;
 INIT_LIST_HEAD(&head->filters);
 tp->root = head;
 return 0;
}
