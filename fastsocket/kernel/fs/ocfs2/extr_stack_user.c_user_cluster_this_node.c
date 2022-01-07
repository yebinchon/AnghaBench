
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ocfs2_control_get_this_node () ;

__attribute__((used)) static int user_cluster_this_node(unsigned int *this_node)
{
 int rc;

 rc = ocfs2_control_get_this_node();
 if (rc < 0)
  return rc;

 *this_node = rc;
 return 0;
}
