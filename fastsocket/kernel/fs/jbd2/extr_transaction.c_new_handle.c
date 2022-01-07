
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int h_buffer_credits; int h_ref; int h_lockdep_map; } ;
typedef TYPE_1__ handle_t ;


 int GFP_NOFS ;
 TYPE_1__* jbd2_alloc_handle (int ) ;
 int jbd2_handle_key ;
 int lockdep_init_map (int *,char*,int *,int ) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static handle_t *new_handle(int nblocks)
{
 handle_t *handle = jbd2_alloc_handle(GFP_NOFS);
 if (!handle)
  return ((void*)0);
 memset(handle, 0, sizeof(*handle));
 handle->h_buffer_credits = nblocks;
 handle->h_ref = 1;

 lockdep_init_map(&handle->h_lockdep_map, "jbd2_handle",
      &jbd2_handle_key, 0);

 return handle;
}
