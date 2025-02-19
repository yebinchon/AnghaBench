
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ dev_t ;


 unsigned int MAJOR (scalar_t__) ;
 unsigned int MINOR (scalar_t__) ;
 scalar_t__ MKDEV (unsigned int,unsigned int) ;
 scalar_t__ Root_NFS ;
 scalar_t__ Root_RAM0 ;
 scalar_t__ blk_lookup_devt (char*,int) ;
 scalar_t__ isdigit (char) ;
 scalar_t__ new_decode_dev (int) ;
 int simple_strtoul (char*,char**,int) ;
 int sscanf (char*,char*,unsigned int*,unsigned int*) ;
 scalar_t__ strcmp (char*,char*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;

dev_t name_to_dev_t(char *name)
{
 char s[32];
 char *p;
 dev_t res = 0;
 int part;

 if (strncmp(name, "/dev/", 5) != 0) {
  unsigned maj, min;

  if (sscanf(name, "%u:%u", &maj, &min) == 2) {
   res = MKDEV(maj, min);
   if (maj != MAJOR(res) || min != MINOR(res))
    goto fail;
  } else {
   res = new_decode_dev(simple_strtoul(name, &p, 16));
   if (*p)
    goto fail;
  }
  goto done;
 }

 name += 5;
 res = Root_NFS;
 if (strcmp(name, "nfs") == 0)
  goto done;
 res = Root_RAM0;
 if (strcmp(name, "ram") == 0)
  goto done;

 if (strlen(name) > 31)
  goto fail;
 strcpy(s, name);
 for (p = s; *p; p++)
  if (*p == '/')
   *p = '!';
 res = blk_lookup_devt(s, 0);
 if (res)
  goto done;





 while (p > s && isdigit(p[-1]))
  p--;
 if (p == s || !*p || *p == '0')
  goto fail;


 part = simple_strtoul(p, ((void*)0), 10);
 *p = '\0';
 res = blk_lookup_devt(s, part);
 if (res)
  goto done;


 if (p < s + 2 || !isdigit(p[-2]) || p[-1] != 'p')
  goto fail;
 p[-1] = '\0';
 res = blk_lookup_devt(s, part);
 if (res)
  goto done;

fail:
 return 0;
done:
 return res;
}
