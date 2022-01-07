
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ off_t ;
struct TYPE_2__ {scalar_t__ size; scalar_t__ offset; int * page; } ;


 int * MAP_FAILED ;
 int MAP_PRIVATE ;
 int PROT_READ ;
 int SEEK_CUR ;
 int SEEK_SET ;
 TYPE_1__* cpu_data ;
 int die (char*,...) ;
 int free (int *) ;
 int input_fd ;
 scalar_t__ lseek (int ,scalar_t__,int ) ;
 int * mmap (int *,scalar_t__,int ,int ,int ,scalar_t__) ;
 int munmap (int *,scalar_t__) ;
 scalar_t__ page_size ;
 scalar_t__ read (int ,int *,scalar_t__) ;
 scalar_t__ read_page ;
 int update_cpu_data_index (int) ;

__attribute__((used)) static void get_next_page(int cpu)
{
 off_t save_seek;
 off_t ret;

 if (!cpu_data[cpu].page)
  return;

 if (read_page) {
  if (cpu_data[cpu].size <= page_size) {
   free(cpu_data[cpu].page);
   cpu_data[cpu].page = ((void*)0);
   return;
  }

  update_cpu_data_index(cpu);


  save_seek = lseek(input_fd, 0, SEEK_CUR);

  ret = lseek(input_fd, cpu_data[cpu].offset, SEEK_SET);
  if (ret == (off_t)-1)
   die("failed to lseek");
  ret = read(input_fd, cpu_data[cpu].page, page_size);
  if (ret < 0)
   die("failed to read page");


  lseek(input_fd, save_seek, SEEK_SET);

  return;
 }

 munmap(cpu_data[cpu].page, page_size);
 cpu_data[cpu].page = ((void*)0);

 if (cpu_data[cpu].size <= page_size)
  return;

 update_cpu_data_index(cpu);

 cpu_data[cpu].page = mmap(((void*)0), page_size, PROT_READ, MAP_PRIVATE,
      input_fd, cpu_data[cpu].offset);
 if (cpu_data[cpu].page == MAP_FAILED)
  die("failed to mmap cpu %d at offset 0x%llx",
      cpu, cpu_data[cpu].offset);
}
