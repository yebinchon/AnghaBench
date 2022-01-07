
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
struct opncls {int (* stat ) (struct bfd*,int ,struct stat*) ;int stream; } ;
struct bfd {struct opncls* iostream; } ;


 int memset (struct stat*,int ,int) ;
 int stub1 (struct bfd*,int ,struct stat*) ;

__attribute__((used)) static int
opncls_bstat (struct bfd *abfd, struct stat *sb)
{
  struct opncls *vec = abfd->iostream;

  memset (sb, 0, sizeof (*sb));
  if (vec->stat == ((void*)0))
    return 0;

  return (vec->stat) (abfd, vec->stream, sb);
}
