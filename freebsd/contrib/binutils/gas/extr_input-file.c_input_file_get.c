
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ (char*) ;
 int as_bad (int ,int ,int ) ;
 int errno ;
 int f_in ;
 int file_name ;
 int fread (char*,int,int,int ) ;
 int xstrerror (int ) ;

__attribute__((used)) static int
input_file_get (char *buf, int buflen)
{
  int size;

  size = fread (buf, sizeof (char), buflen, f_in);
  if (size < 0)
    {
      as_bad (_("can't read from %s: %s"), file_name, xstrerror (errno));
      size = 0;
    }
  return size;
}
