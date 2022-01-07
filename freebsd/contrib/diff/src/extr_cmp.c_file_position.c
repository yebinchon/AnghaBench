
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 int SEEK_CUR ;
 int * file_desc ;
 int * ignore_initial ;
 int lseek (int ,int ,int ) ;

__attribute__((used)) static off_t
file_position (int f)
{
  static bool positioned[2];
  static off_t position[2];

  if (! positioned[f])
    {
      positioned[f] = 1;
      position[f] = lseek (file_desc[f], ignore_initial[f], SEEK_CUR);
    }
  return position[f];
}
