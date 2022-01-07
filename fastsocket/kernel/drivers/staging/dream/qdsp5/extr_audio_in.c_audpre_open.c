
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {struct audio_in* private_data; } ;
struct audio_in {int dummy; } ;


 struct audio_in the_audio_in ;

__attribute__((used)) static int audpre_open(struct inode *inode, struct file *file)
{
 struct audio_in *audio = &the_audio_in;
 file->private_data = audio;
 return 0;
}
