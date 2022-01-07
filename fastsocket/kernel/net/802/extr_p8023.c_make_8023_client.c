
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct datalink_proto {int request; scalar_t__ header_length; } ;


 int GFP_ATOMIC ;
 struct datalink_proto* kmalloc (int,int ) ;
 int p8023_request ;

struct datalink_proto *make_8023_client(void)
{
 struct datalink_proto *proto = kmalloc(sizeof(*proto), GFP_ATOMIC);

 if (proto) {
  proto->header_length = 0;
  proto->request = p8023_request;
 }
 return proto;
}
