
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void
_INTERNAL_trim_to_complete_utf8_characters(const char * from, const char ** fromLimRef)
{
  const char * fromLim = *fromLimRef;
  size_t walked = 0;
  for (; fromLim > from; fromLim--, walked++) {
    const unsigned char prev = (unsigned char)fromLim[-1];
    if ((prev & 0xf8u) == 0xf0u) {
      if (walked + 1 >= 4) {
        fromLim += 4 - 1;
        break;
      } else {
        walked = 0;
      }
    } else if ((prev & 0xf0u) == 0xe0u) {
      if (walked + 1 >= 3) {
        fromLim += 3 - 1;
        break;
      } else {
        walked = 0;
      }
    } else if ((prev & 0xe0u) == 0xc0u) {
      if (walked + 1 >= 2) {
        fromLim += 2 - 1;
        break;
      } else {
        walked = 0;
      }
    } else if ((prev & 0x80u) == 0x00u) {
      break;
    }
  }
  *fromLimRef = fromLim;
}
