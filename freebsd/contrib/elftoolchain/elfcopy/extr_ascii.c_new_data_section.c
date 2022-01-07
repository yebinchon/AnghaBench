
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct section {int dummy; } ;
struct elfcopy {int dummy; } ;


 int ELF_T_BYTE ;
 int EXIT_FAILURE ;
 int SHF_ALLOC ;
 int SHF_WRITE ;
 int SHT_PROGBITS ;
 int _SEC_NAMESZ ;
 struct section* create_external_section (struct elfcopy*,char*,char*,int *,int ,int ,int ,int ,int,int,int ,int ) ;
 int errx (int ,char*) ;
 char* malloc (int ) ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static struct section *
new_data_section(struct elfcopy *ecp, int sec_index, uint64_t off,
    uint64_t addr)
{
 char *name;

 if ((name = malloc(_SEC_NAMESZ)) == ((void*)0))
  errx(EXIT_FAILURE, "malloc failed");
 snprintf(name, _SEC_NAMESZ, ".sec%d", sec_index);

 return (create_external_section(ecp, name, name, ((void*)0), 0, off,
  SHT_PROGBITS, ELF_T_BYTE, SHF_ALLOC | SHF_WRITE, 1, addr, 0));
}
