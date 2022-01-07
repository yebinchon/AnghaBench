
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ExtInstruction {char flags; char* name; } ;
struct ExtAuxRegister {char* name; unsigned char address; struct ExtAuxRegister* next; } ;
struct TYPE_2__ {char** coreRegisters; char** condCodes; struct ExtAuxRegister* auxRegisters; struct ExtInstruction** instructions; } ;






 TYPE_1__ arc_extension_map ;
 int cleanup_ext_map () ;
 scalar_t__ malloc (int) ;
 int strcpy (char*,char*) ;
 scalar_t__ xmalloc (int) ;

int
arcExtMap_add(void *base, unsigned long length)
{
  unsigned char *block = base;
  unsigned char *p = block;


  cleanup_ext_map();

  while (p && p < (block + length))
    {
      if (p[0] == 0)
 return -1;

      switch (p[1])
 {
 case 128:
   {
     char opcode = p[2];
     char minor = p[3];
     char * insn_name = (char *) xmalloc(( (int)*p-5) * sizeof(char));
     struct ExtInstruction * insn =
       (struct ExtInstruction *) xmalloc(sizeof(struct ExtInstruction));

     if (opcode==3)
       opcode = 0x1f - 0x10 + minor - 0x09 + 1;
     else
       opcode -= 0x10;
     insn -> flags = (char) *(p+4);
     strcpy (insn_name, (char *) (p+5));
     insn -> name = insn_name;
     arc_extension_map.instructions[(int) opcode] = insn;
   }
   break;

 case 129:
   {
     char * core_name = (char *) xmalloc(((int)*p-3) * sizeof(char));

     strcpy(core_name, (char *) (p+3));
     arc_extension_map.coreRegisters[p[2]-32] = core_name;
   }
   break;

 case 130:
   {
     char * cc_name = (char *) xmalloc( ((int)*p-3) * sizeof(char));
     strcpy(cc_name, (char *) (p+3));
     arc_extension_map.condCodes[p[2]-16] = cc_name;
   }
   break;

 case 131:
   {

     struct ExtAuxRegister *newAuxRegister =
       (struct ExtAuxRegister *)malloc(sizeof(struct ExtAuxRegister));
     char * aux_name = (char *) xmalloc ( ((int)*p-6) * sizeof(char));

     strcpy (aux_name, (char *) (p+6));
     newAuxRegister->name = aux_name;
     newAuxRegister->address = p[2]<<24 | p[3]<<16 | p[4]<<8 | p[5];
     newAuxRegister->next = arc_extension_map.auxRegisters;
     arc_extension_map.auxRegisters = newAuxRegister;
   }
   break;

 default:
   return -1;

 }
      p += p[0];
    }

  return 0;
}
