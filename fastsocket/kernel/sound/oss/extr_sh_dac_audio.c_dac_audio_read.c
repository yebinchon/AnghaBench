
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
typedef int ssize_t ;
typedef int loff_t ;


 int EINVAL ;

__attribute__((used)) static ssize_t dac_audio_read(struct file *file, char *buf, size_t count,
         loff_t * ppos)
{
 return -EINVAL;
}
