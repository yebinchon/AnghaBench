
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {scalar_t__ private_data; } ;
struct cs4297a_state {int dummy; } ;


 int VALIDATE_STATE (struct cs4297a_state*) ;

__attribute__((used)) static int cs4297a_release_mixdev(struct inode *inode, struct file *file)
{
 struct cs4297a_state *s =
     (struct cs4297a_state *) file->private_data;

 VALIDATE_STATE(s);
 return 0;
}
