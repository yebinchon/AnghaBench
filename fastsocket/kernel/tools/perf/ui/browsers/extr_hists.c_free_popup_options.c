
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;

__attribute__((used)) static inline void free_popup_options(char **options, int n)
{
 int i;

 for (i = 0; i < n; ++i) {
  free(options[i]);
  options[i] = ((void*)0);
 }
}
