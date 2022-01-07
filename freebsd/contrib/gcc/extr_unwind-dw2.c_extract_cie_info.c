
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct dwarf_cie {unsigned char* augmentation; int version; } ;
struct _Unwind_Context {int dummy; } ;
typedef int _Unwind_Word ;
typedef scalar_t__ _Unwind_Ptr ;
typedef scalar_t__ _Unwind_Personality_Fn ;
struct TYPE_3__ {int code_align; int retaddr_column; int saw_z; int signal_frame; scalar_t__ personality; int fde_encoding; int lsda_encoding; int data_align; int eh_ptr; } ;
typedef TYPE_1__ _Unwind_FrameState ;


 int DW_EH_PE_omit ;
 unsigned char* read_encoded_value (struct _Unwind_Context*,unsigned char const,unsigned char const*,scalar_t__*) ;
 int read_pointer (unsigned char const*) ;
 unsigned char* read_sleb128 (unsigned char const*,int *) ;
 unsigned char* read_uleb128 (unsigned char const*,int*) ;
 int strlen (char const*) ;

__attribute__((used)) static const unsigned char *
extract_cie_info (const struct dwarf_cie *cie, struct _Unwind_Context *context,
    _Unwind_FrameState *fs)
{
  const unsigned char *aug = cie->augmentation;
  const unsigned char *p = aug + strlen ((const char *)aug) + 1;
  const unsigned char *ret = ((void*)0);
  _Unwind_Word utmp;



  if (aug[0] == 'e' && aug[1] == 'h')
    {
      fs->eh_ptr = read_pointer (p);
      p += sizeof (void *);
      aug += 2;
    }



  p = read_uleb128 (p, &fs->code_align);
  p = read_sleb128 (p, &fs->data_align);
  if (cie->version == 1)
    fs->retaddr_column = *p++;
  else
    p = read_uleb128 (p, &fs->retaddr_column);
  fs->lsda_encoding = DW_EH_PE_omit;




  if (*aug == 'z')
    {
      p = read_uleb128 (p, &utmp);
      ret = p + utmp;

      fs->saw_z = 1;
      ++aug;
    }


  while (*aug != '\0')
    {

      if (aug[0] == 'L')
 {
   fs->lsda_encoding = *p++;
   aug += 1;
 }


      else if (aug[0] == 'R')
 {
   fs->fde_encoding = *p++;
   aug += 1;
 }


      else if (aug[0] == 'P')
 {
   _Unwind_Ptr personality;

   p = read_encoded_value (context, *p, p + 1, &personality);
   fs->personality = (_Unwind_Personality_Fn) personality;
   aug += 1;
 }


      else if (aug[0] == 'S')
 {
   fs->signal_frame = 1;
   aug += 1;
 }



      else
 return ret;
    }

  return ret ? ret : p;
}
