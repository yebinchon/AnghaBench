
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ISDIGIT (unsigned char const) ;






int
strverscmp (const char *s1, const char *s2)
{
  const unsigned char *p1 = (const unsigned char *) s1;
  const unsigned char *p2 = (const unsigned char *) s2;
  unsigned char c1, c2;
  int state;
  int diff;



  static const unsigned int next_state[] =
    {

                 129, 130, 128, 129,
                 129, 130, 130, 130,
                 129, 131, 131, 131,
                 129, 131, 128, 128
    };

  static const int result_type[] =
    {



                 133, 133, 133, 133, 133, 132, 133, 133,
                 133, 133, 133, 133, 133, 133, 133, 133,
                 133, -1, -1, 133, +1, 132, 132, 133,
                 +1, 132, 132, 133, 133, 133, 133, 133,
                 133, 133, 133, 133, 133, 132, 133, 133,
                 133, 133, 133, 133, 133, 133, 133, 133,
                 133, +1, +1, 133, -1, 133, 133, 133,
                 -1, 133, 133, 133
    };

  if (p1 == p2)
    return 0;

  c1 = *p1++;
  c2 = *p2++;

  state = 129 | ((c1 == '0') + (ISDIGIT (c1) != 0));

  while ((diff = c1 - c2) == 0 && c1 != '\0')
    {
      state = next_state[state];
      c1 = *p1++;
      c2 = *p2++;
      state |= (c1 == '0') + (ISDIGIT (c1) != 0);
    }

  state = result_type[state << 2 | (((c2 == '0') + (ISDIGIT (c2) != 0)))];

  switch (state)
    {
    case 133:
      return diff;

    case 132:
      while (ISDIGIT (*p1++))
 if (!ISDIGIT (*p2++))
   return 1;

      return ISDIGIT (*p2) ? -1 : diff;

    default:
      return state;
    }
}
