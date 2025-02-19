
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct machine {int dummy; } ;
struct dso {int dummy; } ;


 int EINVAL ;
 int close (int) ;
 int dso__data_fd (struct dso*,struct machine*) ;
 scalar_t__ elf_section_offset (int,char*) ;
 int unwind_spec_ehframe (struct dso*,struct machine*,scalar_t__,scalar_t__*,scalar_t__*,scalar_t__*) ;

__attribute__((used)) static int read_unwind_spec(struct dso *dso, struct machine *machine,
       u64 *table_data, u64 *segbase, u64 *fde_count)
{
 int ret = -EINVAL, fd;
 u64 offset;

 fd = dso__data_fd(dso, machine);
 if (fd < 0)
  return -EINVAL;

 offset = elf_section_offset(fd, ".eh_frame_hdr");
 close(fd);

 if (offset)
  ret = unwind_spec_ehframe(dso, machine, offset,
       table_data, segbase,
       fde_count);


 return ret;
}
