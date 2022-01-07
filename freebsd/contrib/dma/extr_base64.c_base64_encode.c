
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* base64_chars ;
 scalar_t__ malloc (int) ;
 int strlen (char*) ;

int
base64_encode(const void *data, int size, char **str)
{
    char *s, *p;
    int i;
    int c;
    const unsigned char *q;

    p = s = (char *) malloc(size * 4 / 3 + 4);
    if (p == ((void*)0))
 return -1;
    q = (const unsigned char *) data;
    i = 0;
    for (i = 0; i < size;) {
 c = q[i++];
 c *= 256;
 if (i < size)
     c += q[i];
 i++;
 c *= 256;
 if (i < size)
     c += q[i];
 i++;
 p[0] = base64_chars[(c & 0x00fc0000) >> 18];
 p[1] = base64_chars[(c & 0x0003f000) >> 12];
 p[2] = base64_chars[(c & 0x00000fc0) >> 6];
 p[3] = base64_chars[(c & 0x0000003f) >> 0];
 if (i > size)
     p[3] = '=';
 if (i > size + 1)
     p[2] = '=';
 p += 4;
    }
    *p = 0;
    *str = s;
    return strlen(s);
}
