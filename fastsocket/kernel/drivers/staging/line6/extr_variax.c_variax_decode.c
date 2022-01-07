
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void variax_decode(const unsigned char *raw_data, unsigned char *data,
     int raw_size)
{
 for (; raw_size > 0; raw_size -= 6) {
  data[2] = raw_data[0] | (raw_data[1] << 4);
  data[1] = raw_data[2] | (raw_data[3] << 4);
  data[0] = raw_data[4] | (raw_data[5] << 4);
  raw_data += 6;
  data += 3;
 }
}
