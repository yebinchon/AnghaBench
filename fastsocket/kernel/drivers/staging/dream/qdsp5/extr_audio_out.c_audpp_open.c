
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {struct audio* private_data; } ;
struct audio {int dummy; } ;


 struct audio the_audio ;

__attribute__((used)) static int audpp_open(struct inode *inode, struct file *file)
{
 struct audio *audio = &the_audio;

 file->private_data = audio;
 return 0;
}
