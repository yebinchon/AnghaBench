
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct coff_where {int where; int offset; TYPE_1__* section; } ;
struct TYPE_2__ {char* name; } ;


 int abort () ;
 int nl () ;
 int printf (char*,...) ;
 int tab (int) ;

__attribute__((used)) static void
dump_coff_where (struct coff_where *p)
{
  tab (1);
  switch (p->where)
    {
    case 131:
      printf ("Stack offset %x", p->offset);
      break;
    case 133:
      printf ("Memory section %s+%x", p->section->name, p->offset);
      break;
    case 132:
      printf ("Register %d", p->offset);
      break;
    case 134:
      printf ("Struct Member offset %x", p->offset);
      break;
    case 135:
      printf ("Enum Member offset %x", p->offset);
      break;
    case 128:
      printf ("Undefined symbol");
      break;
    case 130:
      printf ("STRTAG");
    case 136:
      printf ("ENTAG");
      break;
    case 129:
      printf ("TYPEDEF");
      break;
    default:
      abort ();
    }
  nl ();
  tab (-1);
}
