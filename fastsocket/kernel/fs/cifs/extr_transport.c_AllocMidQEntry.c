
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smb_hdr {int Command; int Mid; } ;
struct mid_q_entry {int mid_state; TYPE_1__* callback_data; int callback; int when_alloc; int command; int pid; int mid; } ;
struct TCP_Server_Info {int dummy; } ;
struct TYPE_2__ {int pid; } ;


 int GFP_NOFS ;
 int MID_REQUEST_ALLOCATED ;
 int atomic_inc (int *) ;
 int cERROR (int,char*) ;
 int cFYI (int,char*,int ) ;
 int cifs_mid_poolp ;
 int cpu_to_le16 (int ) ;
 TYPE_1__* current ;
 int jiffies ;
 struct mid_q_entry* mempool_alloc (int ,int ) ;
 int memset (struct mid_q_entry*,int ,int) ;
 int midCount ;
 int wake_up_task ;

struct mid_q_entry *
AllocMidQEntry(const struct smb_hdr *smb_buffer, struct TCP_Server_Info *server)
{
 struct mid_q_entry *temp;

 if (server == ((void*)0)) {
  cERROR(1, "Null TCP session in AllocMidQEntry");
  return ((void*)0);
 }

 temp = mempool_alloc(cifs_mid_poolp, GFP_NOFS);
 if (temp == ((void*)0))
  return temp;
 else {
  memset(temp, 0, sizeof(struct mid_q_entry));
  temp->mid = smb_buffer->Mid;
  temp->pid = current->pid;
  temp->command = cpu_to_le16(smb_buffer->Command);
  cFYI(1, "For smb_command %d", smb_buffer->Command);


  temp->when_alloc = jiffies;





  temp->callback = wake_up_task;
  temp->callback_data = current;
 }

 atomic_inc(&midCount);
 temp->mid_state = MID_REQUEST_ALLOCATED;
 return temp;
}
