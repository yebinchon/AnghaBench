
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_proto {struct rsvp_head* root; } ;
struct rsvp_head {int dummy; } ;


 int ENOBUFS ;
 int GFP_KERNEL ;
 struct rsvp_head* kzalloc (int,int ) ;

__attribute__((used)) static int rsvp_init(struct tcf_proto *tp)
{
 struct rsvp_head *data;

 data = kzalloc(sizeof(struct rsvp_head), GFP_KERNEL);
 if (data) {
  tp->root = data;
  return 0;
 }
 return -ENOBUFS;
}
