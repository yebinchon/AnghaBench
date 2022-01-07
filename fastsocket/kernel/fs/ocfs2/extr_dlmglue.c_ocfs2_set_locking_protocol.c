
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lproto ;
 int ocfs2_stack_glue_set_locking_protocol (int *) ;

void ocfs2_set_locking_protocol(void)
{
 ocfs2_stack_glue_set_locking_protocol(&lproto);
}
