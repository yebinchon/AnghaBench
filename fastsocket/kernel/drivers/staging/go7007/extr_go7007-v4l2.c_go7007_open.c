
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct go7007_file {scalar_t__ buf_count; int lock; struct go7007* go; } ;
struct go7007 {scalar_t__ status; int ref_count; } ;
struct file {struct go7007_file* private_data; } ;


 int EBUSY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ STATUS_ONLINE ;
 struct go7007_file* kmalloc (int,int ) ;
 int mutex_init (int *) ;
 int video_devdata (struct file*) ;
 struct go7007* video_get_drvdata (int ) ;

__attribute__((used)) static int go7007_open(struct file *file)
{
 struct go7007 *go = video_get_drvdata(video_devdata(file));
 struct go7007_file *gofh;

 if (go->status != STATUS_ONLINE)
  return -EBUSY;
 gofh = kmalloc(sizeof(struct go7007_file), GFP_KERNEL);
 if (gofh == ((void*)0))
  return -ENOMEM;
 ++go->ref_count;
 gofh->go = go;
 mutex_init(&gofh->lock);
 gofh->buf_count = 0;
 file->private_data = gofh;
 return 0;
}
