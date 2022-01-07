
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int dac_audio_stop () ;
 int dac_audio_sync () ;
 scalar_t__ in_use ;

__attribute__((used)) static int dac_audio_release(struct inode *inode, struct file *file)
{
 dac_audio_sync();
 dac_audio_stop();
 in_use = 0;

 return 0;
}
