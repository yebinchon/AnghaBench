
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int workspace; } ;


 int initialized ;
 TYPE_1__ stream ;
 int vfree (int ) ;
 int zlib_inflateEnd (TYPE_1__*) ;

void cramfs_uncompress_exit(void)
{
 if (!--initialized) {
  zlib_inflateEnd(&stream);
  vfree(stream.workspace);
 }
}
