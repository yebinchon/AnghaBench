
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link {scalar_t__ blocked; scalar_t__ exp_msg_count; } ;



__attribute__((used)) static int link_blocked(struct link *l_ptr)
{
 return (l_ptr->exp_msg_count || l_ptr->blocked);
}
