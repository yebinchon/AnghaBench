
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atari_stram_free (void*) ;

__attribute__((used)) static void AtaFree(void *obj, unsigned int size)
{
 atari_stram_free( obj );
}
