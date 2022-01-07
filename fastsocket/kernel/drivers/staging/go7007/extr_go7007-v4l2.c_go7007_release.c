
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct go7007_file {scalar_t__ buf_count; scalar_t__ ref_count; struct go7007_file* bufs; scalar_t__ in_use; struct go7007_file* go; } ;
struct go7007 {scalar_t__ buf_count; scalar_t__ ref_count; struct go7007* bufs; scalar_t__ in_use; struct go7007* go; } ;
struct file {struct go7007_file* private_data; } ;


 int go7007_streamoff (struct go7007_file*) ;
 int kfree (struct go7007_file*) ;

__attribute__((used)) static int go7007_release(struct file *file)
{
 struct go7007_file *gofh = file->private_data;
 struct go7007 *go = gofh->go;

 if (gofh->buf_count > 0) {
  go7007_streamoff(go);
  go->in_use = 0;
  kfree(gofh->bufs);
  gofh->buf_count = 0;
 }
 kfree(gofh);
 if (--go->ref_count == 0)
  kfree(go);
 file->private_data = ((void*)0);
 return 0;
}
