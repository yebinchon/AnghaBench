
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dev_cmp ;
 int ipq_flush (int ,int) ;

__attribute__((used)) static void
ipq_dev_drop(int ifindex)
{
 ipq_flush(dev_cmp, ifindex);
}
