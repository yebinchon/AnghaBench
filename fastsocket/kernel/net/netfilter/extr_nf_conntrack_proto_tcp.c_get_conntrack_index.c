
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcphdr {scalar_t__ ack; scalar_t__ fin; scalar_t__ syn; scalar_t__ rst; } ;


 unsigned int TCP_ACK_SET ;
 unsigned int TCP_FIN_SET ;
 unsigned int TCP_NONE_SET ;
 unsigned int TCP_RST_SET ;
 unsigned int TCP_SYNACK_SET ;
 unsigned int TCP_SYN_SET ;

__attribute__((used)) static unsigned int get_conntrack_index(const struct tcphdr *tcph)
{
 if (tcph->rst) return TCP_RST_SET;
 else if (tcph->syn) return (tcph->ack ? TCP_SYNACK_SET : TCP_SYN_SET);
 else if (tcph->fin) return TCP_FIN_SET;
 else if (tcph->ack) return TCP_ACK_SET;
 else return TCP_NONE_SET;
}
