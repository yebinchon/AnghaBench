
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ssize_t ;


 scalar_t__ calc_data_size ;
 int die (char*,int ) ;
 int output_fd ;
 int output_file ;
 int write (int ,void const*,size_t) ;

__attribute__((used)) static ssize_t write_or_die(const void *buf, size_t len)
{
 int ret;

 if (calc_data_size) {
  calc_data_size += len;
  return len;
 }

 ret = write(output_fd, buf, len);
 if (ret < 0)
  die("writing to '%s'", output_file);

 return ret;
}
