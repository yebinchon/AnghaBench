
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mid_q_entry {struct TCP_Server_Info* callback_data; } ;
struct TCP_Server_Info {int dummy; } ;


 int DeleteMidQEntry (struct mid_q_entry*) ;
 int cifs_add_credits (struct TCP_Server_Info*,int) ;

__attribute__((used)) static void
cifs_echo_callback(struct mid_q_entry *mid)
{
 struct TCP_Server_Info *server = mid->callback_data;

 DeleteMidQEntry(mid);
 cifs_add_credits(server, 1);
}
