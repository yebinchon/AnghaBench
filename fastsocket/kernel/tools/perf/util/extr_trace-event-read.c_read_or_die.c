
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ calc_data_size ;
 int die (char*,int,int) ;
 int do_read (int ,void*,int) ;
 int input_fd ;

__attribute__((used)) static int read_or_die(void *data, int size)
{
 int r;

 r = do_read(input_fd, data, size);
 if (r <= 0)
  die("reading input file (size expected=%d received=%d)",
      size, r);

 if (calc_data_size)
  calc_data_size += r;

 return r;
}
