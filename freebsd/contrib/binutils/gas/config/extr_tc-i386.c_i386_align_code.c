
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* fr_literal; int fr_fix; int fr_var; } ;
typedef TYPE_1__ fragS ;


 scalar_t__ CODE_16BIT ;
 scalar_t__ CODE_64BIT ;
 int Cpu686 ;
 int abort () ;
 scalar_t__ cpu_arch_isa ;
 int cpu_arch_isa_flags ;
 int cpu_arch_tune ;
 scalar_t__ flag_code ;
 int memcpy (int*,char const* const,int) ;
 int memset (int*,int,int) ;

void
i386_align_code (fragS *fragP, int count)
{



  static const char f32_1[] =
    {0x90};
  static const char f32_2[] =
    {0x66,0x90};
  static const char f32_3[] =
    {0x8d,0x76,0x00};
  static const char f32_4[] =
    {0x8d,0x74,0x26,0x00};
  static const char f32_5[] =
    {0x90,
     0x8d,0x74,0x26,0x00};
  static const char f32_6[] =
    {0x8d,0xb6,0x00,0x00,0x00,0x00};
  static const char f32_7[] =
    {0x8d,0xb4,0x26,0x00,0x00,0x00,0x00};
  static const char f32_8[] =
    {0x90,
     0x8d,0xb4,0x26,0x00,0x00,0x00,0x00};
  static const char f32_9[] =
    {0x89,0xf6,
     0x8d,0xbc,0x27,0x00,0x00,0x00,0x00};
  static const char f32_10[] =
    {0x8d,0x76,0x00,
     0x8d,0xbc,0x27,0x00,0x00,0x00,0x00};
  static const char f32_11[] =
    {0x8d,0x74,0x26,0x00,
     0x8d,0xbc,0x27,0x00,0x00,0x00,0x00};
  static const char f32_12[] =
    {0x8d,0xb6,0x00,0x00,0x00,0x00,
     0x8d,0xbf,0x00,0x00,0x00,0x00};
  static const char f32_13[] =
    {0x8d,0xb6,0x00,0x00,0x00,0x00,
     0x8d,0xbc,0x27,0x00,0x00,0x00,0x00};
  static const char f32_14[] =
    {0x8d,0xb4,0x26,0x00,0x00,0x00,0x00,
     0x8d,0xbc,0x27,0x00,0x00,0x00,0x00};
  static const char f32_15[] =
    {0xeb,0x0d,0x90,0x90,0x90,0x90,0x90,
     0x90,0x90,0x90,0x90,0x90,0x90,0x90,0x90};
  static const char f16_3[] =
    {0x8d,0x74,0x00};
  static const char f16_4[] =
    {0x8d,0xb4,0x00,0x00};
  static const char f16_5[] =
    {0x90,
     0x8d,0xb4,0x00,0x00};
  static const char f16_6[] =
    {0x89,0xf6,
     0x8d,0xbd,0x00,0x00};
  static const char f16_7[] =
    {0x8d,0x74,0x00,
     0x8d,0xbd,0x00,0x00};
  static const char f16_8[] =
    {0x8d,0xb4,0x00,0x00,
     0x8d,0xbd,0x00,0x00};
  static const char *const f32_patt[] = {
    f32_1, f32_2, f32_3, f32_4, f32_5, f32_6, f32_7, f32_8,
    f32_9, f32_10, f32_11, f32_12, f32_13, f32_14, f32_15
  };
  static const char *const f16_patt[] = {
    f32_1, f32_2, f16_3, f16_4, f16_5, f16_6, f16_7, f16_8,
    f32_15, f32_15, f32_15, f32_15, f32_15, f32_15, f32_15
  };

  static const char alt_3[] =
    {0x0f,0x1f,0x00};

  static const char alt_4[] =
    {0x0f,0x1f,0x40,0x00};

  static const char alt_5[] =
    {0x0f,0x1f,0x44,0x00,0x00};

  static const char alt_6[] =
    {0x66,0x0f,0x1f,0x44,0x00,0x00};

  static const char alt_7[] =
    {0x0f,0x1f,0x80,0x00,0x00,0x00,0x00};

  static const char alt_8[] =
    {0x0f,0x1f,0x84,0x00,0x00,0x00,0x00,0x00};

  static const char alt_9[] =
    {0x66,0x0f,0x1f,0x84,0x00,0x00,0x00,0x00,0x00};

  static const char alt_10[] =
    {0x66,0x2e,0x0f,0x1f,0x84,0x00,0x00,0x00,0x00,0x00};


  static const char alt_long_11[] =
    {0x66,
     0x66,0x2e,0x0f,0x1f,0x84,0x00,0x00,0x00,0x00,0x00};



  static const char alt_long_12[] =
    {0x66,
     0x66,
     0x66,0x2e,0x0f,0x1f,0x84,0x00,0x00,0x00,0x00,0x00};




  static const char alt_long_13[] =
    {0x66,
     0x66,
     0x66,
     0x66,0x2e,0x0f,0x1f,0x84,0x00,0x00,0x00,0x00,0x00};





  static const char alt_long_14[] =
    {0x66,
     0x66,
     0x66,
     0x66,
     0x66,0x2e,0x0f,0x1f,0x84,0x00,0x00,0x00,0x00,0x00};






  static const char alt_long_15[] =
    {0x66,
     0x66,
     0x66,
     0x66,
     0x66,
     0x66,0x2e,0x0f,0x1f,0x84,0x00,0x00,0x00,0x00,0x00};


  static const char alt_short_11[] =
    {0x0f,0x1f,0x44,0x00,0x00,
     0x66,0x0f,0x1f,0x44,0x00,0x00};


  static const char alt_short_12[] =
    {0x66,0x0f,0x1f,0x44,0x00,0x00,
     0x66,0x0f,0x1f,0x44,0x00,0x00};


  static const char alt_short_13[] =
    {0x66,0x0f,0x1f,0x44,0x00,0x00,
     0x0f,0x1f,0x80,0x00,0x00,0x00,0x00};


  static const char alt_short_14[] =
    {0x0f,0x1f,0x80,0x00,0x00,0x00,0x00,
     0x0f,0x1f,0x80,0x00,0x00,0x00,0x00};


  static const char alt_short_15[] =
    {0x0f,0x1f,0x80,0x00,0x00,0x00,0x00,
     0x0f,0x1f,0x84,0x00,0x00,0x00,0x00,0x00};
  static const char *const alt_short_patt[] = {
    f32_1, f32_2, alt_3, alt_4, alt_5, alt_6, alt_7, alt_8,
    alt_9, alt_10, alt_short_11, alt_short_12, alt_short_13,
    alt_short_14, alt_short_15
  };
  static const char *const alt_long_patt[] = {
    f32_1, f32_2, alt_3, alt_4, alt_5, alt_6, alt_7, alt_8,
    alt_9, alt_10, alt_long_11, alt_long_12, alt_long_13,
    alt_long_14, alt_long_15
  };

  if (count <= 0 || count > 15)
    return;
  if (flag_code == CODE_16BIT)
    {
      memcpy (fragP->fr_literal + fragP->fr_fix,
       f16_patt[count - 1], count);
      if (count > 8)

 fragP->fr_literal[fragP->fr_fix + 1] = count - 2;
    }
  else if (flag_code == CODE_64BIT && cpu_arch_tune == 133)
    {
      int i;
      int nnops = (count + 3) / 4;
      int len = count / nnops;
      int remains = count - nnops * len;
      int pos = 0;



      for (i = 0; i < remains; i++)
 {
   memset (fragP->fr_literal + fragP->fr_fix + pos, 0x66, len);
   fragP->fr_literal[fragP->fr_fix + pos + len] = 0x90;
   pos += len + 1;
 }
      for (; i < nnops; i++)
 {
   memset (fragP->fr_literal + fragP->fr_fix + pos, 0x66, len - 1);
   fragP->fr_literal[fragP->fr_fix + pos + len - 1] = 0x90;
   pos += len;
 }
    }
  else
    {
      const char *const *patt = ((void*)0);

      if (cpu_arch_isa == 128)
 {

   switch (cpu_arch_tune)
     {
     case 128:


       if ((cpu_arch_isa_flags & Cpu686) != 0)
  patt = alt_short_patt;
       else
  patt = f32_patt;
       break;
     case 138:
       patt = alt_long_patt;
       break;
     case 129:
     case 130:
     case 132:
     case 139:
     case 134:
     case 140:
     case 133:
     case 136:
     case 141:
       patt = alt_short_patt;
       break;
     case 135:
     case 131:
     case 137:
       patt = f32_patt;
       break;
     }
 }
      else
 {
   switch (cpu_arch_tune)
     {
     case 128:


       abort ();
       break;

     case 135:
     case 131:
     case 129:
     case 130:
     case 132:
     case 139:
     case 134:
     case 140:
     case 133:
     case 141:
     case 137:


       if ((cpu_arch_isa_flags & Cpu686) != 0)
  patt = alt_short_patt;
       else
  patt = f32_patt;
       break;
     case 138:
       if ((cpu_arch_isa_flags & Cpu686) != 0)
  patt = alt_long_patt;
       else
  patt = f32_patt;
       break;
     case 136:
       patt = alt_short_patt;
       break;
     }
 }

      memcpy (fragP->fr_literal + fragP->fr_fix,
       patt[count - 1], count);
    }
  fragP->fr_var = count;
}
