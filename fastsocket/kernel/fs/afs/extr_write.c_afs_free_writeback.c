
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_writeback {int key; } ;


 int _enter (char*) ;
 int key_put (int ) ;
 int kfree (struct afs_writeback*) ;

__attribute__((used)) static void afs_free_writeback(struct afs_writeback *wb)
{
 _enter("");
 key_put(wb->key);
 kfree(wb);
}
