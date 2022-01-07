
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_segment_buffer {int dummy; } ;


 int memset (void*,int ,int) ;

__attribute__((used)) static void nilfs_segbuf_init_once(void *obj)
{
 memset(obj, 0, sizeof(struct nilfs_segment_buffer));
}
