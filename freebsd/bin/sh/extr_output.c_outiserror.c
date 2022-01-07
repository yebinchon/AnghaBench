
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct output {int flags; } ;


 int OUTPUT_ERR ;

int
outiserror(struct output *file)
{
 return (file->flags & OUTPUT_ERR);
}
