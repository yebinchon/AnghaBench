
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


union aux_ext {int a_rndx; int a_ti; } ;
typedef scalar_t__ bfd_vma ;
typedef int bfd ;
struct TYPE_12__ {unsigned int bt; unsigned int tq0; unsigned int tq1; unsigned int tq2; unsigned int tq3; unsigned int tq4; unsigned int tq5; scalar_t__ fBitfield; } ;
struct TYPE_8__ {union aux_ext* external_aux; } ;
struct TYPE_11__ {TYPE_1__ debug_info; } ;
struct TYPE_10__ {TYPE_7__ ti; } ;
struct TYPE_9__ {int iauxBase; int fBigendian; } ;
typedef int RNDXR ;
typedef TYPE_2__ FDR ;
typedef TYPE_3__ AUXU ;


 int AUX_GET_DNHIGH (int,union aux_ext*) ;
 int AUX_GET_DNLOW (int,union aux_ext*) ;
 scalar_t__ AUX_GET_ISYM (int,union aux_ext*) ;
 void* AUX_GET_WIDTH (int,union aux_ext*) ;
 char* _ (char*) ;
 int _bfd_ecoff_swap_rndx_in (int,int *,int *) ;
 int _bfd_ecoff_swap_tir_in (int,int *,TYPE_7__*) ;
 TYPE_6__* ecoff_data (int *) ;
 int ecoff_emit_aggregate (int *,TYPE_2__*,char*,int *,long,char*) ;
 int sprintf (char*,char*,long,...) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
__attribute__((used)) static char *
ecoff_type_to_string (bfd *abfd, FDR *fdr, unsigned int indx)
{
  union aux_ext *aux_ptr;
  int bigendian;
  AUXU u;
  struct qual
  {
    unsigned int type;
    int low_bound;
    int high_bound;
    int stride;
  } qualifiers[7];
  unsigned int basic_type;
  int i;
  char buffer1[1024];
  static char buffer2[1024];
  char *p1 = buffer1;
  char *p2 = buffer2;
  RNDXR rndx;

  aux_ptr = ecoff_data (abfd)->debug_info.external_aux + fdr->iauxBase;
  bigendian = fdr->fBigendian;

  for (i = 0; i < 7; i++)
    {
      qualifiers[i].low_bound = 0;
      qualifiers[i].high_bound = 0;
      qualifiers[i].stride = 0;
    }

  if (AUX_GET_ISYM (bigendian, &aux_ptr[indx]) == (bfd_vma) -1)
    return "-1 (no type)";
  _bfd_ecoff_swap_tir_in (bigendian, &aux_ptr[indx++].a_ti, &u.ti);

  basic_type = u.ti.bt;
  qualifiers[0].type = u.ti.tq0;
  qualifiers[1].type = u.ti.tq1;
  qualifiers[2].type = u.ti.tq2;
  qualifiers[3].type = u.ti.tq3;
  qualifiers[4].type = u.ti.tq4;
  qualifiers[5].type = u.ti.tq5;
  qualifiers[6].type = 131;


  switch (basic_type)
    {
    case 148:
      strcpy (p1, "nil");
      break;

    case 161:
      strcpy (p1, "address");
      break;

    case 159:
      strcpy (p1, "char");
      break;

    case 140:
      strcpy (p1, "unsigned char");
      break;

    case 144:
      strcpy (p1, "short");
      break;

    case 137:
      strcpy (p1, "unsigned short");
      break;

    case 150:
      strcpy (p1, "int");
      break;

    case 139:
      strcpy (p1, "unsigned int");
      break;

    case 149:
      strcpy (p1, "long");
      break;

    case 138:
      strcpy (p1, "unsigned long");
      break;

    case 153:
      strcpy (p1, "float");
      break;

    case 156:
      strcpy (p1, "double");
      break;





    case 142:
      _bfd_ecoff_swap_rndx_in (bigendian, &aux_ptr[indx].a_rndx, &rndx);
      ecoff_emit_aggregate (abfd, fdr, p1, &rndx,
       (long) AUX_GET_ISYM (bigendian, &aux_ptr[indx+1]),
       "struct");
      indx++;
      break;





    case 136:
      _bfd_ecoff_swap_rndx_in (bigendian, &aux_ptr[indx].a_rndx, &rndx);
      ecoff_emit_aggregate (abfd, fdr, p1, &rndx,
       (long) AUX_GET_ISYM (bigendian, &aux_ptr[indx+1]),
       "union");
      indx++;
      break;





    case 155:
      _bfd_ecoff_swap_rndx_in (bigendian, &aux_ptr[indx].a_rndx, &rndx);
      ecoff_emit_aggregate (abfd, fdr, p1, &rndx,
       (long) AUX_GET_ISYM (bigendian, &aux_ptr[indx+1]),
       "enum");
      indx++;
      break;

    case 141:
      strcpy (p1, "typedef");
      break;

    case 146:
      strcpy (p1, "subrange");
      break;

    case 145:
      strcpy (p1, "set");
      break;

    case 158:
      strcpy (p1, "complex");
      break;

    case 157:
      strcpy (p1, "double complex");
      break;

    case 151:
      strcpy (p1, "forward/unamed typedef");
      break;

    case 154:
      strcpy (p1, "fixed decimal");
      break;

    case 152:
      strcpy (p1, "float decimal");
      break;

    case 143:
      strcpy (p1, "string");
      break;

    case 160:
      strcpy (p1, "bit");
      break;

    case 147:
      strcpy (p1, "picture");
      break;

    case 135:
      strcpy (p1, "void");
      break;

    default:
      sprintf (p1, _("Unknown basic type %d"), (int) basic_type);
      break;
    }

  p1 += strlen (buffer1);


  if (u.ti.fBitfield)
    {
      int bitsize;

      bitsize = AUX_GET_WIDTH (bigendian, &aux_ptr[indx++]);
      sprintf (p1, " : %d", bitsize);
      p1 += strlen (buffer1);
    }


  if (qualifiers[0].type != 131)
    {







      for (i = 0; i < 7; i++)
 {
   if (qualifiers[i].type == 134)
     {
       qualifiers[i].low_bound =
  AUX_GET_DNLOW (bigendian, &aux_ptr[indx+2]);
       qualifiers[i].high_bound =
  AUX_GET_DNHIGH (bigendian, &aux_ptr[indx+3]);
       qualifiers[i].stride =
  AUX_GET_WIDTH (bigendian, &aux_ptr[indx+4]);
       indx += 5;
     }
 }


      for (i = 0; i < 6; i++)
 {
   switch (qualifiers[i].type)
     {
     case 131:
     case 132:
       break;

     case 129:
       strcpy (p2, "ptr to ");
       p2 += sizeof ("ptr to ")-1;
       break;

     case 128:
       strcpy (p2, "volatile ");
       p2 += sizeof ("volatile ")-1;
       break;

     case 133:
       strcpy (p2, "far ");
       p2 += sizeof ("far ")-1;
       break;

     case 130:
       strcpy (p2, "func. ret. ");
       p2 += sizeof ("func. ret. ");
       break;

     case 134:
       {
  int first_array = i;
  int j;



  while (i < 5 && qualifiers[i+1].type == 134)
    i++;

  for (j = i; j >= first_array; j--)
    {
      strcpy (p2, "array [");
      p2 += sizeof ("array [")-1;
      if (qualifiers[j].low_bound != 0)
        sprintf (p2,
          "%ld:%ld {%ld bits}",
          (long) qualifiers[j].low_bound,
          (long) qualifiers[j].high_bound,
          (long) qualifiers[j].stride);

      else if (qualifiers[j].high_bound != -1)
        sprintf (p2,
          "%ld {%ld bits}",
          (long) (qualifiers[j].high_bound + 1),
          (long) (qualifiers[j].stride));

      else
        sprintf (p2, " {%ld bits}", (long) (qualifiers[j].stride));

      p2 += strlen (p2);
      strcpy (p2, "] of ");
      p2 += sizeof ("] of ")-1;
    }
       }
       break;
     }
 }
    }

  strcpy (p2, buffer1);
  return buffer2;
}
