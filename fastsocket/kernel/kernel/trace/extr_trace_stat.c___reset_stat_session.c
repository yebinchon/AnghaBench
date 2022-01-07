
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct rb_node* rb_node; } ;
struct stat_session {TYPE_1__ stat_root; int ts; } ;
struct rb_node {int dummy; } ;


 TYPE_1__ RB_ROOT ;
 struct rb_node* release_next (int ,struct rb_node*) ;

__attribute__((used)) static void __reset_stat_session(struct stat_session *session)
{
 struct rb_node *node = session->stat_root.rb_node;

 while (node)
  node = release_next(session->ts, node);

 session->stat_root = RB_ROOT;
}
