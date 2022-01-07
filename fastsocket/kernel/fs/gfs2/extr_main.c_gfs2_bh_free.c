
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void free_buffer_head (void*) ;

__attribute__((used)) static void gfs2_bh_free(void *ptr, void *data)
{
 return free_buffer_head(ptr);
}
