
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct link {int next_out_no; scalar_t__ next_out; } ;


 int buf_msg (scalar_t__) ;
 int mod (int ) ;
 int msg_seqno (int ) ;

__attribute__((used)) static u32 link_next_sent(struct link *l_ptr)
{
 if (l_ptr->next_out)
  return msg_seqno(buf_msg(l_ptr->next_out));
 return mod(l_ptr->next_out_no);
}
