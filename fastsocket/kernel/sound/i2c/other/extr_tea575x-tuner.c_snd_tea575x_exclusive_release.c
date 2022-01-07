
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_tea575x {int in_use; } ;
struct file {int dummy; } ;


 int clear_bit (int ,int *) ;
 struct snd_tea575x* video_drvdata (struct file*) ;

__attribute__((used)) static int snd_tea575x_exclusive_release(struct file *file)
{
 struct snd_tea575x *tea = video_drvdata(file);

 clear_bit(0, &tea->in_use);
 return 0;
}
