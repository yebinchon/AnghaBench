
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int b_page; } ;
typedef scalar_t__ __be32 ;


 int GFS2_MAGIC ;
 int KM_USER0 ;
 int bh_offset (struct buffer_head*) ;
 int clear_buffer_escaped (struct buffer_head*) ;
 scalar_t__ cpu_to_be32 (int ) ;
 void* kmap_atomic (int ,int ) ;
 int kunmap_atomic (void*,int ) ;
 int set_buffer_escaped (struct buffer_head*) ;

__attribute__((used)) static void gfs2_check_magic(struct buffer_head *bh)
{
 void *kaddr;
 __be32 *ptr;

 clear_buffer_escaped(bh);
 kaddr = kmap_atomic(bh->b_page, KM_USER0);
 ptr = kaddr + bh_offset(bh);
 if (*ptr == cpu_to_be32(GFS2_MAGIC))
  set_buffer_escaped(bh);
 kunmap_atomic(kaddr, KM_USER0);
}
