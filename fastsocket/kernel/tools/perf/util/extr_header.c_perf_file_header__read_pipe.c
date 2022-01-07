
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_pipe_file_header {int size; int magic; } ;
struct perf_header {scalar_t__ needs_swap; } ;


 int STDOUT_FILENO ;
 int bswap_64 (int ) ;
 scalar_t__ check_magic_endian (int ,int ,int,struct perf_header*) ;
 scalar_t__ do_write (int ,struct perf_pipe_file_header*,int) ;
 int pr_debug (char*) ;
 int readn (int,struct perf_pipe_file_header*,int) ;

__attribute__((used)) static int perf_file_header__read_pipe(struct perf_pipe_file_header *header,
           struct perf_header *ph, int fd,
           bool repipe)
{
 int ret;

 ret = readn(fd, header, sizeof(*header));
 if (ret <= 0)
  return -1;

 if (check_magic_endian(header->magic, header->size, 1, ph) < 0) {
  pr_debug("endian/magic failed\n");
  return -1;
 }

 if (ph->needs_swap)
  header->size = bswap_64(header->size);

 if (repipe && do_write(STDOUT_FILENO, header, sizeof(*header)) < 0)
  return -1;

 return 0;
}
