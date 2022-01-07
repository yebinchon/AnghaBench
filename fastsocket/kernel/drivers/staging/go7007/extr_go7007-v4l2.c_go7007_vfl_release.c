
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int dummy; } ;
struct go7007 {scalar_t__ ref_count; } ;


 int kfree (struct go7007*) ;
 int video_device_release (struct video_device*) ;
 struct go7007* video_get_drvdata (struct video_device*) ;

__attribute__((used)) static void go7007_vfl_release(struct video_device *vfd)
{
 struct go7007 *go = video_get_drvdata(vfd);

 video_device_release(vfd);
 if (--go->ref_count == 0)
  kfree(go);
}
