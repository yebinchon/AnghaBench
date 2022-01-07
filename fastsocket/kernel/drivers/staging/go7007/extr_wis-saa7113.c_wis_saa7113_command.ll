; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_wis-saa7113.c_wis_saa7113_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_wis-saa7113.c_wis_saa7113_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.wis_saa7113 = type { i32, i32, i32, i32, i32 }
%struct.v4l2_queryctrl = type { i32, i32, i32, i32, i32, i32, i8*, i32 }
%struct.v4l2_control = type { i32, i32 }

@V4L2_STD_NTSC = common dso_local global i32 0, align 4
@V4L2_STD_PAL = common dso_local global i32 0, align 4
@V4L2_STD_SECAM = common dso_local global i32 0, align 4
@V4L2_CTRL_TYPE_INTEGER = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"Brightness\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Contrast\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Saturation\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"Hue\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i8*)* @wis_saa7113_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wis_saa7113_command(%struct.i2c_client* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.wis_saa7113*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.v4l2_queryctrl*, align 8
  %11 = alloca %struct.v4l2_control*, align 8
  %12 = alloca %struct.v4l2_control*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = call %struct.wis_saa7113* @i2c_get_clientdata(%struct.i2c_client* %13)
  store %struct.wis_saa7113* %14, %struct.wis_saa7113** %7, align 8
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %309 [
    i32 129, label %16
    i32 128, label %31
    i32 131, label %76
    i32 130, label %155
    i32 132, label %278
  ]

16:                                               ; preds = %3
  %17 = load i8*, i8** %6, align 8
  %18 = bitcast i8* %17 to i32*
  store i32* %18, i32** %8, align 8
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = load i32, i32* %20, align 4
  %22 = or i32 192, %21
  %23 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %19, i32 2, i32 %22)
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %26, 6
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 64, i32 128
  %30 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %24, i32 9, i32 %29)
  br label %310

31:                                               ; preds = %3
  %32 = load i8*, i8** %6, align 8
  %33 = bitcast i8* %32 to i32*
  store i32* %33, i32** %9, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.wis_saa7113*, %struct.wis_saa7113** %7, align 8
  %37 = getelementptr inbounds %struct.wis_saa7113, %struct.wis_saa7113* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.wis_saa7113*, %struct.wis_saa7113** %7, align 8
  %39 = getelementptr inbounds %struct.wis_saa7113, %struct.wis_saa7113* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @V4L2_STD_NTSC, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %31
  %45 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %46 = call i32 @write_reg(%struct.i2c_client* %45, i32 14, i32 1)
  %47 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %48 = call i32 @write_reg(%struct.i2c_client* %47, i32 16, i32 64)
  br label %75

49:                                               ; preds = %31
  %50 = load %struct.wis_saa7113*, %struct.wis_saa7113** %7, align 8
  %51 = getelementptr inbounds %struct.wis_saa7113, %struct.wis_saa7113* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @V4L2_STD_PAL, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %49
  %57 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %58 = call i32 @write_reg(%struct.i2c_client* %57, i32 14, i32 1)
  %59 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %60 = call i32 @write_reg(%struct.i2c_client* %59, i32 16, i32 72)
  br label %74

61:                                               ; preds = %49
  %62 = load %struct.wis_saa7113*, %struct.wis_saa7113** %7, align 8
  %63 = getelementptr inbounds %struct.wis_saa7113, %struct.wis_saa7113* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @V4L2_STD_SECAM, align 4
  %66 = mul nsw i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %61
  %69 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %70 = call i32 @write_reg(%struct.i2c_client* %69, i32 14, i32 80)
  %71 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %72 = call i32 @write_reg(%struct.i2c_client* %71, i32 16, i32 72)
  br label %73

73:                                               ; preds = %68, %61
  br label %74

74:                                               ; preds = %73, %56
  br label %75

75:                                               ; preds = %74, %44
  br label %310

76:                                               ; preds = %3
  %77 = load i8*, i8** %6, align 8
  %78 = bitcast i8* %77 to %struct.v4l2_queryctrl*
  store %struct.v4l2_queryctrl* %78, %struct.v4l2_queryctrl** %10, align 8
  %79 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %10, align 8
  %80 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %79, i32 0, i32 7
  %81 = load i32, i32* %80, align 8
  switch i32 %81, label %154 [
    i32 136, label %82
    i32 135, label %100
    i32 133, label %118
    i32 134, label %136
  ]

82:                                               ; preds = %76
  %83 = load i8*, i8** @V4L2_CTRL_TYPE_INTEGER, align 8
  %84 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %10, align 8
  %85 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %84, i32 0, i32 6
  store i8* %83, i8** %85, align 8
  %86 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %10, align 8
  %87 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @strncpy(i32 %88, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 4)
  %90 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %10, align 8
  %91 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %90, i32 0, i32 0
  store i32 0, i32* %91, align 8
  %92 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %10, align 8
  %93 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %92, i32 0, i32 1
  store i32 255, i32* %93, align 4
  %94 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %10, align 8
  %95 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %94, i32 0, i32 2
  store i32 1, i32* %95, align 8
  %96 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %10, align 8
  %97 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %96, i32 0, i32 3
  store i32 128, i32* %97, align 4
  %98 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %10, align 8
  %99 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %98, i32 0, i32 4
  store i32 0, i32* %99, align 8
  br label %154

100:                                              ; preds = %76
  %101 = load i8*, i8** @V4L2_CTRL_TYPE_INTEGER, align 8
  %102 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %10, align 8
  %103 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %102, i32 0, i32 6
  store i8* %101, i8** %103, align 8
  %104 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %10, align 8
  %105 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @strncpy(i32 %106, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %108 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %10, align 8
  %109 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %108, i32 0, i32 0
  store i32 0, i32* %109, align 8
  %110 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %10, align 8
  %111 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %110, i32 0, i32 1
  store i32 127, i32* %111, align 4
  %112 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %10, align 8
  %113 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %112, i32 0, i32 2
  store i32 1, i32* %113, align 8
  %114 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %10, align 8
  %115 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %114, i32 0, i32 3
  store i32 71, i32* %115, align 4
  %116 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %10, align 8
  %117 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %116, i32 0, i32 4
  store i32 0, i32* %117, align 8
  br label %154

118:                                              ; preds = %76
  %119 = load i8*, i8** @V4L2_CTRL_TYPE_INTEGER, align 8
  %120 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %10, align 8
  %121 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %120, i32 0, i32 6
  store i8* %119, i8** %121, align 8
  %122 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %10, align 8
  %123 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @strncpy(i32 %124, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %126 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %10, align 8
  %127 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %126, i32 0, i32 0
  store i32 0, i32* %127, align 8
  %128 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %10, align 8
  %129 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %128, i32 0, i32 1
  store i32 127, i32* %129, align 4
  %130 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %10, align 8
  %131 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %130, i32 0, i32 2
  store i32 1, i32* %131, align 8
  %132 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %10, align 8
  %133 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %132, i32 0, i32 3
  store i32 64, i32* %133, align 4
  %134 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %10, align 8
  %135 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %134, i32 0, i32 4
  store i32 0, i32* %135, align 8
  br label %154

136:                                              ; preds = %76
  %137 = load i8*, i8** @V4L2_CTRL_TYPE_INTEGER, align 8
  %138 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %10, align 8
  %139 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %138, i32 0, i32 6
  store i8* %137, i8** %139, align 8
  %140 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %10, align 8
  %141 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %140, i32 0, i32 5
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @strncpy(i32 %142, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %144 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %10, align 8
  %145 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %144, i32 0, i32 0
  store i32 -128, i32* %145, align 8
  %146 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %10, align 8
  %147 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %146, i32 0, i32 1
  store i32 127, i32* %147, align 4
  %148 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %10, align 8
  %149 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %148, i32 0, i32 2
  store i32 1, i32* %149, align 8
  %150 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %10, align 8
  %151 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %150, i32 0, i32 3
  store i32 0, i32* %151, align 4
  %152 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %10, align 8
  %153 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %152, i32 0, i32 4
  store i32 0, i32* %153, align 8
  br label %154

154:                                              ; preds = %76, %136, %118, %100, %82
  br label %310

155:                                              ; preds = %3
  %156 = load i8*, i8** %6, align 8
  %157 = bitcast i8* %156 to %struct.v4l2_control*
  store %struct.v4l2_control* %157, %struct.v4l2_control** %11, align 8
  %158 = load %struct.v4l2_control*, %struct.v4l2_control** %11, align 8
  %159 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  switch i32 %160, label %277 [
    i32 136, label %161
    i32 135, label %190
    i32 133, label %219
    i32 134, label %248
  ]

161:                                              ; preds = %155
  %162 = load %struct.v4l2_control*, %struct.v4l2_control** %11, align 8
  %163 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = icmp sgt i32 %164, 255
  br i1 %165, label %166, label %169

166:                                              ; preds = %161
  %167 = load %struct.wis_saa7113*, %struct.wis_saa7113** %7, align 8
  %168 = getelementptr inbounds %struct.wis_saa7113, %struct.wis_saa7113* %167, i32 0, i32 1
  store i32 255, i32* %168, align 4
  br label %184

169:                                              ; preds = %161
  %170 = load %struct.v4l2_control*, %struct.v4l2_control** %11, align 8
  %171 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %169
  %175 = load %struct.wis_saa7113*, %struct.wis_saa7113** %7, align 8
  %176 = getelementptr inbounds %struct.wis_saa7113, %struct.wis_saa7113* %175, i32 0, i32 1
  store i32 0, i32* %176, align 4
  br label %183

177:                                              ; preds = %169
  %178 = load %struct.v4l2_control*, %struct.v4l2_control** %11, align 8
  %179 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.wis_saa7113*, %struct.wis_saa7113** %7, align 8
  %182 = getelementptr inbounds %struct.wis_saa7113, %struct.wis_saa7113* %181, i32 0, i32 1
  store i32 %180, i32* %182, align 4
  br label %183

183:                                              ; preds = %177, %174
  br label %184

184:                                              ; preds = %183, %166
  %185 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %186 = load %struct.wis_saa7113*, %struct.wis_saa7113** %7, align 8
  %187 = getelementptr inbounds %struct.wis_saa7113, %struct.wis_saa7113* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @write_reg(%struct.i2c_client* %185, i32 10, i32 %188)
  br label %277

190:                                              ; preds = %155
  %191 = load %struct.v4l2_control*, %struct.v4l2_control** %11, align 8
  %192 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = icmp sgt i32 %193, 127
  br i1 %194, label %195, label %198

195:                                              ; preds = %190
  %196 = load %struct.wis_saa7113*, %struct.wis_saa7113** %7, align 8
  %197 = getelementptr inbounds %struct.wis_saa7113, %struct.wis_saa7113* %196, i32 0, i32 2
  store i32 127, i32* %197, align 4
  br label %213

198:                                              ; preds = %190
  %199 = load %struct.v4l2_control*, %struct.v4l2_control** %11, align 8
  %200 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = icmp slt i32 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %198
  %204 = load %struct.wis_saa7113*, %struct.wis_saa7113** %7, align 8
  %205 = getelementptr inbounds %struct.wis_saa7113, %struct.wis_saa7113* %204, i32 0, i32 2
  store i32 0, i32* %205, align 4
  br label %212

206:                                              ; preds = %198
  %207 = load %struct.v4l2_control*, %struct.v4l2_control** %11, align 8
  %208 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.wis_saa7113*, %struct.wis_saa7113** %7, align 8
  %211 = getelementptr inbounds %struct.wis_saa7113, %struct.wis_saa7113* %210, i32 0, i32 2
  store i32 %209, i32* %211, align 4
  br label %212

212:                                              ; preds = %206, %203
  br label %213

213:                                              ; preds = %212, %195
  %214 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %215 = load %struct.wis_saa7113*, %struct.wis_saa7113** %7, align 8
  %216 = getelementptr inbounds %struct.wis_saa7113, %struct.wis_saa7113* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @write_reg(%struct.i2c_client* %214, i32 11, i32 %217)
  br label %277

219:                                              ; preds = %155
  %220 = load %struct.v4l2_control*, %struct.v4l2_control** %11, align 8
  %221 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = icmp sgt i32 %222, 127
  br i1 %223, label %224, label %227

224:                                              ; preds = %219
  %225 = load %struct.wis_saa7113*, %struct.wis_saa7113** %7, align 8
  %226 = getelementptr inbounds %struct.wis_saa7113, %struct.wis_saa7113* %225, i32 0, i32 3
  store i32 127, i32* %226, align 4
  br label %242

227:                                              ; preds = %219
  %228 = load %struct.v4l2_control*, %struct.v4l2_control** %11, align 8
  %229 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = icmp slt i32 %230, 0
  br i1 %231, label %232, label %235

232:                                              ; preds = %227
  %233 = load %struct.wis_saa7113*, %struct.wis_saa7113** %7, align 8
  %234 = getelementptr inbounds %struct.wis_saa7113, %struct.wis_saa7113* %233, i32 0, i32 3
  store i32 0, i32* %234, align 4
  br label %241

235:                                              ; preds = %227
  %236 = load %struct.v4l2_control*, %struct.v4l2_control** %11, align 8
  %237 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.wis_saa7113*, %struct.wis_saa7113** %7, align 8
  %240 = getelementptr inbounds %struct.wis_saa7113, %struct.wis_saa7113* %239, i32 0, i32 3
  store i32 %238, i32* %240, align 4
  br label %241

241:                                              ; preds = %235, %232
  br label %242

242:                                              ; preds = %241, %224
  %243 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %244 = load %struct.wis_saa7113*, %struct.wis_saa7113** %7, align 8
  %245 = getelementptr inbounds %struct.wis_saa7113, %struct.wis_saa7113* %244, i32 0, i32 3
  %246 = load i32, i32* %245, align 4
  %247 = call i32 @write_reg(%struct.i2c_client* %243, i32 12, i32 %246)
  br label %277

248:                                              ; preds = %155
  %249 = load %struct.v4l2_control*, %struct.v4l2_control** %11, align 8
  %250 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = icmp sgt i32 %251, 127
  br i1 %252, label %253, label %256

253:                                              ; preds = %248
  %254 = load %struct.wis_saa7113*, %struct.wis_saa7113** %7, align 8
  %255 = getelementptr inbounds %struct.wis_saa7113, %struct.wis_saa7113* %254, i32 0, i32 4
  store i32 127, i32* %255, align 4
  br label %271

256:                                              ; preds = %248
  %257 = load %struct.v4l2_control*, %struct.v4l2_control** %11, align 8
  %258 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = icmp slt i32 %259, -128
  br i1 %260, label %261, label %264

261:                                              ; preds = %256
  %262 = load %struct.wis_saa7113*, %struct.wis_saa7113** %7, align 8
  %263 = getelementptr inbounds %struct.wis_saa7113, %struct.wis_saa7113* %262, i32 0, i32 4
  store i32 -128, i32* %263, align 4
  br label %270

264:                                              ; preds = %256
  %265 = load %struct.v4l2_control*, %struct.v4l2_control** %11, align 8
  %266 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = load %struct.wis_saa7113*, %struct.wis_saa7113** %7, align 8
  %269 = getelementptr inbounds %struct.wis_saa7113, %struct.wis_saa7113* %268, i32 0, i32 4
  store i32 %267, i32* %269, align 4
  br label %270

270:                                              ; preds = %264, %261
  br label %271

271:                                              ; preds = %270, %253
  %272 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %273 = load %struct.wis_saa7113*, %struct.wis_saa7113** %7, align 8
  %274 = getelementptr inbounds %struct.wis_saa7113, %struct.wis_saa7113* %273, i32 0, i32 4
  %275 = load i32, i32* %274, align 4
  %276 = call i32 @write_reg(%struct.i2c_client* %272, i32 13, i32 %275)
  br label %277

277:                                              ; preds = %155, %271, %242, %213, %184
  br label %310

278:                                              ; preds = %3
  %279 = load i8*, i8** %6, align 8
  %280 = bitcast i8* %279 to %struct.v4l2_control*
  store %struct.v4l2_control* %280, %struct.v4l2_control** %12, align 8
  %281 = load %struct.v4l2_control*, %struct.v4l2_control** %12, align 8
  %282 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 4
  switch i32 %283, label %308 [
    i32 136, label %284
    i32 135, label %290
    i32 133, label %296
    i32 134, label %302
  ]

284:                                              ; preds = %278
  %285 = load %struct.wis_saa7113*, %struct.wis_saa7113** %7, align 8
  %286 = getelementptr inbounds %struct.wis_saa7113, %struct.wis_saa7113* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 4
  %288 = load %struct.v4l2_control*, %struct.v4l2_control** %12, align 8
  %289 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %288, i32 0, i32 0
  store i32 %287, i32* %289, align 4
  br label %308

290:                                              ; preds = %278
  %291 = load %struct.wis_saa7113*, %struct.wis_saa7113** %7, align 8
  %292 = getelementptr inbounds %struct.wis_saa7113, %struct.wis_saa7113* %291, i32 0, i32 2
  %293 = load i32, i32* %292, align 4
  %294 = load %struct.v4l2_control*, %struct.v4l2_control** %12, align 8
  %295 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %294, i32 0, i32 0
  store i32 %293, i32* %295, align 4
  br label %308

296:                                              ; preds = %278
  %297 = load %struct.wis_saa7113*, %struct.wis_saa7113** %7, align 8
  %298 = getelementptr inbounds %struct.wis_saa7113, %struct.wis_saa7113* %297, i32 0, i32 3
  %299 = load i32, i32* %298, align 4
  %300 = load %struct.v4l2_control*, %struct.v4l2_control** %12, align 8
  %301 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %300, i32 0, i32 0
  store i32 %299, i32* %301, align 4
  br label %308

302:                                              ; preds = %278
  %303 = load %struct.wis_saa7113*, %struct.wis_saa7113** %7, align 8
  %304 = getelementptr inbounds %struct.wis_saa7113, %struct.wis_saa7113* %303, i32 0, i32 4
  %305 = load i32, i32* %304, align 4
  %306 = load %struct.v4l2_control*, %struct.v4l2_control** %12, align 8
  %307 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %306, i32 0, i32 0
  store i32 %305, i32* %307, align 4
  br label %308

308:                                              ; preds = %278, %302, %296, %290, %284
  br label %310

309:                                              ; preds = %3
  br label %310

310:                                              ; preds = %309, %308, %277, %154, %75, %16
  ret i32 0
}

declare dso_local %struct.wis_saa7113* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @write_reg(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
