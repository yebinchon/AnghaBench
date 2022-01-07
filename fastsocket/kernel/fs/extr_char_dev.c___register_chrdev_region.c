
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct char_device_struct {unsigned int major; unsigned int baseminor; int minorct; struct char_device_struct* next; int name; } ;


 int ARRAY_SIZE (struct char_device_struct**) ;
 int EBUSY ;
 int ENOMEM ;
 struct char_device_struct* ERR_PTR (int) ;
 int GFP_KERNEL ;
 struct char_device_struct** chrdevs ;
 int chrdevs_lock ;
 int kfree (struct char_device_struct*) ;
 struct char_device_struct* kzalloc (int,int ) ;
 int major_to_index (unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int strlcpy (int ,char const*,int) ;

__attribute__((used)) static struct char_device_struct *
__register_chrdev_region(unsigned int major, unsigned int baseminor,
      int minorct, const char *name)
{
 struct char_device_struct *cd, **cp;
 int ret = 0;
 int i;

 cd = kzalloc(sizeof(struct char_device_struct), GFP_KERNEL);
 if (cd == ((void*)0))
  return ERR_PTR(-ENOMEM);

 mutex_lock(&chrdevs_lock);


 if (major == 0) {
  for (i = ARRAY_SIZE(chrdevs)-1; i > 0; i--) {
   if (chrdevs[i] == ((void*)0))
    break;
  }

  if (i == 0) {
   ret = -EBUSY;
   goto out;
  }
  major = i;
  ret = major;
 }

 cd->major = major;
 cd->baseminor = baseminor;
 cd->minorct = minorct;
 strlcpy(cd->name, name, sizeof(cd->name));

 i = major_to_index(major);

 for (cp = &chrdevs[i]; *cp; cp = &(*cp)->next)
  if ((*cp)->major > major ||
      ((*cp)->major == major &&
       (((*cp)->baseminor >= baseminor) ||
        ((*cp)->baseminor + (*cp)->minorct > baseminor))))
   break;


 if (*cp && (*cp)->major == major) {
  int old_min = (*cp)->baseminor;
  int old_max = (*cp)->baseminor + (*cp)->minorct - 1;
  int new_min = baseminor;
  int new_max = baseminor + minorct - 1;


  if (new_max >= old_min && new_max <= old_max) {
   ret = -EBUSY;
   goto out;
  }


  if (new_min <= old_max && new_min >= old_min) {
   ret = -EBUSY;
   goto out;
  }
 }

 cd->next = *cp;
 *cp = cd;
 mutex_unlock(&chrdevs_lock);
 return cd;
out:
 mutex_unlock(&chrdevs_lock);
 kfree(cd);
 return ERR_PTR(ret);
}
