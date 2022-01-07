
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tomoyo_io_buffer {scalar_t__ read_avail; int read_eof; int read_step; } ;
struct tomoyo_domain_info {TYPE_1__* domainname; int profile; } ;
struct task_struct {int dummy; } ;
struct TYPE_2__ {int name; } ;


 struct task_struct* find_task_by_vpid (int const) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int tasklist_lock ;
 int tomoyo_io_printf (struct tomoyo_io_buffer*,char*,int const,int ,int ) ;
 struct tomoyo_domain_info* tomoyo_real_domain (struct task_struct*) ;

__attribute__((used)) static int tomoyo_read_pid(struct tomoyo_io_buffer *head)
{
 if (head->read_avail == 0 && !head->read_eof) {
  const int pid = head->read_step;
  struct task_struct *p;
  struct tomoyo_domain_info *domain = ((void*)0);
  read_lock(&tasklist_lock);
  p = find_task_by_vpid(pid);
  if (p)
   domain = tomoyo_real_domain(p);
  read_unlock(&tasklist_lock);
  if (domain)
   tomoyo_io_printf(head, "%d %u %s", pid, domain->profile,
      domain->domainname->name);
  head->read_eof = 1;
 }
 return 0;
}
