
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Boolean ;



Boolean
Dir_HasWildcards(char *name)
{
    char *cp;
    int wild = 0, brace = 0, bracket = 0;

    for (cp = name; *cp; cp++) {
 switch(*cp) {
 case '{':
  brace++;
  wild = 1;
  break;
 case '}':
  brace--;
  break;
 case '[':
  bracket++;
  wild = 1;
  break;
 case ']':
  bracket--;
  break;
 case '?':
 case '*':
  wild = 1;
  break;
 default:
  break;
 }
    }
    return wild && bracket == 0 && brace == 0;
}
