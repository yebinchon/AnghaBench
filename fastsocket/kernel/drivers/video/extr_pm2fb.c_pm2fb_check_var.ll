; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pm2fb.c_pm2fb_check_var.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pm2fb.c_pm2fb_check_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, i32, i64 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.fb_info = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"depth not supported: %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"virtual x resolution != physical x resolution not supported\0A\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"virtual y resolution < physical y resolution not possible\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"xoffset not supported\0A\00", align 1
@FB_VMODE_MASK = common dso_local global i32 0, align 4
@FB_VMODE_INTERLACED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"interlace not supported\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"width not supported: %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"height not supported: %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"no memory for screen (%ux%ux%u)\0A\00", align 1
@PM2_MAX_PIXCLOCK = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [28 x i8] c"pixclock too high (%ldKHz)\0A\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"Checking graphics mode at %dx%d depth %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)* @pm2fb_check_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm2fb_check_var(%struct.fb_var_screeninfo* %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca i32, align 4
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %4, align 8
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  %7 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %8 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 8
  br i1 %10, label %11, label %33

11:                                               ; preds = %2
  %12 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %13 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 16
  br i1 %15, label %16, label %33

16:                                               ; preds = %11
  %17 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %18 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 24
  br i1 %20, label %21, label %33

21:                                               ; preds = %16
  %22 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %23 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 32
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %28 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %275

33:                                               ; preds = %21, %16, %11, %2
  %34 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %35 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %38 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %36, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %33
  %42 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %275

45:                                               ; preds = %33
  %46 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %47 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %50 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = icmp sgt i32 %48, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %45
  %54 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0))
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %275

57:                                               ; preds = %45
  %58 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %59 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = icmp sgt i32 %60, 2047
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %64 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %63, i32 0, i32 4
  store i32 2047, i32* %64, align 8
  br label %65

65:                                               ; preds = %62, %57
  %66 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %67 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %66, i32 0, i32 14
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %275

74:                                               ; preds = %65
  %75 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %76 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @FB_VMODE_MASK, align 4
  %79 = and i32 %77, %78
  %80 = load i32, i32* @FB_VMODE_INTERLACED, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %74
  %83 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %275

86:                                               ; preds = %74
  %87 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %88 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 15
  %91 = and i32 %90, -16
  %92 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %93 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %95 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %98 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = add nsw i32 %99, 7
  %101 = ashr i32 %100, 3
  %102 = mul nsw i32 %96, %101
  store i32 %102, i32* %6, align 4
  %103 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %104 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp slt i32 %105, 320
  br i1 %106, label %112, label %107

107:                                              ; preds = %86
  %108 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %109 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp sgt i32 %110, 1600
  br i1 %111, label %112, label %119

112:                                              ; preds = %107, %86
  %113 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %114 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %115)
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %3, align 4
  br label %275

119:                                              ; preds = %107
  %120 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %121 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = icmp slt i32 %122, 200
  br i1 %123, label %129, label %124

124:                                              ; preds = %119
  %125 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %126 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = icmp sgt i32 %127, 1200
  br i1 %128, label %129, label %136

129:                                              ; preds = %124, %119
  %130 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %131 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %132)
  %134 = load i32, i32* @EINVAL, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %3, align 4
  br label %275

136:                                              ; preds = %124
  %137 = load i32, i32* %6, align 4
  %138 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %139 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = mul nsw i32 %137, %140
  %142 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %143 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = icmp sgt i32 %141, %145
  br i1 %146, label %147, label %160

147:                                              ; preds = %136
  %148 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %149 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %152 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %155 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %150, i32 %153, i32 %156)
  %158 = load i32, i32* @EINVAL, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %3, align 4
  br label %275

160:                                              ; preds = %136
  %161 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %162 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %161, i32 0, i32 13
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @PICOS2KHZ(i32 %163)
  %165 = load i32, i32* @PM2_MAX_PIXCLOCK, align 4
  %166 = icmp sgt i32 %164, %165
  br i1 %166, label %167, label %175

167:                                              ; preds = %160
  %168 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %169 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %168, i32 0, i32 13
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @PICOS2KHZ(i32 %170)
  %172 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i32 %171)
  %173 = load i32, i32* @EINVAL, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %3, align 4
  br label %275

175:                                              ; preds = %160
  %176 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %177 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %176, i32 0, i32 12
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 0
  store i32 0, i32* %178, align 8
  %179 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %180 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %179, i32 0, i32 12
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 1
  store i32 0, i32* %181, align 4
  %182 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %183 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  switch i32 %184, label %258 [
    i32 8, label %185
    i32 16, label %195
    i32 32, label %214
    i32 24, label %239
  ]

185:                                              ; preds = %175
  %186 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %187 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %186, i32 0, i32 11
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 0
  store i32 8, i32* %188, align 8
  %189 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %190 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %189, i32 0, i32 10
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 0
  store i32 8, i32* %191, align 8
  %192 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %193 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %192, i32 0, i32 9
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 0
  store i32 8, i32* %194, align 8
  br label %258

195:                                              ; preds = %175
  %196 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %197 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %196, i32 0, i32 11
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 1
  store i32 11, i32* %198, align 4
  %199 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %200 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %199, i32 0, i32 11
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 0
  store i32 5, i32* %201, align 8
  %202 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %203 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %202, i32 0, i32 10
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 1
  store i32 5, i32* %204, align 4
  %205 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %206 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %205, i32 0, i32 10
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 0
  store i32 6, i32* %207, align 8
  %208 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %209 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %208, i32 0, i32 9
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 1
  store i32 0, i32* %210, align 4
  %211 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %212 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %211, i32 0, i32 9
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 0
  store i32 5, i32* %213, align 8
  br label %258

214:                                              ; preds = %175
  %215 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %216 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %215, i32 0, i32 12
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 0
  store i32 24, i32* %217, align 8
  %218 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %219 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %218, i32 0, i32 12
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 1
  store i32 8, i32* %220, align 4
  %221 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %222 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %221, i32 0, i32 11
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 1
  store i32 16, i32* %223, align 4
  %224 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %225 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %224, i32 0, i32 10
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %225, i32 0, i32 1
  store i32 8, i32* %226, align 4
  %227 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %228 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %227, i32 0, i32 9
  %229 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %228, i32 0, i32 1
  store i32 0, i32* %229, align 4
  %230 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %231 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %230, i32 0, i32 11
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 0
  store i32 8, i32* %232, align 8
  %233 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %234 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %233, i32 0, i32 10
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i32 0, i32 0
  store i32 8, i32* %235, align 8
  %236 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %237 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %236, i32 0, i32 9
  %238 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %237, i32 0, i32 0
  store i32 8, i32* %238, align 8
  br label %258

239:                                              ; preds = %175
  %240 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %241 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %240, i32 0, i32 11
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %241, i32 0, i32 1
  store i32 16, i32* %242, align 4
  %243 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %244 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %243, i32 0, i32 9
  %245 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %244, i32 0, i32 1
  store i32 0, i32* %245, align 4
  %246 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %247 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %246, i32 0, i32 10
  %248 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %247, i32 0, i32 1
  store i32 8, i32* %248, align 4
  %249 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %250 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %249, i32 0, i32 11
  %251 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %250, i32 0, i32 0
  store i32 8, i32* %251, align 8
  %252 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %253 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %252, i32 0, i32 10
  %254 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %253, i32 0, i32 0
  store i32 8, i32* %254, align 8
  %255 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %256 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %255, i32 0, i32 9
  %257 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %256, i32 0, i32 0
  store i32 8, i32* %257, align 8
  br label %258

258:                                              ; preds = %175, %239, %214, %195, %185
  %259 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %260 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %259, i32 0, i32 6
  store i32 -1, i32* %260, align 8
  %261 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %262 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %261, i32 0, i32 7
  store i32 -1, i32* %262, align 4
  %263 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %264 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %263, i32 0, i32 8
  store i64 0, i64* %264, align 8
  %265 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %266 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %269 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %268, i32 0, i32 3
  %270 = load i32, i32* %269, align 4
  %271 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %272 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0), i32 %267, i32 %270, i32 %273)
  store i32 0, i32* %3, align 4
  br label %275

275:                                              ; preds = %258, %167, %147, %129, %112, %82, %70, %53, %41, %26
  %276 = load i32, i32* %3, align 4
  ret i32 %276
}

declare dso_local i32 @DPRINTK(i8*, ...) #1

declare dso_local i32 @PICOS2KHZ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
