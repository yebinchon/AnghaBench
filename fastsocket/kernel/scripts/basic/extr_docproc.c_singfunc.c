
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* DOCBOOK ;
 char* FUNCTION ;
 char* KERNELDOC ;
 int exec_kernel_doc (char**) ;
 scalar_t__ isspace (char) ;

__attribute__((used)) static void singfunc(char * filename, char * line)
{
 char *vec[200];
        int i, idx = 0;
        int startofsym = 1;
 vec[idx++] = KERNELDOC;
 vec[idx++] = DOCBOOK;


        for (i=0; line[i]; i++) {
                if (isspace(line[i])) {
                        line[i] = '\0';
                        startofsym = 1;
                        continue;
                }
                if (startofsym) {
                        startofsym = 0;
                        vec[idx++] = FUNCTION;
                        vec[idx++] = &line[i];
                }
        }
 vec[idx++] = filename;
 vec[idx] = ((void*)0);
 exec_kernel_doc(vec);
}
