
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_dev_addr {int data; } ;


 int uwb_dev_addr_cmp (struct uwb_dev_addr const*,struct uwb_dev_addr const*) ;

__attribute__((used)) static inline int uwb_dev_addr_bcast(const struct uwb_dev_addr *addr)
{
 static const struct uwb_dev_addr bcast = { .data = { 0xff, 0xff } };
 return !uwb_dev_addr_cmp(addr, &bcast);
}
