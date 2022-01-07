
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IPPROTO_IP ;
 int IPPROTO_UDP ;

__attribute__((used)) static inline int default_protocol_dgram(int protocol)
{
 return (protocol == IPPROTO_IP || protocol == IPPROTO_UDP);
}
