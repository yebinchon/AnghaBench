
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fuse_req {TYPE_1__* page_descs; } ;
struct TYPE_2__ {scalar_t__ offset; scalar_t__ length; } ;


 scalar_t__ PAGE_SIZE ;

__attribute__((used)) static inline void fuse_page_descs_length_init(struct fuse_req *req,
  unsigned index, unsigned nr_pages)
{
 int i;

 for (i = index; i < index + nr_pages; i++)
  req->page_descs[i].length = PAGE_SIZE -
   req->page_descs[i].offset;
}
