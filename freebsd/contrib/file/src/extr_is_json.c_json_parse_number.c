
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DPRINTF (char*,unsigned char const*,unsigned char const*) ;
 int json_isdigit (unsigned char const) ;

__attribute__((used)) static int
json_parse_number(const unsigned char **ucp, const unsigned char *ue)
{
 const unsigned char *uc = *ucp;
 int got = 0;

 DPRINTF("Parse number: ", uc, *ucp);
 if (uc == ue)
  return 0;
 if (*uc == '-')
  uc++;

 for (; uc < ue; uc++) {
  if (!json_isdigit(*uc))
   break;
  got = 1;
 }
 if (uc == ue)
  goto out;
 if (*uc == '.')
  uc++;
 for (; uc < ue; uc++) {
  if (!json_isdigit(*uc))
   break;
  got = 1;
 }
 if (uc == ue)
  goto out;
 if (got && (*uc == 'e' || *uc == 'E')) {
  uc++;
  got = 0;
  if (uc == ue)
   goto out;
  if (*uc == '+' || *uc == '-')
   uc++;
  for (; uc < ue; uc++) {
   if (!json_isdigit(*uc))
    break;
   got = 1;
  }
 }
out:
 if (!got)
  DPRINTF("Bad number: ", uc, *ucp);
 else
  DPRINTF("Good number: ", uc, *ucp);
 *ucp = uc;
 return got;
}
