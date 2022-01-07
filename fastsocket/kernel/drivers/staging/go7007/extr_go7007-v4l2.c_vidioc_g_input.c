
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct go7007_file {struct go7007* go; } ;
struct go7007 {unsigned int input; } ;
struct file {int dummy; } ;



__attribute__((used)) static int vidioc_g_input(struct file *file, void *priv, unsigned int *input)
{
 struct go7007 *go = ((struct go7007_file *) priv)->go;

 *input = go->input;

 return 0;
}
