
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_dev_addr {int data; } ;


 int memset (int *,int,int) ;

__attribute__((used)) static inline void uwb_dev_addr_init(struct uwb_dev_addr *addr)
{
 memset(&addr->data, 0xff, sizeof(addr->data));
}
