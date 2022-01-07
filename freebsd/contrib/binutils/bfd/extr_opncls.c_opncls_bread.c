
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opncls {scalar_t__ (* pread ) (struct bfd*,int ,void*,scalar_t__,int ) ;int where; int stream; } ;
struct bfd {struct opncls* iostream; } ;
typedef scalar_t__ file_ptr ;


 scalar_t__ stub1 (struct bfd*,int ,void*,scalar_t__,int ) ;

__attribute__((used)) static file_ptr
opncls_bread (struct bfd *abfd, void *buf, file_ptr nbytes)
{
  struct opncls *vec = abfd->iostream;
  file_ptr nread = (vec->pread) (abfd, vec->stream, buf, nbytes, vec->where);
  if (nread < 0)
    return nread;
  vec->where += nread;
  return nread;
}
