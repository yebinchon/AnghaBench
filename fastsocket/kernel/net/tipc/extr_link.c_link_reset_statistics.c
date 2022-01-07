
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int recv_info; int sent_info; } ;
struct link {int next_in_no; TYPE_1__ stats; int next_out_no; } ;


 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void link_reset_statistics(struct link *l_ptr)
{
 memset(&l_ptr->stats, 0, sizeof(l_ptr->stats));
 l_ptr->stats.sent_info = l_ptr->next_out_no;
 l_ptr->stats.recv_info = l_ptr->next_in_no;
}
