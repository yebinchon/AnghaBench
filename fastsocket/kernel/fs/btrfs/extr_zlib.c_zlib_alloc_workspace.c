
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct list_head {int dummy; } ;
struct TYPE_4__ {void* workspace; } ;
struct TYPE_3__ {void* workspace; } ;
struct workspace {struct list_head list; int buf; TYPE_2__ inf_strm; TYPE_1__ def_strm; } ;


 int ENOMEM ;
 struct list_head* ERR_PTR (int ) ;
 int GFP_NOFS ;
 int INIT_LIST_HEAD (struct list_head*) ;
 int PAGE_CACHE_SIZE ;
 int kmalloc (int ,int ) ;
 struct workspace* kzalloc (int,int ) ;
 void* vmalloc (int ) ;
 int zlib_deflate_workspacesize () ;
 int zlib_free_workspace (struct list_head*) ;
 int zlib_inflate_workspacesize () ;

__attribute__((used)) static struct list_head *zlib_alloc_workspace(void)
{
 struct workspace *workspace;

 workspace = kzalloc(sizeof(*workspace), GFP_NOFS);
 if (!workspace)
  return ERR_PTR(-ENOMEM);

 workspace->def_strm.workspace = vmalloc(zlib_deflate_workspacesize());
 workspace->inf_strm.workspace = vmalloc(zlib_inflate_workspacesize());
 workspace->buf = kmalloc(PAGE_CACHE_SIZE, GFP_NOFS);
 if (!workspace->def_strm.workspace ||
     !workspace->inf_strm.workspace || !workspace->buf)
  goto fail;

 INIT_LIST_HEAD(&workspace->list);

 return &workspace->list;
fail:
 zlib_free_workspace(&workspace->list);
 return ERR_PTR(-ENOMEM);
}
