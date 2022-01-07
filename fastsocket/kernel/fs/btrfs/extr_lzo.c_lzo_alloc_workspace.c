
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct workspace {struct list_head list; void* cbuf; void* buf; void* mem; } ;


 int ENOMEM ;
 struct list_head* ERR_PTR (int ) ;
 int GFP_NOFS ;
 int INIT_LIST_HEAD (struct list_head*) ;
 int LZO1X_MEM_COMPRESS ;
 int PAGE_CACHE_SIZE ;
 struct workspace* kzalloc (int,int ) ;
 int lzo1x_worst_compress (int ) ;
 int lzo_free_workspace (struct list_head*) ;
 void* vmalloc (int ) ;

__attribute__((used)) static struct list_head *lzo_alloc_workspace(void)
{
 struct workspace *workspace;

 workspace = kzalloc(sizeof(*workspace), GFP_NOFS);
 if (!workspace)
  return ERR_PTR(-ENOMEM);

 workspace->mem = vmalloc(LZO1X_MEM_COMPRESS);
 workspace->buf = vmalloc(lzo1x_worst_compress(PAGE_CACHE_SIZE));
 workspace->cbuf = vmalloc(lzo1x_worst_compress(PAGE_CACHE_SIZE));
 if (!workspace->mem || !workspace->buf || !workspace->cbuf)
  goto fail;

 INIT_LIST_HEAD(&workspace->list);

 return &workspace->list;
fail:
 lzo_free_workspace(&workspace->list);
 return ERR_PTR(-ENOMEM);
}
