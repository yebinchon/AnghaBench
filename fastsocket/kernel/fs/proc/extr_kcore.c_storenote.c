
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct memelfnote {int datasz; struct elf_note* data; struct elf_note* name; int type; } ;
struct elf_note {int n_namesz; int n_descsz; int n_type; } ;
typedef int en ;


 int DUMP_WRITE (struct elf_note*,int) ;
 scalar_t__ roundup (unsigned long,int) ;
 int strlen (struct elf_note*) ;

__attribute__((used)) static char *storenote(struct memelfnote *men, char *bufp)
{
 struct elf_note en;



 en.n_namesz = strlen(men->name) + 1;
 en.n_descsz = men->datasz;
 en.n_type = men->type;

 do { memcpy(bufp,&en,sizeof(en)); bufp += sizeof(en); } while(0);
 do { memcpy(bufp,men->name,en.n_namesz); bufp += en.n_namesz; } while(0);


 bufp = (char*) roundup((unsigned long)bufp,4);
 do { memcpy(bufp,men->data,men->datasz); bufp += men->datasz; } while(0);
 bufp = (char*) roundup((unsigned long)bufp,4);



 return bufp;
}
