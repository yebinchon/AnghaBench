
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fscache_operation {int debug_id; } ;


 int _enter (char*,int ) ;

__attribute__((used)) static void fscache_release_write_op(struct fscache_operation *_op)
{
 _enter("{OP%x}", _op->debug_id);
}
