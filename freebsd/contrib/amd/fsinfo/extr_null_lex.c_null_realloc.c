
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int yy_size_t ;


 scalar_t__ realloc (char*,int ) ;

void *null_realloc (void * ptr, yy_size_t size )
{







 return (void *) realloc( (char *) ptr, size );
}
