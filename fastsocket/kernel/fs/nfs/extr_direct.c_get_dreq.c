
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_direct_req {int io_count; } ;


 int atomic_inc (int *) ;

__attribute__((used)) static inline void get_dreq(struct nfs_direct_req *dreq)
{
 atomic_inc(&dreq->io_count);
}
