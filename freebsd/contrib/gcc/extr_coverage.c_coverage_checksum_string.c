
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GLOBAL_PREFIX ;
 int ISCAPXDIGIT (char) ;
 int NDIGITS ;
 int TRAILING_N ;
 unsigned int crc32_string (unsigned int,char*) ;
 int free (char*) ;
 char* strchr (char*,char) ;
 int strlen (int ) ;
 int strncmp (char*,int ,int ) ;
 char* strstr (char const*,int ) ;
 char* xstrdup (char const*) ;

__attribute__((used)) static unsigned
coverage_checksum_string (unsigned chksum, const char *string)
{
  char *dup = ((void*)0);
  char *ptr;
  if ((ptr = strstr (string, "_GLOBAL__")))
    {

      ptr += strlen ("_GLOBAL__");


      if (!strncmp (ptr, "N_", strlen ("N_")))
          ptr += strlen ("N_");


      while ((ptr = strchr (ptr, '_')) != ((void*)0))
        {
          int y;




          ptr++;





          for (y = 0; *ptr != 0 && y < (8); y++, ptr++)
              if (!(((*ptr) >= '0' && (*ptr) <= '9') || ((*ptr) >= 'A' && (*ptr) <= 'F')))
                  break;
          if (y != (8) || *ptr != '_')
              continue;

          ptr++;
          for (y = 0; *ptr != 0 && y < (8); y++, ptr++)
              if (!(((*ptr) >= '0' && (*ptr) <= '9') || ((*ptr) >= 'A' && (*ptr) <= 'F')))
                  break;

          if (y == (8))
            {



              dup = xstrdup (string);
              ptr = dup + (ptr - string);
              for(y = -(8) - 1 ; y < 0; y++)
                {
                  ptr[y] = '0';
                }
              ptr = dup;
              break;
            }
        }




    }

  chksum = crc32_string (chksum, (ptr) ? ptr : string);

  if (dup)
      free (dup);

  return chksum;
}
