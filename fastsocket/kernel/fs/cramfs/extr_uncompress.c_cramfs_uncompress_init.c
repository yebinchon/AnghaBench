
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ avail_in; int * next_in; int workspace; } ;


 int ENOMEM ;
 scalar_t__ initialized ;
 TYPE_1__ stream ;
 int vmalloc (int ) ;
 int zlib_inflateInit (TYPE_1__*) ;
 int zlib_inflate_workspacesize () ;

int cramfs_uncompress_init(void)
{
 if (!initialized++) {
  stream.workspace = vmalloc(zlib_inflate_workspacesize());
  if ( !stream.workspace ) {
   initialized = 0;
   return -ENOMEM;
  }
  stream.next_in = ((void*)0);
  stream.avail_in = 0;
  zlib_inflateInit(&stream);
 }
 return 0;
}
