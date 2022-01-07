
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_chunk {int nr; int * bh; } ;


 int get_fs_excl () ;
 int put_fs_excl () ;
 int submit_ordered_buffer (int ) ;

__attribute__((used)) static void write_ordered_chunk(struct buffer_chunk *chunk)
{
 int i;
 get_fs_excl();
 for (i = 0; i < chunk->nr; i++) {
  submit_ordered_buffer(chunk->bh[i]);
 }
 chunk->nr = 0;
 put_fs_excl();
}
