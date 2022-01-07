
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ttstate_t ;


 int memcpy (char*,char*,int) ;

__attribute__((used)) static void
copy_ttstate_t (ttstate_t *tts_to, ttstate_t *tts_from)
{
  memcpy ((char *) tts_to, (char *) tts_from, sizeof (*tts_to));
}
