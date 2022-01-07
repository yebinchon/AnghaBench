
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct data {size_t len; scalar_t__ val; } ;
typedef int FILE ;


 struct data data_grow_for (struct data,size_t) ;
 int die (char*,...) ;
 struct data empty_data ;
 int errno ;
 int feof (int *) ;
 scalar_t__ ferror (int *) ;
 size_t fread (scalar_t__,int,size_t,int *) ;
 int strerror (int ) ;

struct data data_copy_file(FILE *f, size_t maxlen)
{
 struct data d = empty_data;

 while (!feof(f) && (d.len < maxlen)) {
  size_t chunksize, ret;

  if (maxlen == -1)
   chunksize = 4096;
  else
   chunksize = maxlen - d.len;

  d = data_grow_for(d, chunksize);
  ret = fread(d.val + d.len, 1, chunksize, f);

  if (ferror(f))
   die("Error reading file into data: %s", strerror(errno));

  if (d.len + ret < d.len)
   die("Overflow reading file into data\n");

  d.len += ret;
 }

 return d;
}
