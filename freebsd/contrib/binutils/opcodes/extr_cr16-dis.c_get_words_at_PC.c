
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct disassemble_info {int dummy; } ;
typedef int bfd_vma ;
typedef int ULONGLONG ;


 scalar_t__ allWords ;
 scalar_t__ get_word_at_PC (int,struct disassemble_info*) ;
 scalar_t__* words ;

__attribute__((used)) static void
get_words_at_PC (bfd_vma memaddr, struct disassemble_info *info)
{
  int i;
  bfd_vma mem;

  for (i = 0, mem = memaddr; i < 3; i++, mem += 2)
    words[i] = get_word_at_PC (mem, info);

  allWords =
    ((ULONGLONG) words[0] << 32) + ((unsigned long) words[1] << 16) + words[2];
}
