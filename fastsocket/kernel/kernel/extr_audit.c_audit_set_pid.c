
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlmsghdr {int nlmsg_pid; } ;
struct audit_buffer {int skb; } ;
typedef int pid_t ;


 struct nlmsghdr* nlmsg_hdr (int ) ;

__attribute__((used)) static void audit_set_pid(struct audit_buffer *ab, pid_t pid)
{
 if (ab) {
  struct nlmsghdr *nlh = nlmsg_hdr(ab->skb);
  nlh->nlmsg_pid = pid;
 }
}
