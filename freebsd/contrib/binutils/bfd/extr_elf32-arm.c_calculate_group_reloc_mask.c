
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_vma ;



__attribute__((used)) static bfd_vma
calculate_group_reloc_mask (bfd_vma value, int n, bfd_vma *final_residual)
{
  int current_n;
  bfd_vma g_n;
  bfd_vma encoded_g_n = 0;
  bfd_vma residual = value;

  for (current_n = 0; current_n <= n; current_n++)
    {
      int shift;


      if (residual == 0)
        shift = 0;
      else
        {
          int msb;



          for (msb = 30; msb >= 0; msb -= 2)
            if (residual & (3 << msb))
              break;



          shift = msb - 6;
          if (shift < 0)
            shift = 0;
        }


      g_n = residual & (0xff << shift);
      encoded_g_n = (g_n >> shift)
                    | ((g_n <= 0xff ? 0 : (32 - shift) / 2) << 8);


      residual &= ~g_n;
    }

  *final_residual = residual;

  return encoded_g_n;
}
