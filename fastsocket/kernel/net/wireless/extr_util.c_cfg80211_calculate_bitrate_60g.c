
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rate_info {size_t mcs; } ;


 size_t ARRAY_SIZE (int const*) ;
 scalar_t__ WARN_ON_ONCE (int) ;

__attribute__((used)) static u32 cfg80211_calculate_bitrate_60g(struct rate_info *rate)
{
 static const u32 __mcs2bitrate[] = {

  [0] = 275,

  [1] = 3850,
  [2] = 7700,
  [3] = 9625,
  [4] = 11550,
  [5] = 12512,
  [6] = 15400,
  [7] = 19250,
  [8] = 23100,
  [9] = 25025,
  [10] = 30800,
  [11] = 38500,
  [12] = 46200,

  [13] = 6930,
  [14] = 8662,
  [15] = 13860,
  [16] = 17325,
  [17] = 20790,
  [18] = 27720,
  [19] = 34650,
  [20] = 41580,
  [21] = 45045,
  [22] = 51975,
  [23] = 62370,
  [24] = 67568,

  [25] = 6260,
  [26] = 8340,
  [27] = 11120,
  [28] = 12510,
  [29] = 16680,
  [30] = 22240,
  [31] = 25030,
 };

 if (WARN_ON_ONCE(rate->mcs >= ARRAY_SIZE(__mcs2bitrate)))
  return 0;

 return __mcs2bitrate[rate->mcs];
}
