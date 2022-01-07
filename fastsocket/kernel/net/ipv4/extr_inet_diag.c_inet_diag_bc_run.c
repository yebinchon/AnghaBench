
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inet_diag_hostcond {int port; int prefix_len; int addr; int family; } ;
struct inet_diag_entry {int sport; int dport; int userlocks; int family; int * daddr; int * saddr; } ;
struct inet_diag_bc_op {int code; int no; scalar_t__ yes; } ;
typedef int __be32 ;


 int AF_INET ;
 int AF_INET6 ;
 int SOCK_BINDPORT_LOCK ;
 int bitstring_match (int *,int ,int ) ;
 int htonl (int) ;

__attribute__((used)) static int inet_diag_bc_run(const void *bc, int len,
       const struct inet_diag_entry *entry)
{
 while (len > 0) {
  int yes = 1;
  const struct inet_diag_bc_op *op = bc;

  switch (op->code) {
  case 131:
   break;
  case 132:
   yes = 0;
   break;
  case 129:
   yes = entry->sport >= op[1].no;
   break;
  case 128:
   yes = entry->dport <= op[1].no;
   break;
  case 134:
   yes = entry->dport >= op[1].no;
   break;
  case 133:
   yes = entry->dport <= op[1].no;
   break;
  case 136:
   yes = !(entry->userlocks & SOCK_BINDPORT_LOCK);
   break;
  case 130:
  case 135: {
   struct inet_diag_hostcond *cond;
   __be32 *addr;

   cond = (struct inet_diag_hostcond *)(op + 1);
   if (cond->port != -1 &&
       cond->port != (op->code == 130 ?
          entry->sport : entry->dport)) {
    yes = 0;
    break;
   }

   if (cond->prefix_len == 0)
    break;

   if (op->code == 130)
    addr = entry->saddr;
   else
    addr = entry->daddr;

   if (bitstring_match(addr, cond->addr,
         cond->prefix_len))
    break;
   if (entry->family == AF_INET6 &&
       cond->family == AF_INET) {
    if (addr[0] == 0 && addr[1] == 0 &&
        addr[2] == htonl(0xffff) &&
        bitstring_match(addr + 3, cond->addr,
          cond->prefix_len))
     break;
   }
   yes = 0;
   break;
  }
  }

  if (yes) {
   len -= op->yes;
   bc += op->yes;
  } else {
   len -= op->no;
   bc += op->no;
  }
 }
 return (len == 0);
}
