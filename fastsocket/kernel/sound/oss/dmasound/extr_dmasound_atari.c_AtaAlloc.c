
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfp_t ;


 void* atari_stram_alloc (unsigned int,char*) ;

__attribute__((used)) static void *AtaAlloc(unsigned int size, gfp_t flags)
{
 return atari_stram_alloc(size, "dmasound");
}
