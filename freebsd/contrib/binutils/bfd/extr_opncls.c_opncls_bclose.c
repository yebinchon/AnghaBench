
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opncls {int (* close ) (struct bfd*,int ) ;int stream; } ;
struct bfd {struct opncls* iostream; } ;


 int stub1 (struct bfd*,int ) ;

__attribute__((used)) static int
opncls_bclose (struct bfd *abfd)
{
  struct opncls *vec = abfd->iostream;


  int status = 0;
  if (vec->close != ((void*)0))
    status = (vec->close) (abfd, vec->stream);
  abfd->iostream = ((void*)0);
  return status;
}
