
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct address_space {scalar_t__ nrpages; } ;


 int EIO ;
 int filemap_fdatawait (struct address_space*) ;
 int filemap_fdatawrite (struct address_space*) ;

int filemap_write_and_wait(struct address_space *mapping)
{
 int err = 0;

 if (mapping->nrpages) {
  err = filemap_fdatawrite(mapping);






  if (err != -EIO) {
   int err2 = filemap_fdatawait(mapping);
   if (!err)
    err = err2;
  }
 }
 return err;
}
