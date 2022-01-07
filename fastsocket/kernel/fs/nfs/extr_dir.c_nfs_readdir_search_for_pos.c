
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct nfs_cache_array {scalar_t__ size; scalar_t__ eof_index; TYPE_1__* array; } ;
struct TYPE_7__ {scalar_t__ current_index; unsigned int cache_entry_index; int eof; int * dir_cookie; TYPE_2__* file; } ;
typedef TYPE_3__ nfs_readdir_descriptor_t ;
typedef scalar_t__ loff_t ;
struct TYPE_6__ {scalar_t__ f_pos; } ;
struct TYPE_5__ {int cookie; } ;


 int EAGAIN ;
 int EBADCOOKIE ;

__attribute__((used)) static
int nfs_readdir_search_for_pos(struct nfs_cache_array *array, nfs_readdir_descriptor_t *desc)
{
 loff_t diff = desc->file->f_pos - desc->current_index;
 unsigned int index;

 if (diff < 0)
  goto out_eof;
 if (diff >= array->size) {
  if (array->eof_index >= 0)
   goto out_eof;
  return -EAGAIN;
 }

 index = (unsigned int)diff;
 *desc->dir_cookie = array->array[index].cookie;
 desc->cache_entry_index = index;
 return 0;
out_eof:
 desc->eof = 1;
 return -EBADCOOKIE;
}
