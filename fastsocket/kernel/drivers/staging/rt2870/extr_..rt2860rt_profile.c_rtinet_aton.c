
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int htonl (unsigned int) ;
 scalar_t__ isdigit (unsigned char) ;
 scalar_t__ islower (unsigned char) ;
 int isspace (unsigned char) ;
 scalar_t__ isxdigit (unsigned char) ;

int rtinet_aton(const char *cp, unsigned int *addr)
{
 unsigned int val;
 int base, n;
 char c;
 unsigned int parts[4];
 unsigned int *pp = parts;

 for (;;)
    {





         val = 0;
         base = 10;
         if (*cp == '0')
         {
             if (*++cp == 'x' || *cp == 'X')
                 base = 16, cp++;
             else
                 base = 8;
         }
         while ((c = *cp) != '\0')
         {
             if (isdigit((unsigned char) c))
             {
                 val = (val * base) + (c - '0');
                 cp++;
                 continue;
             }
             if (base == 16 && isxdigit((unsigned char) c))
             {
                 val = (val << 4) +
                     (c + 10 - (islower((unsigned char) c) ? 'a' : 'A'));
                 cp++;
                 continue;
             }
             break;
         }
         if (*cp == '.')
         {




             if (pp >= parts + 3 || val > 0xff)
                 return 0;
             *pp++ = val, cp++;
         }
         else
             break;
     }




     while (*cp)
         if (!isspace((unsigned char) *cp++))
             return 0;




     n = pp - parts + 1;
     switch (n)
     {

         case 1:
             break;

         case 2:
             if (val > 0xffffff)
                 return 0;
             val |= parts[0] << 24;
             break;

         case 3:
             if (val > 0xffff)
                 return 0;
             val |= (parts[0] << 24) | (parts[1] << 16);
             break;

         case 4:
             if (val > 0xff)
                 return 0;
             val |= (parts[0] << 24) | (parts[1] << 16) | (parts[2] << 8);
             break;
     }

     *addr = htonl(val);
     return 1;

}
