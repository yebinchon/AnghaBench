
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_bind_addr {int port; int address_list; scalar_t__ malloced; } ;
typedef int __u16 ;


 int INIT_LIST_HEAD (int *) ;

void sctp_bind_addr_init(struct sctp_bind_addr *bp, __u16 port)
{
 bp->malloced = 0;

 INIT_LIST_HEAD(&bp->address_list);
 bp->port = port;
}
