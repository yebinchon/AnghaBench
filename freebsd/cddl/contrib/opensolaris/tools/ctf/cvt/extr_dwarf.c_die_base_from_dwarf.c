
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char intr_iformat; int intr_signed; int intr_fformat; void* intr_type; } ;
typedef TYPE_1__ intr_t ;
typedef int dwarf_t ;
typedef int Dwarf_Signed ;
typedef int Dwarf_Off ;
typedef int Dwarf_Die ;
 int DW_ATTR_REQ ;
 int DW_AT_encoding ;
 void* INTR_INT ;
 void* INTR_REAL ;
 int die_base_type2enc (int *,int ,int,size_t) ;
 int die_signed (int *,int ,int ,int*,int ) ;
 int terminate (char*,int ,int) ;
 TYPE_1__* xcalloc (int) ;

__attribute__((used)) static intr_t *
die_base_from_dwarf(dwarf_t *dw, Dwarf_Die base, Dwarf_Off off, size_t sz)
{
 intr_t *intr = xcalloc(sizeof (intr_t));
 Dwarf_Signed enc;

 (void) die_signed(dw, base, DW_AT_encoding, &enc, DW_ATTR_REQ);

 switch (enc) {
 case 129:
 case 136:
  intr->intr_type = INTR_INT;
  break;
 case 128:
  intr->intr_type = INTR_INT;
  intr->intr_iformat = 'c';
  break;
 case 131:
  intr->intr_type = INTR_INT;
  intr->intr_signed = 1;
  break;
 case 130:
  intr->intr_type = INTR_INT;
  intr->intr_signed = 1;
  intr->intr_iformat = 'c';
  break;
 case 135:
  intr->intr_type = INTR_INT;
  intr->intr_signed = 1;
  intr->intr_iformat = 'b';
  break;
 case 133:
 case 134:
 case 132:




  intr->intr_type = INTR_REAL;
  intr->intr_signed = 1;
  intr->intr_fformat = die_base_type2enc(dw, off, enc, sz);
  break;
 default:
  terminate("die %llu: unknown base type encoding 0x%llx\n",
      off, enc);
 }

 return (intr);
}
