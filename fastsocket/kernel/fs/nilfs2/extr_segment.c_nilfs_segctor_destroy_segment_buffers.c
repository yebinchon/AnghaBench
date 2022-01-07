
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_segment_buffer {int sb_list; } ;
struct nilfs_sc_info {int sc_segbufs; } ;


 struct nilfs_segment_buffer* NILFS_FIRST_SEGBUF (int *) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int nilfs_segbuf_free (struct nilfs_segment_buffer*) ;

__attribute__((used)) static void nilfs_segctor_destroy_segment_buffers(struct nilfs_sc_info *sci)
{
 struct nilfs_segment_buffer *segbuf;

 while (!list_empty(&sci->sc_segbufs)) {
  segbuf = NILFS_FIRST_SEGBUF(&sci->sc_segbufs);
  list_del_init(&segbuf->sb_list);
  nilfs_segbuf_free(segbuf);
 }

}
