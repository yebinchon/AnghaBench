; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_wis-saa7115.c_wis_saa7115_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_wis-saa7115.c_wis_saa7115_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.wis_saa7115 = type { i32, i32, i32, i32, i32 }
%struct.video_decoder_resolution = type { i32, i32 }
%struct.v4l2_queryctrl = type { i32, i32, i32, i32, i32, i32, i8*, i32 }
%struct.v4l2_control = type { i32, i32 }

@V4L2_STD_NTSC = common dso_local global i32 0, align 4
@V4L2_CTRL_TYPE_INTEGER = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"Brightness\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Contrast\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Saturation\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"Hue\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i8*)* @wis_saa7115_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wis_saa7115_command(%struct.i2c_client* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.wis_saa7115*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.video_decoder_resolution*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [66 x i32], align 16
  %14 = alloca i32*, align 8
  %15 = alloca [22 x i32], align 16
  %16 = alloca %struct.v4l2_queryctrl*, align 8
  %17 = alloca %struct.v4l2_control*, align 8
  %18 = alloca %struct.v4l2_control*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = call %struct.wis_saa7115* @i2c_get_clientdata(%struct.i2c_client* %19)
  store %struct.wis_saa7115* %20, %struct.wis_saa7115** %7, align 8
  %21 = load i32, i32* %5, align 4
  switch i32 %21, label %532 [
    i32 129, label %22
    i32 137, label %37
    i32 128, label %211
    i32 131, label %299
    i32 130, label %378
    i32 132, label %501
  ]

22:                                               ; preds = %3
  %23 = load i8*, i8** %6, align 8
  %24 = bitcast i8* %23 to i32*
  store i32* %24, i32** %8, align 8
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* %26, align 4
  %28 = or i32 192, %27
  %29 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %25, i32 2, i32 %28)
  %30 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %32, 6
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 64, i32 192
  %36 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %30, i32 9, i32 %35)
  br label %533

37:                                               ; preds = %3
  %38 = load i8*, i8** %6, align 8
  %39 = bitcast i8* %38 to %struct.video_decoder_resolution*
  store %struct.video_decoder_resolution* %39, %struct.video_decoder_resolution** %9, align 8
  %40 = load %struct.video_decoder_resolution*, %struct.video_decoder_resolution** %9, align 8
  %41 = getelementptr inbounds %struct.video_decoder_resolution, %struct.video_decoder_resolution* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %42, 704
  br i1 %43, label %44, label %49

44:                                               ; preds = %37
  %45 = load %struct.video_decoder_resolution*, %struct.video_decoder_resolution** %9, align 8
  %46 = getelementptr inbounds %struct.video_decoder_resolution, %struct.video_decoder_resolution* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sdiv i32 704, %47
  br label %50

49:                                               ; preds = %37
  br label %50

50:                                               ; preds = %49, %44
  %51 = phi i32 [ %48, %44 ], [ 1, %49 ]
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = sdiv i32 704, %52
  %54 = mul nsw i32 %53, 1024
  %55 = load %struct.video_decoder_resolution*, %struct.video_decoder_resolution** %9, align 8
  %56 = getelementptr inbounds %struct.video_decoder_resolution, %struct.video_decoder_resolution* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = sdiv i32 %54, %57
  store i32 %58, i32* %11, align 4
  %59 = load %struct.wis_saa7115*, %struct.wis_saa7115** %7, align 8
  %60 = getelementptr inbounds %struct.wis_saa7115, %struct.wis_saa7115* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @V4L2_STD_NTSC, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 240, i32 288
  %67 = mul nsw i32 %66, 1024
  %68 = load %struct.video_decoder_resolution*, %struct.video_decoder_resolution** %9, align 8
  %69 = getelementptr inbounds %struct.video_decoder_resolution, %struct.video_decoder_resolution* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = sdiv i32 %67, %70
  store i32 %71, i32* %12, align 4
  %72 = getelementptr inbounds [66 x i32], [66 x i32]* %13, i64 0, i64 0
  store i32 136, i32* %72, align 4
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  store i32 192, i32* %73, align 4
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  store i32 156, i32* %74, align 4
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  %76 = load %struct.video_decoder_resolution*, %struct.video_decoder_resolution** %9, align 8
  %77 = getelementptr inbounds %struct.video_decoder_resolution, %struct.video_decoder_resolution* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, 255
  store i32 %79, i32* %75, align 4
  %80 = getelementptr inbounds i32, i32* %75, i64 1
  store i32 157, i32* %80, align 4
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  %82 = load %struct.video_decoder_resolution*, %struct.video_decoder_resolution** %9, align 8
  %83 = getelementptr inbounds %struct.video_decoder_resolution, %struct.video_decoder_resolution* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = ashr i32 %84, 8
  store i32 %85, i32* %81, align 4
  %86 = getelementptr inbounds i32, i32* %81, i64 1
  store i32 158, i32* %86, align 4
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  %88 = load %struct.video_decoder_resolution*, %struct.video_decoder_resolution** %9, align 8
  %89 = getelementptr inbounds %struct.video_decoder_resolution, %struct.video_decoder_resolution* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, 255
  store i32 %91, i32* %87, align 4
  %92 = getelementptr inbounds i32, i32* %87, i64 1
  store i32 159, i32* %92, align 4
  %93 = getelementptr inbounds i32, i32* %92, i64 1
  %94 = load %struct.video_decoder_resolution*, %struct.video_decoder_resolution** %9, align 8
  %95 = getelementptr inbounds %struct.video_decoder_resolution, %struct.video_decoder_resolution* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = ashr i32 %96, 8
  store i32 %97, i32* %93, align 4
  %98 = getelementptr inbounds i32, i32* %93, i64 1
  store i32 160, i32* %98, align 4
  %99 = getelementptr inbounds i32, i32* %98, i64 1
  %100 = load i32, i32* %10, align 4
  store i32 %100, i32* %99, align 4
  %101 = getelementptr inbounds i32, i32* %99, i64 1
  store i32 161, i32* %101, align 4
  %102 = getelementptr inbounds i32, i32* %101, i64 1
  store i32 1, i32* %102, align 4
  %103 = getelementptr inbounds i32, i32* %102, i64 1
  store i32 162, i32* %103, align 4
  %104 = getelementptr inbounds i32, i32* %103, i64 1
  store i32 1, i32* %104, align 4
  %105 = getelementptr inbounds i32, i32* %104, i64 1
  store i32 168, i32* %105, align 4
  %106 = getelementptr inbounds i32, i32* %105, i64 1
  %107 = load i32, i32* %11, align 4
  %108 = and i32 %107, 255
  store i32 %108, i32* %106, align 4
  %109 = getelementptr inbounds i32, i32* %106, i64 1
  store i32 169, i32* %109, align 4
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  %111 = load i32, i32* %11, align 4
  %112 = ashr i32 %111, 8
  store i32 %112, i32* %110, align 4
  %113 = getelementptr inbounds i32, i32* %110, i64 1
  store i32 172, i32* %113, align 4
  %114 = getelementptr inbounds i32, i32* %113, i64 1
  %115 = load i32, i32* %11, align 4
  %116 = sdiv i32 %115, 2
  %117 = and i32 %116, 255
  store i32 %117, i32* %114, align 4
  %118 = getelementptr inbounds i32, i32* %114, i64 1
  store i32 173, i32* %118, align 4
  %119 = getelementptr inbounds i32, i32* %118, i64 1
  %120 = load i32, i32* %11, align 4
  %121 = sdiv i32 %120, 2
  %122 = ashr i32 %121, 8
  store i32 %122, i32* %119, align 4
  %123 = getelementptr inbounds i32, i32* %119, i64 1
  store i32 176, i32* %123, align 4
  %124 = getelementptr inbounds i32, i32* %123, i64 1
  %125 = load i32, i32* %12, align 4
  %126 = and i32 %125, 255
  store i32 %126, i32* %124, align 4
  %127 = getelementptr inbounds i32, i32* %124, i64 1
  store i32 177, i32* %127, align 4
  %128 = getelementptr inbounds i32, i32* %127, i64 1
  %129 = load i32, i32* %12, align 4
  %130 = ashr i32 %129, 8
  store i32 %130, i32* %128, align 4
  %131 = getelementptr inbounds i32, i32* %128, i64 1
  store i32 178, i32* %131, align 4
  %132 = getelementptr inbounds i32, i32* %131, i64 1
  %133 = load i32, i32* %12, align 4
  %134 = and i32 %133, 255
  store i32 %134, i32* %132, align 4
  %135 = getelementptr inbounds i32, i32* %132, i64 1
  store i32 179, i32* %135, align 4
  %136 = getelementptr inbounds i32, i32* %135, i64 1
  %137 = load i32, i32* %12, align 4
  %138 = ashr i32 %137, 8
  store i32 %138, i32* %136, align 4
  %139 = getelementptr inbounds i32, i32* %136, i64 1
  store i32 204, i32* %139, align 4
  %140 = getelementptr inbounds i32, i32* %139, i64 1
  %141 = load %struct.video_decoder_resolution*, %struct.video_decoder_resolution** %9, align 8
  %142 = getelementptr inbounds %struct.video_decoder_resolution, %struct.video_decoder_resolution* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = and i32 %143, 255
  store i32 %144, i32* %140, align 4
  %145 = getelementptr inbounds i32, i32* %140, i64 1
  store i32 205, i32* %145, align 4
  %146 = getelementptr inbounds i32, i32* %145, i64 1
  %147 = load %struct.video_decoder_resolution*, %struct.video_decoder_resolution** %9, align 8
  %148 = getelementptr inbounds %struct.video_decoder_resolution, %struct.video_decoder_resolution* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = ashr i32 %149, 8
  store i32 %150, i32* %146, align 4
  %151 = getelementptr inbounds i32, i32* %146, i64 1
  store i32 206, i32* %151, align 4
  %152 = getelementptr inbounds i32, i32* %151, i64 1
  %153 = load %struct.video_decoder_resolution*, %struct.video_decoder_resolution** %9, align 8
  %154 = getelementptr inbounds %struct.video_decoder_resolution, %struct.video_decoder_resolution* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = and i32 %155, 255
  store i32 %156, i32* %152, align 4
  %157 = getelementptr inbounds i32, i32* %152, i64 1
  store i32 207, i32* %157, align 4
  %158 = getelementptr inbounds i32, i32* %157, i64 1
  %159 = load %struct.video_decoder_resolution*, %struct.video_decoder_resolution** %9, align 8
  %160 = getelementptr inbounds %struct.video_decoder_resolution, %struct.video_decoder_resolution* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = ashr i32 %161, 8
  store i32 %162, i32* %158, align 4
  %163 = getelementptr inbounds i32, i32* %158, i64 1
  store i32 208, i32* %163, align 4
  %164 = getelementptr inbounds i32, i32* %163, i64 1
  %165 = load i32, i32* %10, align 4
  store i32 %165, i32* %164, align 4
  %166 = getelementptr inbounds i32, i32* %164, i64 1
  store i32 209, i32* %166, align 4
  %167 = getelementptr inbounds i32, i32* %166, i64 1
  store i32 1, i32* %167, align 4
  %168 = getelementptr inbounds i32, i32* %167, i64 1
  store i32 210, i32* %168, align 4
  %169 = getelementptr inbounds i32, i32* %168, i64 1
  store i32 1, i32* %169, align 4
  %170 = getelementptr inbounds i32, i32* %169, i64 1
  store i32 216, i32* %170, align 4
  %171 = getelementptr inbounds i32, i32* %170, i64 1
  %172 = load i32, i32* %11, align 4
  %173 = and i32 %172, 255
  store i32 %173, i32* %171, align 4
  %174 = getelementptr inbounds i32, i32* %171, i64 1
  store i32 217, i32* %174, align 4
  %175 = getelementptr inbounds i32, i32* %174, i64 1
  %176 = load i32, i32* %11, align 4
  %177 = ashr i32 %176, 8
  store i32 %177, i32* %175, align 4
  %178 = getelementptr inbounds i32, i32* %175, i64 1
  store i32 220, i32* %178, align 4
  %179 = getelementptr inbounds i32, i32* %178, i64 1
  %180 = load i32, i32* %11, align 4
  %181 = sdiv i32 %180, 2
  %182 = and i32 %181, 255
  store i32 %182, i32* %179, align 4
  %183 = getelementptr inbounds i32, i32* %179, i64 1
  store i32 221, i32* %183, align 4
  %184 = getelementptr inbounds i32, i32* %183, i64 1
  %185 = load i32, i32* %11, align 4
  %186 = sdiv i32 %185, 2
  %187 = ashr i32 %186, 8
  store i32 %187, i32* %184, align 4
  %188 = getelementptr inbounds i32, i32* %184, i64 1
  store i32 224, i32* %188, align 4
  %189 = getelementptr inbounds i32, i32* %188, i64 1
  %190 = load i32, i32* %12, align 4
  %191 = and i32 %190, 255
  store i32 %191, i32* %189, align 4
  %192 = getelementptr inbounds i32, i32* %189, i64 1
  store i32 225, i32* %192, align 4
  %193 = getelementptr inbounds i32, i32* %192, i64 1
  %194 = load i32, i32* %12, align 4
  %195 = ashr i32 %194, 8
  store i32 %195, i32* %193, align 4
  %196 = getelementptr inbounds i32, i32* %193, i64 1
  store i32 226, i32* %196, align 4
  %197 = getelementptr inbounds i32, i32* %196, i64 1
  %198 = load i32, i32* %12, align 4
  %199 = and i32 %198, 255
  store i32 %199, i32* %197, align 4
  %200 = getelementptr inbounds i32, i32* %197, i64 1
  store i32 227, i32* %200, align 4
  %201 = getelementptr inbounds i32, i32* %200, i64 1
  %202 = load i32, i32* %12, align 4
  %203 = ashr i32 %202, 8
  store i32 %203, i32* %201, align 4
  %204 = getelementptr inbounds i32, i32* %201, i64 1
  store i32 136, i32* %204, align 4
  %205 = getelementptr inbounds i32, i32* %204, i64 1
  store i32 240, i32* %205, align 4
  %206 = getelementptr inbounds i32, i32* %205, i64 1
  store i32 0, i32* %206, align 4
  %207 = getelementptr inbounds i32, i32* %206, i64 1
  store i32 0, i32* %207, align 4
  %208 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %209 = getelementptr inbounds [66 x i32], [66 x i32]* %13, i64 0, i64 0
  %210 = call i32 @write_regs(%struct.i2c_client* %208, i32* %209)
  br label %533

211:                                              ; preds = %3
  %212 = load i8*, i8** %6, align 8
  %213 = bitcast i8* %212 to i32*
  store i32* %213, i32** %14, align 8
  %214 = getelementptr inbounds [22 x i32], [22 x i32]* %15, i64 0, i64 0
  store i32 136, i32* %214, align 4
  %215 = getelementptr inbounds i32, i32* %214, i64 1
  store i32 192, i32* %215, align 4
  %216 = getelementptr inbounds i32, i32* %215, i64 1
  store i32 152, i32* %216, align 4
  %217 = getelementptr inbounds i32, i32* %216, i64 1
  %218 = load i32*, i32** %14, align 8
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @V4L2_STD_NTSC, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  %223 = zext i1 %222 to i64
  %224 = select i1 %222, i32 18, i32 22
  store i32 %224, i32* %217, align 4
  %225 = getelementptr inbounds i32, i32* %217, i64 1
  store i32 154, i32* %225, align 4
  %226 = getelementptr inbounds i32, i32* %225, i64 1
  %227 = load i32*, i32** %14, align 8
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* @V4L2_STD_NTSC, align 4
  %230 = and i32 %228, %229
  %231 = icmp ne i32 %230, 0
  %232 = zext i1 %231 to i64
  %233 = select i1 %231, i32 242, i32 32
  store i32 %233, i32* %226, align 4
  %234 = getelementptr inbounds i32, i32* %226, i64 1
  store i32 155, i32* %234, align 4
  %235 = getelementptr inbounds i32, i32* %234, i64 1
  %236 = load i32*, i32** %14, align 8
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* @V4L2_STD_NTSC, align 4
  %239 = and i32 %237, %238
  %240 = icmp ne i32 %239, 0
  %241 = zext i1 %240 to i64
  %242 = select i1 %240, i32 0, i32 1
  store i32 %242, i32* %235, align 4
  %243 = getelementptr inbounds i32, i32* %235, i64 1
  store i32 200, i32* %243, align 4
  %244 = getelementptr inbounds i32, i32* %243, i64 1
  %245 = load i32*, i32** %14, align 8
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* @V4L2_STD_NTSC, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  %250 = zext i1 %249 to i64
  %251 = select i1 %249, i32 18, i32 22
  store i32 %251, i32* %244, align 4
  %252 = getelementptr inbounds i32, i32* %244, i64 1
  store i32 202, i32* %252, align 4
  %253 = getelementptr inbounds i32, i32* %252, i64 1
  %254 = load i32*, i32** %14, align 8
  %255 = load i32, i32* %254, align 4
  %256 = load i32, i32* @V4L2_STD_NTSC, align 4
  %257 = and i32 %255, %256
  %258 = icmp ne i32 %257, 0
  %259 = zext i1 %258 to i64
  %260 = select i1 %258, i32 242, i32 32
  store i32 %260, i32* %253, align 4
  %261 = getelementptr inbounds i32, i32* %253, i64 1
  store i32 203, i32* %261, align 4
  %262 = getelementptr inbounds i32, i32* %261, i64 1
  %263 = load i32*, i32** %14, align 8
  %264 = load i32, i32* %263, align 4
  %265 = load i32, i32* @V4L2_STD_NTSC, align 4
  %266 = and i32 %264, %265
  %267 = icmp ne i32 %266, 0
  %268 = zext i1 %267 to i64
  %269 = select i1 %267, i32 0, i32 1
  store i32 %269, i32* %262, align 4
  %270 = getelementptr inbounds i32, i32* %262, i64 1
  store i32 136, i32* %270, align 4
  %271 = getelementptr inbounds i32, i32* %270, i64 1
  store i32 240, i32* %271, align 4
  %272 = getelementptr inbounds i32, i32* %271, i64 1
  store i32 48, i32* %272, align 4
  %273 = getelementptr inbounds i32, i32* %272, i64 1
  %274 = load i32*, i32** %14, align 8
  %275 = load i32, i32* %274, align 4
  %276 = load i32, i32* @V4L2_STD_NTSC, align 4
  %277 = and i32 %275, %276
  %278 = icmp ne i32 %277, 0
  %279 = zext i1 %278 to i64
  %280 = select i1 %278, i32 102, i32 0
  store i32 %280, i32* %273, align 4
  %281 = getelementptr inbounds i32, i32* %273, i64 1
  store i32 49, i32* %281, align 4
  %282 = getelementptr inbounds i32, i32* %281, i64 1
  %283 = load i32*, i32** %14, align 8
  %284 = load i32, i32* %283, align 4
  %285 = load i32, i32* @V4L2_STD_NTSC, align 4
  %286 = and i32 %284, %285
  %287 = icmp ne i32 %286, 0
  %288 = zext i1 %287 to i64
  %289 = select i1 %287, i32 144, i32 224
  store i32 %289, i32* %282, align 4
  %290 = getelementptr inbounds i32, i32* %282, i64 1
  store i32 0, i32* %290, align 4
  %291 = getelementptr inbounds i32, i32* %290, i64 1
  store i32 0, i32* %291, align 4
  %292 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %293 = getelementptr inbounds [22 x i32], [22 x i32]* %15, i64 0, i64 0
  %294 = call i32 @write_regs(%struct.i2c_client* %292, i32* %293)
  %295 = load i32*, i32** %14, align 8
  %296 = load i32, i32* %295, align 4
  %297 = load %struct.wis_saa7115*, %struct.wis_saa7115** %7, align 8
  %298 = getelementptr inbounds %struct.wis_saa7115, %struct.wis_saa7115* %297, i32 0, i32 0
  store i32 %296, i32* %298, align 4
  br label %533

299:                                              ; preds = %3
  %300 = load i8*, i8** %6, align 8
  %301 = bitcast i8* %300 to %struct.v4l2_queryctrl*
  store %struct.v4l2_queryctrl* %301, %struct.v4l2_queryctrl** %16, align 8
  %302 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %16, align 8
  %303 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %302, i32 0, i32 7
  %304 = load i32, i32* %303, align 8
  switch i32 %304, label %377 [
    i32 136, label %305
    i32 135, label %323
    i32 133, label %341
    i32 134, label %359
  ]

305:                                              ; preds = %299
  %306 = load i8*, i8** @V4L2_CTRL_TYPE_INTEGER, align 8
  %307 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %16, align 8
  %308 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %307, i32 0, i32 6
  store i8* %306, i8** %308, align 8
  %309 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %16, align 8
  %310 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %309, i32 0, i32 5
  %311 = load i32, i32* %310, align 4
  %312 = call i32 @strncpy(i32 %311, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 4)
  %313 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %16, align 8
  %314 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %313, i32 0, i32 0
  store i32 0, i32* %314, align 8
  %315 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %16, align 8
  %316 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %315, i32 0, i32 1
  store i32 255, i32* %316, align 4
  %317 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %16, align 8
  %318 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %317, i32 0, i32 2
  store i32 1, i32* %318, align 8
  %319 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %16, align 8
  %320 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %319, i32 0, i32 3
  store i32 128, i32* %320, align 4
  %321 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %16, align 8
  %322 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %321, i32 0, i32 4
  store i32 0, i32* %322, align 8
  br label %377

323:                                              ; preds = %299
  %324 = load i8*, i8** @V4L2_CTRL_TYPE_INTEGER, align 8
  %325 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %16, align 8
  %326 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %325, i32 0, i32 6
  store i8* %324, i8** %326, align 8
  %327 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %16, align 8
  %328 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %327, i32 0, i32 5
  %329 = load i32, i32* %328, align 4
  %330 = call i32 @strncpy(i32 %329, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %331 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %16, align 8
  %332 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %331, i32 0, i32 0
  store i32 0, i32* %332, align 8
  %333 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %16, align 8
  %334 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %333, i32 0, i32 1
  store i32 127, i32* %334, align 4
  %335 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %16, align 8
  %336 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %335, i32 0, i32 2
  store i32 1, i32* %336, align 8
  %337 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %16, align 8
  %338 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %337, i32 0, i32 3
  store i32 64, i32* %338, align 4
  %339 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %16, align 8
  %340 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %339, i32 0, i32 4
  store i32 0, i32* %340, align 8
  br label %377

341:                                              ; preds = %299
  %342 = load i8*, i8** @V4L2_CTRL_TYPE_INTEGER, align 8
  %343 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %16, align 8
  %344 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %343, i32 0, i32 6
  store i8* %342, i8** %344, align 8
  %345 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %16, align 8
  %346 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %345, i32 0, i32 5
  %347 = load i32, i32* %346, align 4
  %348 = call i32 @strncpy(i32 %347, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %349 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %16, align 8
  %350 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %349, i32 0, i32 0
  store i32 0, i32* %350, align 8
  %351 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %16, align 8
  %352 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %351, i32 0, i32 1
  store i32 127, i32* %352, align 4
  %353 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %16, align 8
  %354 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %353, i32 0, i32 2
  store i32 1, i32* %354, align 8
  %355 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %16, align 8
  %356 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %355, i32 0, i32 3
  store i32 64, i32* %356, align 4
  %357 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %16, align 8
  %358 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %357, i32 0, i32 4
  store i32 0, i32* %358, align 8
  br label %377

359:                                              ; preds = %299
  %360 = load i8*, i8** @V4L2_CTRL_TYPE_INTEGER, align 8
  %361 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %16, align 8
  %362 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %361, i32 0, i32 6
  store i8* %360, i8** %362, align 8
  %363 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %16, align 8
  %364 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %363, i32 0, i32 5
  %365 = load i32, i32* %364, align 4
  %366 = call i32 @strncpy(i32 %365, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %367 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %16, align 8
  %368 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %367, i32 0, i32 0
  store i32 -128, i32* %368, align 8
  %369 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %16, align 8
  %370 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %369, i32 0, i32 1
  store i32 127, i32* %370, align 4
  %371 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %16, align 8
  %372 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %371, i32 0, i32 2
  store i32 1, i32* %372, align 8
  %373 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %16, align 8
  %374 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %373, i32 0, i32 3
  store i32 0, i32* %374, align 4
  %375 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %16, align 8
  %376 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %375, i32 0, i32 4
  store i32 0, i32* %376, align 8
  br label %377

377:                                              ; preds = %299, %359, %341, %323, %305
  br label %533

378:                                              ; preds = %3
  %379 = load i8*, i8** %6, align 8
  %380 = bitcast i8* %379 to %struct.v4l2_control*
  store %struct.v4l2_control* %380, %struct.v4l2_control** %17, align 8
  %381 = load %struct.v4l2_control*, %struct.v4l2_control** %17, align 8
  %382 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %381, i32 0, i32 1
  %383 = load i32, i32* %382, align 4
  switch i32 %383, label %500 [
    i32 136, label %384
    i32 135, label %413
    i32 133, label %442
    i32 134, label %471
  ]

384:                                              ; preds = %378
  %385 = load %struct.v4l2_control*, %struct.v4l2_control** %17, align 8
  %386 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 4
  %388 = icmp sgt i32 %387, 255
  br i1 %388, label %389, label %392

389:                                              ; preds = %384
  %390 = load %struct.wis_saa7115*, %struct.wis_saa7115** %7, align 8
  %391 = getelementptr inbounds %struct.wis_saa7115, %struct.wis_saa7115* %390, i32 0, i32 1
  store i32 255, i32* %391, align 4
  br label %407

392:                                              ; preds = %384
  %393 = load %struct.v4l2_control*, %struct.v4l2_control** %17, align 8
  %394 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %393, i32 0, i32 0
  %395 = load i32, i32* %394, align 4
  %396 = icmp slt i32 %395, 0
  br i1 %396, label %397, label %400

397:                                              ; preds = %392
  %398 = load %struct.wis_saa7115*, %struct.wis_saa7115** %7, align 8
  %399 = getelementptr inbounds %struct.wis_saa7115, %struct.wis_saa7115* %398, i32 0, i32 1
  store i32 0, i32* %399, align 4
  br label %406

400:                                              ; preds = %392
  %401 = load %struct.v4l2_control*, %struct.v4l2_control** %17, align 8
  %402 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %401, i32 0, i32 0
  %403 = load i32, i32* %402, align 4
  %404 = load %struct.wis_saa7115*, %struct.wis_saa7115** %7, align 8
  %405 = getelementptr inbounds %struct.wis_saa7115, %struct.wis_saa7115* %404, i32 0, i32 1
  store i32 %403, i32* %405, align 4
  br label %406

406:                                              ; preds = %400, %397
  br label %407

407:                                              ; preds = %406, %389
  %408 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %409 = load %struct.wis_saa7115*, %struct.wis_saa7115** %7, align 8
  %410 = getelementptr inbounds %struct.wis_saa7115, %struct.wis_saa7115* %409, i32 0, i32 1
  %411 = load i32, i32* %410, align 4
  %412 = call i32 @write_reg(%struct.i2c_client* %408, i32 10, i32 %411)
  br label %500

413:                                              ; preds = %378
  %414 = load %struct.v4l2_control*, %struct.v4l2_control** %17, align 8
  %415 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %414, i32 0, i32 0
  %416 = load i32, i32* %415, align 4
  %417 = icmp sgt i32 %416, 127
  br i1 %417, label %418, label %421

418:                                              ; preds = %413
  %419 = load %struct.wis_saa7115*, %struct.wis_saa7115** %7, align 8
  %420 = getelementptr inbounds %struct.wis_saa7115, %struct.wis_saa7115* %419, i32 0, i32 2
  store i32 127, i32* %420, align 4
  br label %436

421:                                              ; preds = %413
  %422 = load %struct.v4l2_control*, %struct.v4l2_control** %17, align 8
  %423 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %422, i32 0, i32 0
  %424 = load i32, i32* %423, align 4
  %425 = icmp slt i32 %424, 0
  br i1 %425, label %426, label %429

426:                                              ; preds = %421
  %427 = load %struct.wis_saa7115*, %struct.wis_saa7115** %7, align 8
  %428 = getelementptr inbounds %struct.wis_saa7115, %struct.wis_saa7115* %427, i32 0, i32 2
  store i32 0, i32* %428, align 4
  br label %435

429:                                              ; preds = %421
  %430 = load %struct.v4l2_control*, %struct.v4l2_control** %17, align 8
  %431 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %430, i32 0, i32 0
  %432 = load i32, i32* %431, align 4
  %433 = load %struct.wis_saa7115*, %struct.wis_saa7115** %7, align 8
  %434 = getelementptr inbounds %struct.wis_saa7115, %struct.wis_saa7115* %433, i32 0, i32 2
  store i32 %432, i32* %434, align 4
  br label %435

435:                                              ; preds = %429, %426
  br label %436

436:                                              ; preds = %435, %418
  %437 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %438 = load %struct.wis_saa7115*, %struct.wis_saa7115** %7, align 8
  %439 = getelementptr inbounds %struct.wis_saa7115, %struct.wis_saa7115* %438, i32 0, i32 2
  %440 = load i32, i32* %439, align 4
  %441 = call i32 @write_reg(%struct.i2c_client* %437, i32 11, i32 %440)
  br label %500

442:                                              ; preds = %378
  %443 = load %struct.v4l2_control*, %struct.v4l2_control** %17, align 8
  %444 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %443, i32 0, i32 0
  %445 = load i32, i32* %444, align 4
  %446 = icmp sgt i32 %445, 127
  br i1 %446, label %447, label %450

447:                                              ; preds = %442
  %448 = load %struct.wis_saa7115*, %struct.wis_saa7115** %7, align 8
  %449 = getelementptr inbounds %struct.wis_saa7115, %struct.wis_saa7115* %448, i32 0, i32 3
  store i32 127, i32* %449, align 4
  br label %465

450:                                              ; preds = %442
  %451 = load %struct.v4l2_control*, %struct.v4l2_control** %17, align 8
  %452 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %451, i32 0, i32 0
  %453 = load i32, i32* %452, align 4
  %454 = icmp slt i32 %453, 0
  br i1 %454, label %455, label %458

455:                                              ; preds = %450
  %456 = load %struct.wis_saa7115*, %struct.wis_saa7115** %7, align 8
  %457 = getelementptr inbounds %struct.wis_saa7115, %struct.wis_saa7115* %456, i32 0, i32 3
  store i32 0, i32* %457, align 4
  br label %464

458:                                              ; preds = %450
  %459 = load %struct.v4l2_control*, %struct.v4l2_control** %17, align 8
  %460 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %459, i32 0, i32 0
  %461 = load i32, i32* %460, align 4
  %462 = load %struct.wis_saa7115*, %struct.wis_saa7115** %7, align 8
  %463 = getelementptr inbounds %struct.wis_saa7115, %struct.wis_saa7115* %462, i32 0, i32 3
  store i32 %461, i32* %463, align 4
  br label %464

464:                                              ; preds = %458, %455
  br label %465

465:                                              ; preds = %464, %447
  %466 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %467 = load %struct.wis_saa7115*, %struct.wis_saa7115** %7, align 8
  %468 = getelementptr inbounds %struct.wis_saa7115, %struct.wis_saa7115* %467, i32 0, i32 3
  %469 = load i32, i32* %468, align 4
  %470 = call i32 @write_reg(%struct.i2c_client* %466, i32 12, i32 %469)
  br label %500

471:                                              ; preds = %378
  %472 = load %struct.v4l2_control*, %struct.v4l2_control** %17, align 8
  %473 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %472, i32 0, i32 0
  %474 = load i32, i32* %473, align 4
  %475 = icmp sgt i32 %474, 127
  br i1 %475, label %476, label %479

476:                                              ; preds = %471
  %477 = load %struct.wis_saa7115*, %struct.wis_saa7115** %7, align 8
  %478 = getelementptr inbounds %struct.wis_saa7115, %struct.wis_saa7115* %477, i32 0, i32 4
  store i32 127, i32* %478, align 4
  br label %494

479:                                              ; preds = %471
  %480 = load %struct.v4l2_control*, %struct.v4l2_control** %17, align 8
  %481 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %480, i32 0, i32 0
  %482 = load i32, i32* %481, align 4
  %483 = icmp slt i32 %482, -128
  br i1 %483, label %484, label %487

484:                                              ; preds = %479
  %485 = load %struct.wis_saa7115*, %struct.wis_saa7115** %7, align 8
  %486 = getelementptr inbounds %struct.wis_saa7115, %struct.wis_saa7115* %485, i32 0, i32 4
  store i32 -128, i32* %486, align 4
  br label %493

487:                                              ; preds = %479
  %488 = load %struct.v4l2_control*, %struct.v4l2_control** %17, align 8
  %489 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %488, i32 0, i32 0
  %490 = load i32, i32* %489, align 4
  %491 = load %struct.wis_saa7115*, %struct.wis_saa7115** %7, align 8
  %492 = getelementptr inbounds %struct.wis_saa7115, %struct.wis_saa7115* %491, i32 0, i32 4
  store i32 %490, i32* %492, align 4
  br label %493

493:                                              ; preds = %487, %484
  br label %494

494:                                              ; preds = %493, %476
  %495 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %496 = load %struct.wis_saa7115*, %struct.wis_saa7115** %7, align 8
  %497 = getelementptr inbounds %struct.wis_saa7115, %struct.wis_saa7115* %496, i32 0, i32 4
  %498 = load i32, i32* %497, align 4
  %499 = call i32 @write_reg(%struct.i2c_client* %495, i32 13, i32 %498)
  br label %500

500:                                              ; preds = %378, %494, %465, %436, %407
  br label %533

501:                                              ; preds = %3
  %502 = load i8*, i8** %6, align 8
  %503 = bitcast i8* %502 to %struct.v4l2_control*
  store %struct.v4l2_control* %503, %struct.v4l2_control** %18, align 8
  %504 = load %struct.v4l2_control*, %struct.v4l2_control** %18, align 8
  %505 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %504, i32 0, i32 1
  %506 = load i32, i32* %505, align 4
  switch i32 %506, label %531 [
    i32 136, label %507
    i32 135, label %513
    i32 133, label %519
    i32 134, label %525
  ]

507:                                              ; preds = %501
  %508 = load %struct.wis_saa7115*, %struct.wis_saa7115** %7, align 8
  %509 = getelementptr inbounds %struct.wis_saa7115, %struct.wis_saa7115* %508, i32 0, i32 1
  %510 = load i32, i32* %509, align 4
  %511 = load %struct.v4l2_control*, %struct.v4l2_control** %18, align 8
  %512 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %511, i32 0, i32 0
  store i32 %510, i32* %512, align 4
  br label %531

513:                                              ; preds = %501
  %514 = load %struct.wis_saa7115*, %struct.wis_saa7115** %7, align 8
  %515 = getelementptr inbounds %struct.wis_saa7115, %struct.wis_saa7115* %514, i32 0, i32 2
  %516 = load i32, i32* %515, align 4
  %517 = load %struct.v4l2_control*, %struct.v4l2_control** %18, align 8
  %518 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %517, i32 0, i32 0
  store i32 %516, i32* %518, align 4
  br label %531

519:                                              ; preds = %501
  %520 = load %struct.wis_saa7115*, %struct.wis_saa7115** %7, align 8
  %521 = getelementptr inbounds %struct.wis_saa7115, %struct.wis_saa7115* %520, i32 0, i32 3
  %522 = load i32, i32* %521, align 4
  %523 = load %struct.v4l2_control*, %struct.v4l2_control** %18, align 8
  %524 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %523, i32 0, i32 0
  store i32 %522, i32* %524, align 4
  br label %531

525:                                              ; preds = %501
  %526 = load %struct.wis_saa7115*, %struct.wis_saa7115** %7, align 8
  %527 = getelementptr inbounds %struct.wis_saa7115, %struct.wis_saa7115* %526, i32 0, i32 4
  %528 = load i32, i32* %527, align 4
  %529 = load %struct.v4l2_control*, %struct.v4l2_control** %18, align 8
  %530 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %529, i32 0, i32 0
  store i32 %528, i32* %530, align 4
  br label %531

531:                                              ; preds = %501, %525, %519, %513, %507
  br label %533

532:                                              ; preds = %3
  br label %533

533:                                              ; preds = %532, %531, %500, %377, %211, %50, %22
  ret i32 0
}

declare dso_local %struct.wis_saa7115* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @write_regs(%struct.i2c_client*, i32*) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @write_reg(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
