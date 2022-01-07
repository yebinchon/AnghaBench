; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_sm501fb.c_sm501fb_init_fb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_sm501fb.c_sm501fb_init_fb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32, %struct.TYPE_9__, %struct.TYPE_10__*, i32, %struct.TYPE_8__, %struct.sm501fb_par* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i64, i32, i64 }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_9__*, %struct.fb_info.0*)*, i32* }
%struct.fb_info.0 = type opaque
%struct.TYPE_8__ = type { i32, i32, i32, i64, i64, i32, i32 }
%struct.sm501fb_par = type { %struct.TYPE_10__, %struct.sm501fb_info* }
%struct.sm501fb_info = type { i32, i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, %struct.sm501_platdata_fbsub*, %struct.sm501_platdata_fbsub* }
%struct.sm501_platdata_fbsub = type { i32, i32, i64 }

@SM501_DC_CRT_CONTROL = common dso_local global i64 0, align 8
@SM501_DC_CRT_CONTROL_ENABLE = common dso_local global i64 0, align 8
@SM501_FB_CRT_PANEL = common dso_local global i64 0, align 8
@SM501_DC_CRT_CONTROL_SEL = common dso_local global i64 0, align 8
@SM501_DC_PANEL_CONTROL = common dso_local global i64 0, align 8
@SM501_DC_PANEL_CONTROL_EN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"fb %s %sabled at start\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"en\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"dis\00", align 1
@sm501fb_ops_crt = common dso_local global i32 0, align 4
@sm501fb_ops_pnl = common dso_local global i32 0, align 4
@SM501FB_FLAG_USE_HWCURSOR = common dso_local global i32 0, align 4
@FBINFO_FLAG_DEFAULT = common dso_local global i32 0, align 4
@FBINFO_HWACCEL_XPAN = common dso_local global i32 0, align 4
@FBINFO_HWACCEL_YPAN = common dso_local global i32 0, align 4
@FB_TYPE_PACKED_PIXELS = common dso_local global i32 0, align 4
@FB_ACCEL_NONE = common dso_local global i32 0, align 4
@FB_ACTIVATE_NOW = common dso_local global i32 0, align 4
@FB_VMODE_NONINTERLACED = common dso_local global i32 0, align 4
@SM501FB_FLAG_USE_INIT_MODE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"using supplied mode\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"failed to get initial mode\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NR_PALETTE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"failed to allocate cmap memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [38 x i8] c"check_var() failed on initial setup?\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, i32, i8*)* @sm501fb_init_fb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sm501fb_init_fb(%struct.fb_info* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sm501_platdata_fbsub*, align 8
  %9 = alloca %struct.sm501fb_par*, align 8
  %10 = alloca %struct.sm501fb_info*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %14 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %15 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %14, i32 0, i32 5
  %16 = load %struct.sm501fb_par*, %struct.sm501fb_par** %15, align 8
  store %struct.sm501fb_par* %16, %struct.sm501fb_par** %9, align 8
  %17 = load %struct.sm501fb_par*, %struct.sm501fb_par** %9, align 8
  %18 = getelementptr inbounds %struct.sm501fb_par, %struct.sm501fb_par* %17, i32 0, i32 1
  %19 = load %struct.sm501fb_info*, %struct.sm501fb_info** %18, align 8
  store %struct.sm501fb_info* %19, %struct.sm501fb_info** %10, align 8
  %20 = load i32, i32* %6, align 4
  switch i32 %20, label %76 [
    i32 129, label %21
    i32 128, label %58
  ]

21:                                               ; preds = %3
  %22 = load %struct.sm501fb_info*, %struct.sm501fb_info** %10, align 8
  %23 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %22, i32 0, i32 2
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 2
  %26 = load %struct.sm501_platdata_fbsub*, %struct.sm501_platdata_fbsub** %25, align 8
  store %struct.sm501_platdata_fbsub* %26, %struct.sm501_platdata_fbsub** %8, align 8
  %27 = load %struct.sm501fb_info*, %struct.sm501fb_info** %10, align 8
  %28 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SM501_DC_CRT_CONTROL, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i64 @readl(i64 %31)
  store i64 %32, i64* %11, align 8
  %33 = load i64, i64* %11, align 8
  %34 = load i64, i64* @SM501_DC_CRT_CONTROL_ENABLE, align 8
  %35 = and i64 %33, %34
  %36 = icmp ne i64 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 1, i32 0
  store i32 %38, i32* %12, align 4
  %39 = load %struct.sm501fb_info*, %struct.sm501fb_info** %10, align 8
  %40 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %39, i32 0, i32 2
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @SM501_FB_CRT_PANEL, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %57

46:                                               ; preds = %21
  %47 = load i64, i64* @SM501_DC_CRT_CONTROL_SEL, align 8
  %48 = load i64, i64* %11, align 8
  %49 = or i64 %48, %47
  store i64 %49, i64* %11, align 8
  %50 = load i64, i64* %11, align 8
  %51 = load %struct.sm501fb_info*, %struct.sm501fb_info** %10, align 8
  %52 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @SM501_DC_CRT_CONTROL, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @writel(i64 %50, i64 %55)
  br label %57

57:                                               ; preds = %46, %21
  br label %78

58:                                               ; preds = %3
  %59 = load %struct.sm501fb_info*, %struct.sm501fb_info** %10, align 8
  %60 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %59, i32 0, i32 2
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load %struct.sm501_platdata_fbsub*, %struct.sm501_platdata_fbsub** %62, align 8
  store %struct.sm501_platdata_fbsub* %63, %struct.sm501_platdata_fbsub** %8, align 8
  %64 = load %struct.sm501fb_info*, %struct.sm501fb_info** %10, align 8
  %65 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @SM501_DC_PANEL_CONTROL, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i64 @readl(i64 %68)
  store i64 %69, i64* %11, align 8
  %70 = load i64, i64* %11, align 8
  %71 = load i64, i64* @SM501_DC_PANEL_CONTROL_EN, align 8
  %72 = and i64 %70, %71
  %73 = icmp ne i64 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 1, i32 0
  store i32 %75, i32* %12, align 4
  br label %78

76:                                               ; preds = %3
  store %struct.sm501_platdata_fbsub* null, %struct.sm501_platdata_fbsub** %8, align 8
  store i64 0, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %77 = call i32 (...) @BUG()
  br label %78

78:                                               ; preds = %76, %58, %57
  %79 = load %struct.sm501fb_info*, %struct.sm501fb_info** %10, align 8
  %80 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i8*, i8** %7, align 8
  %83 = load i32, i32* %12, align 4
  %84 = icmp ne i32 %83, 0
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %87 = call i32 (i32, i8*, ...) @dev_info(i32 %81, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %82, i8* %86)
  %88 = load i32, i32* %6, align 4
  %89 = icmp eq i32 %88, 129
  br i1 %89, label %90, label %110

90:                                               ; preds = %78
  %91 = load %struct.sm501fb_info*, %struct.sm501fb_info** %10, align 8
  %92 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %91, i32 0, i32 2
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @SM501_FB_CRT_PANEL, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %110

98:                                               ; preds = %90
  %99 = load i64, i64* @SM501_DC_CRT_CONTROL_SEL, align 8
  %100 = xor i64 %99, -1
  %101 = load i64, i64* %11, align 8
  %102 = and i64 %101, %100
  store i64 %102, i64* %11, align 8
  %103 = load i64, i64* %11, align 8
  %104 = load %struct.sm501fb_info*, %struct.sm501fb_info** %10, align 8
  %105 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @SM501_DC_CRT_CONTROL, align 8
  %108 = add nsw i64 %106, %107
  %109 = call i32 @writel(i64 %103, i64 %108)
  store i32 0, i32* %12, align 4
  br label %110

110:                                              ; preds = %98, %90, %78
  %111 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %112 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %111, i32 0, i32 4
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 6
  %114 = load i32, i32* %113, align 4
  %115 = load i8*, i8** %7, align 8
  %116 = call i32 @strlcpy(i32 %114, i8* %115, i32 4)
  %117 = load %struct.sm501fb_par*, %struct.sm501fb_par** %9, align 8
  %118 = getelementptr inbounds %struct.sm501fb_par, %struct.sm501fb_par* %117, i32 0, i32 0
  %119 = load i32, i32* %6, align 4
  %120 = icmp eq i32 %119, 129
  %121 = zext i1 %120 to i64
  %122 = select i1 %120, i32* @sm501fb_ops_crt, i32* @sm501fb_ops_pnl
  %123 = call i32 @memcpy(%struct.TYPE_10__* %118, i32* %122, i32 4)
  %124 = load %struct.sm501_platdata_fbsub*, %struct.sm501_platdata_fbsub** %8, align 8
  %125 = getelementptr inbounds %struct.sm501_platdata_fbsub, %struct.sm501_platdata_fbsub* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @SM501FB_FLAG_USE_HWCURSOR, align 4
  %128 = and i32 %126, %127
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %110
  %131 = load %struct.sm501fb_par*, %struct.sm501fb_par** %9, align 8
  %132 = getelementptr inbounds %struct.sm501fb_par, %struct.sm501fb_par* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 1
  store i32* null, i32** %133, align 8
  br label %134

134:                                              ; preds = %130, %110
  %135 = load %struct.sm501fb_par*, %struct.sm501fb_par** %9, align 8
  %136 = getelementptr inbounds %struct.sm501fb_par, %struct.sm501fb_par* %135, i32 0, i32 0
  %137 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %138 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %137, i32 0, i32 2
  store %struct.TYPE_10__* %136, %struct.TYPE_10__** %138, align 8
  %139 = load i32, i32* @FBINFO_FLAG_DEFAULT, align 4
  %140 = load i32, i32* @FBINFO_HWACCEL_XPAN, align 4
  %141 = or i32 %139, %140
  %142 = load i32, i32* @FBINFO_HWACCEL_YPAN, align 4
  %143 = or i32 %141, %142
  %144 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %145 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 8
  %146 = load i32, i32* @FB_TYPE_PACKED_PIXELS, align 4
  %147 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %148 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %147, i32 0, i32 4
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 5
  store i32 %146, i32* %149, align 8
  %150 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %151 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %150, i32 0, i32 4
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 4
  store i64 0, i64* %152, align 8
  %153 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %154 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %153, i32 0, i32 4
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  store i32 1, i32* %155, align 8
  %156 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %157 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %156, i32 0, i32 4
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 1
  store i32 1, i32* %158, align 4
  %159 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %160 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %159, i32 0, i32 4
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 3
  store i64 0, i64* %161, align 8
  %162 = load i32, i32* @FB_ACCEL_NONE, align 4
  %163 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %164 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %163, i32 0, i32 4
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 2
  store i32 %162, i32* %165, align 8
  %166 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %167 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 8
  store i64 0, i64* %168, align 8
  %169 = load i32, i32* @FB_ACTIVATE_NOW, align 4
  %170 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %171 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 7
  store i32 %169, i32* %172, align 8
  %173 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %174 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 6
  store i64 0, i64* %175, align 8
  %176 = load i32, i32* @FB_VMODE_NONINTERLACED, align 4
  %177 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %178 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 5
  store i32 %176, i32* %179, align 4
  %180 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %181 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 0
  store i32 16, i32* %182, align 8
  %183 = load i32, i32* %12, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %194

185:                                              ; preds = %134
  %186 = load %struct.sm501_platdata_fbsub*, %struct.sm501_platdata_fbsub** %8, align 8
  %187 = getelementptr inbounds %struct.sm501_platdata_fbsub, %struct.sm501_platdata_fbsub* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @SM501FB_FLAG_USE_INIT_MODE, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %185
  br i1 false, label %193, label %194

193:                                              ; preds = %192
  br label %257

194:                                              ; preds = %192, %185, %134
  %195 = load %struct.sm501_platdata_fbsub*, %struct.sm501_platdata_fbsub** %8, align 8
  %196 = getelementptr inbounds %struct.sm501_platdata_fbsub, %struct.sm501_platdata_fbsub* %195, i32 0, i32 2
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %238

199:                                              ; preds = %194
  %200 = load %struct.sm501fb_info*, %struct.sm501fb_info** %10, align 8
  %201 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = call i32 (i32, i8*, ...) @dev_info(i32 %202, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %204 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %205 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %204, i32 0, i32 1
  %206 = load %struct.sm501_platdata_fbsub*, %struct.sm501_platdata_fbsub** %8, align 8
  %207 = getelementptr inbounds %struct.sm501_platdata_fbsub, %struct.sm501_platdata_fbsub* %206, i32 0, i32 2
  %208 = load i64, i64* %207, align 8
  %209 = call i32 @fb_videomode_to_var(%struct.TYPE_9__* %205, i64 %208)
  %210 = load %struct.sm501_platdata_fbsub*, %struct.sm501_platdata_fbsub** %8, align 8
  %211 = getelementptr inbounds %struct.sm501_platdata_fbsub, %struct.sm501_platdata_fbsub* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %218

214:                                              ; preds = %199
  %215 = load %struct.sm501_platdata_fbsub*, %struct.sm501_platdata_fbsub** %8, align 8
  %216 = getelementptr inbounds %struct.sm501_platdata_fbsub, %struct.sm501_platdata_fbsub* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  br label %219

218:                                              ; preds = %199
  br label %219

219:                                              ; preds = %218, %214
  %220 = phi i32 [ %217, %214 ], [ 8, %218 ]
  %221 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %222 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 0
  store i32 %220, i32* %223, align 8
  %224 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %225 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %229 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %229, i32 0, i32 4
  store i32 %227, i32* %230, align 8
  %231 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %232 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %236 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i32 0, i32 2
  store i32 %234, i32* %237, align 8
  br label %256

238:                                              ; preds = %194
  %239 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %240 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %239, i32 0, i32 1
  %241 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %242 = call i32 @fb_find_mode(%struct.TYPE_9__* %240, %struct.fb_info* %241, i32* null, i32* null, i32 0, i32* null, i32 8)
  store i32 %242, i32* %13, align 4
  %243 = load i32, i32* %13, align 4
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %248, label %245

245:                                              ; preds = %238
  %246 = load i32, i32* %13, align 4
  %247 = icmp eq i32 %246, 4
  br i1 %247, label %248, label %255

248:                                              ; preds = %245, %238
  %249 = load %struct.sm501fb_info*, %struct.sm501fb_info** %10, align 8
  %250 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = call i32 @dev_err(i32 %251, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %253 = load i32, i32* @EINVAL, align 4
  %254 = sub nsw i32 0, %253
  store i32 %254, i32* %4, align 4
  br label %293

255:                                              ; preds = %245
  br label %256

256:                                              ; preds = %255, %219
  br label %257

257:                                              ; preds = %256, %193
  %258 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %259 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %258, i32 0, i32 3
  %260 = load i32, i32* @NR_PALETTE, align 4
  %261 = call i64 @fb_alloc_cmap(i32* %259, i32 %260, i32 0)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %270

263:                                              ; preds = %257
  %264 = load %struct.sm501fb_info*, %struct.sm501fb_info** %10, align 8
  %265 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = call i32 @dev_err(i32 %266, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %268 = load i32, i32* @ENOMEM, align 4
  %269 = sub nsw i32 0, %268
  store i32 %269, i32* %4, align 4
  br label %293

270:                                              ; preds = %257
  %271 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %272 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %271, i32 0, i32 3
  %273 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %274 = call i32 @fb_set_cmap(i32* %272, %struct.fb_info* %273)
  %275 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %276 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %275, i32 0, i32 2
  %277 = load %struct.TYPE_10__*, %struct.TYPE_10__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %277, i32 0, i32 0
  %279 = load i32 (%struct.TYPE_9__*, %struct.fb_info.0*)*, i32 (%struct.TYPE_9__*, %struct.fb_info.0*)** %278, align 8
  %280 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %281 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %280, i32 0, i32 1
  %282 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %283 = bitcast %struct.fb_info* %282 to %struct.fb_info.0*
  %284 = call i32 %279(%struct.TYPE_9__* %281, %struct.fb_info.0* %283)
  store i32 %284, i32* %13, align 4
  %285 = load i32, i32* %13, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %292

287:                                              ; preds = %270
  %288 = load %struct.sm501fb_info*, %struct.sm501fb_info** %10, align 8
  %289 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = call i32 @dev_err(i32 %290, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  br label %292

292:                                              ; preds = %287, %270
  store i32 0, i32* %4, align 4
  br label %293

293:                                              ; preds = %292, %263, %248
  %294 = load i32, i32* %4, align 4
  ret i32 %294
}

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @dev_info(i32, i8*, ...) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32 @fb_videomode_to_var(%struct.TYPE_9__*, i64) #1

declare dso_local i32 @fb_find_mode(%struct.TYPE_9__*, %struct.fb_info*, i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i64 @fb_alloc_cmap(i32*, i32, i32) #1

declare dso_local i32 @fb_set_cmap(i32*, %struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
