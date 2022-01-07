; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_sh7760fb.c_sh7760fb_set_par.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_sh7760fb.c_sh7760fb_set_par.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32, i32, %struct.TYPE_3__, %struct.sh7760fb_par* }
%struct.TYPE_3__ = type { i64 }
%struct.sh7760fb_par = type { %struct.TYPE_4__*, i64, i64, i64 }
%struct.TYPE_4__ = type { i32, i16, i64, i64, i64, i64, i64, %struct.fb_videomode* }
%struct.fb_videomode = type { i32, i16, i16, i16, i16, i16, i16, i16, i32 }

@.str = private unnamed_addr constant [39 x i8] c"rotation disabled due to display size\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"%dx%d %dbpp %s (orientation %s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"grayscale\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"rotated\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@FB_SYNC_HOR_HIGH_ACT = common dso_local global i32 0, align 4
@LDMTR_CL1POL = common dso_local global i16 0, align 2
@FB_SYNC_VERT_HIGH_ACT = common dso_local global i32 0, align 4
@LDMTR_FLMPOL = common dso_local global i16 0, align 2
@FB_BLANK_POWERDOWN = common dso_local global i32 0, align 4
@LDICKR = common dso_local global i64 0, align 8
@LDMTR = common dso_local global i64 0, align 8
@LDDFR = common dso_local global i64 0, align 8
@LDSMR = common dso_local global i64 0, align 8
@LDPMMR = common dso_local global i64 0, align 8
@LDPSPR = common dso_local global i64 0, align 8
@LDHCNR = common dso_local global i64 0, align 8
@LDVDLNR = common dso_local global i64 0, align 8
@LDVTLNR = common dso_local global i64 0, align 8
@LDVSYNR = common dso_local global i64 0, align 8
@LDHSYNR = common dso_local global i64 0, align 8
@LDACLNR = common dso_local global i64 0, align 8
@LDLAOR = common dso_local global i64 0, align 8
@LDSARU = common dso_local global i64 0, align 8
@LDMTR_DSTN_MONO_8 = common dso_local global i16 0, align 2
@LDMTR_DSTN_COLOR_16 = common dso_local global i16 0, align 2
@.str.6 = private unnamed_addr constant [29 x i8] c" ***** DSTN untested! *****\0A\00", align 1
@LDSARL = common dso_local global i64 0, align 8
@FB_BLANK_UNBLANK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"hdcn  : %6d htcn  : %6d\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"hsynw : %6d hsynp : %6d\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"vdln  : %6d vtln  : %6d\0A\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"vsynw : %6d vsynp : %6d\0A\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"clksrc: %6d clkdiv: %6d\0A\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"ldpmmr: 0x%04x ldpspr: 0x%04x\0A\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"ldmtr : 0x%04x lddfr : 0x%04x\0A\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"ldlaor: %ld\0A\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"ldsaru: 0x%08lx ldsarl: 0x%08lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @sh7760fb_set_par to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh7760fb_set_par(%struct.fb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.sh7760fb_par*, align 8
  %5 = alloca %struct.fb_videomode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca i16, align 2
  %16 = alloca i16, align 2
  %17 = alloca i16, align 2
  %18 = alloca i16, align 2
  %19 = alloca i16, align 2
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  %24 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %25 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %24, i32 0, i32 3
  %26 = load %struct.sh7760fb_par*, %struct.sh7760fb_par** %25, align 8
  store %struct.sh7760fb_par* %26, %struct.sh7760fb_par** %4, align 8
  %27 = load %struct.sh7760fb_par*, %struct.sh7760fb_par** %4, align 8
  %28 = getelementptr inbounds %struct.sh7760fb_par, %struct.sh7760fb_par* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 7
  %31 = load %struct.fb_videomode*, %struct.fb_videomode** %30, align 8
  store %struct.fb_videomode* %31, %struct.fb_videomode** %5, align 8
  %32 = load %struct.sh7760fb_par*, %struct.sh7760fb_par** %4, align 8
  %33 = getelementptr inbounds %struct.sh7760fb_par, %struct.sh7760fb_par* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 6
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.sh7760fb_par*, %struct.sh7760fb_par** %4, align 8
  %38 = getelementptr inbounds %struct.sh7760fb_par, %struct.sh7760fb_par* %37, i32 0, i32 2
  store i64 %36, i64* %38, align 8
  %39 = load %struct.sh7760fb_par*, %struct.sh7760fb_par** %4, align 8
  %40 = getelementptr inbounds %struct.sh7760fb_par, %struct.sh7760fb_par* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %1
  %44 = load %struct.fb_videomode*, %struct.fb_videomode** %5, align 8
  %45 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp sgt i32 %46, 320
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %50 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 (i32, i8*, ...) @dev_dbg(i32 %51, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %53 = load %struct.sh7760fb_par*, %struct.sh7760fb_par** %4, align 8
  %54 = getelementptr inbounds %struct.sh7760fb_par, %struct.sh7760fb_par* %53, i32 0, i32 2
  store i64 0, i64* %54, align 8
  br label %55

55:                                               ; preds = %48, %43, %1
  %56 = load %struct.fb_videomode*, %struct.fb_videomode** %5, align 8
  %57 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %56, i32 0, i32 1
  %58 = load i16, i16* %57, align 4
  %59 = zext i16 %58 to i32
  %60 = load %struct.fb_videomode*, %struct.fb_videomode** %5, align 8
  %61 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %59, %62
  %64 = trunc i32 %63 to i16
  store i16 %64, i16* %10, align 2
  %65 = load %struct.fb_videomode*, %struct.fb_videomode** %5, align 8
  %66 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %65, i32 0, i32 2
  %67 = load i16, i16* %66, align 2
  store i16 %67, i16* %11, align 2
  %68 = load %struct.fb_videomode*, %struct.fb_videomode** %5, align 8
  %69 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %68, i32 0, i32 3
  %70 = load i16, i16* %69, align 4
  %71 = zext i16 %70 to i32
  %72 = load i16, i16* %10, align 2
  %73 = zext i16 %72 to i32
  %74 = add nsw i32 %71, %73
  %75 = load i16, i16* %11, align 2
  %76 = zext i16 %75 to i32
  %77 = add nsw i32 %74, %76
  %78 = trunc i32 %77 to i16
  store i16 %78, i16* %12, align 2
  %79 = load %struct.fb_videomode*, %struct.fb_videomode** %5, align 8
  %80 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = trunc i32 %81 to i16
  store i16 %82, i16* %13, align 2
  %83 = load %struct.fb_videomode*, %struct.fb_videomode** %5, align 8
  %84 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %83, i32 0, i32 4
  %85 = load i16, i16* %84, align 2
  %86 = zext i16 %85 to i32
  %87 = load %struct.fb_videomode*, %struct.fb_videomode** %5, align 8
  %88 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %87, i32 0, i32 5
  %89 = load i16, i16* %88, align 4
  %90 = zext i16 %89 to i32
  %91 = add nsw i32 %86, %90
  %92 = trunc i32 %91 to i16
  store i16 %92, i16* %14, align 2
  %93 = load %struct.fb_videomode*, %struct.fb_videomode** %5, align 8
  %94 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %93, i32 0, i32 6
  %95 = load i16, i16* %94, align 2
  store i16 %95, i16* %15, align 2
  %96 = load %struct.fb_videomode*, %struct.fb_videomode** %5, align 8
  %97 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %96, i32 0, i32 7
  %98 = load i16, i16* %97, align 4
  %99 = zext i16 %98 to i32
  %100 = load i16, i16* %14, align 2
  %101 = zext i16 %100 to i32
  %102 = add nsw i32 %99, %101
  %103 = load i16, i16* %15, align 2
  %104 = zext i16 %103 to i32
  %105 = add nsw i32 %102, %104
  %106 = trunc i32 %105 to i16
  store i16 %106, i16* %16, align 2
  %107 = load %struct.fb_videomode*, %struct.fb_videomode** %5, align 8
  %108 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %107, i32 0, i32 5
  %109 = load i16, i16* %108, align 4
  store i16 %109, i16* %17, align 2
  %110 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %111 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.sh7760fb_par*, %struct.sh7760fb_par** %4, align 8
  %114 = getelementptr inbounds %struct.sh7760fb_par, %struct.sh7760fb_par* %113, i32 0, i32 0
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @sh7760fb_get_color_info(i32 %112, i32 %117, i32* %21, i32* %22)
  store i32 %118, i32* %20, align 4
  %119 = load i32, i32* %20, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %55
  %122 = load i32, i32* %20, align 4
  store i32 %122, i32* %2, align 4
  br label %574

123:                                              ; preds = %55
  %124 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %125 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i16, i16* %13, align 2
  %128 = zext i16 %127 to i32
  %129 = load i16, i16* %17, align 2
  %130 = zext i16 %129 to i32
  %131 = load i32, i32* %21, align 4
  %132 = load i32, i32* %22, align 4
  %133 = icmp ne i32 %132, 0
  %134 = zext i1 %133 to i64
  %135 = select i1 %133, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %136 = load %struct.sh7760fb_par*, %struct.sh7760fb_par** %4, align 8
  %137 = getelementptr inbounds %struct.sh7760fb_par, %struct.sh7760fb_par* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  %140 = zext i1 %139 to i64
  %141 = select i1 %139, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)
  %142 = call i32 (i32, i8*, ...) @dev_dbg(i32 %126, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %128, i32 %130, i32 %131, i8* %135, i8* %141)
  %143 = load %struct.sh7760fb_par*, %struct.sh7760fb_par** %4, align 8
  %144 = getelementptr inbounds %struct.sh7760fb_par, %struct.sh7760fb_par* %143, i32 0, i32 0
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = and i32 %147, -257
  %149 = trunc i32 %148 to i16
  store i16 %149, i16* %18, align 2
  %150 = load %struct.sh7760fb_par*, %struct.sh7760fb_par** %4, align 8
  %151 = getelementptr inbounds %struct.sh7760fb_par, %struct.sh7760fb_par* %150, i32 0, i32 0
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 1
  %154 = load i16, i16* %153, align 4
  store i16 %154, i16* %19, align 2
  %155 = load %struct.fb_videomode*, %struct.fb_videomode** %5, align 8
  %156 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %155, i32 0, i32 8
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @FB_SYNC_HOR_HIGH_ACT, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %168, label %161

161:                                              ; preds = %123
  %162 = load i16, i16* @LDMTR_CL1POL, align 2
  %163 = zext i16 %162 to i32
  %164 = load i16, i16* %19, align 2
  %165 = zext i16 %164 to i32
  %166 = or i32 %165, %163
  %167 = trunc i32 %166 to i16
  store i16 %167, i16* %19, align 2
  br label %168

168:                                              ; preds = %161, %123
  %169 = load %struct.fb_videomode*, %struct.fb_videomode** %5, align 8
  %170 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %169, i32 0, i32 8
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @FB_SYNC_VERT_HIGH_ACT, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %182, label %175

175:                                              ; preds = %168
  %176 = load i16, i16* @LDMTR_FLMPOL, align 2
  %177 = zext i16 %176 to i32
  %178 = load i16, i16* %19, align 2
  %179 = zext i16 %178 to i32
  %180 = or i32 %179, %177
  %181 = trunc i32 %180 to i16
  store i16 %181, i16* %19, align 2
  br label %182

182:                                              ; preds = %175, %168
  %183 = load i32, i32* @FB_BLANK_POWERDOWN, align 4
  %184 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %185 = call i32 @sh7760fb_blank(i32 %183, %struct.fb_info* %184)
  %186 = load %struct.sh7760fb_par*, %struct.sh7760fb_par** %4, align 8
  %187 = getelementptr inbounds %struct.sh7760fb_par, %struct.sh7760fb_par* %186, i32 0, i32 0
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 2
  %190 = load i64, i64* %189, align 8
  %191 = load %struct.sh7760fb_par*, %struct.sh7760fb_par** %4, align 8
  %192 = getelementptr inbounds %struct.sh7760fb_par, %struct.sh7760fb_par* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @LDICKR, align 8
  %195 = add nsw i64 %193, %194
  %196 = call i32 @iowrite16(i64 %190, i64 %195)
  %197 = load i16, i16* %19, align 2
  %198 = zext i16 %197 to i64
  %199 = load %struct.sh7760fb_par*, %struct.sh7760fb_par** %4, align 8
  %200 = getelementptr inbounds %struct.sh7760fb_par, %struct.sh7760fb_par* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @LDMTR, align 8
  %203 = add nsw i64 %201, %202
  %204 = call i32 @iowrite16(i64 %198, i64 %203)
  %205 = load i16, i16* %18, align 2
  %206 = zext i16 %205 to i64
  %207 = load %struct.sh7760fb_par*, %struct.sh7760fb_par** %4, align 8
  %208 = getelementptr inbounds %struct.sh7760fb_par, %struct.sh7760fb_par* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* @LDDFR, align 8
  %211 = add nsw i64 %209, %210
  %212 = call i32 @iowrite16(i64 %206, i64 %211)
  %213 = load %struct.sh7760fb_par*, %struct.sh7760fb_par** %4, align 8
  %214 = getelementptr inbounds %struct.sh7760fb_par, %struct.sh7760fb_par* %213, i32 0, i32 2
  %215 = load i64, i64* %214, align 8
  %216 = icmp ne i64 %215, 0
  %217 = zext i1 %216 to i64
  %218 = select i1 %216, i32 8192, i32 0
  %219 = sext i32 %218 to i64
  %220 = load %struct.sh7760fb_par*, %struct.sh7760fb_par** %4, align 8
  %221 = getelementptr inbounds %struct.sh7760fb_par, %struct.sh7760fb_par* %220, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @LDSMR, align 8
  %224 = add nsw i64 %222, %223
  %225 = call i32 @iowrite16(i64 %219, i64 %224)
  %226 = load %struct.sh7760fb_par*, %struct.sh7760fb_par** %4, align 8
  %227 = getelementptr inbounds %struct.sh7760fb_par, %struct.sh7760fb_par* %226, i32 0, i32 0
  %228 = load %struct.TYPE_4__*, %struct.TYPE_4__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i32 0, i32 3
  %230 = load i64, i64* %229, align 8
  %231 = load %struct.sh7760fb_par*, %struct.sh7760fb_par** %4, align 8
  %232 = getelementptr inbounds %struct.sh7760fb_par, %struct.sh7760fb_par* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = load i64, i64* @LDPMMR, align 8
  %235 = add nsw i64 %233, %234
  %236 = call i32 @iowrite16(i64 %230, i64 %235)
  %237 = load %struct.sh7760fb_par*, %struct.sh7760fb_par** %4, align 8
  %238 = getelementptr inbounds %struct.sh7760fb_par, %struct.sh7760fb_par* %237, i32 0, i32 0
  %239 = load %struct.TYPE_4__*, %struct.TYPE_4__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %239, i32 0, i32 4
  %241 = load i64, i64* %240, align 8
  %242 = load %struct.sh7760fb_par*, %struct.sh7760fb_par** %4, align 8
  %243 = getelementptr inbounds %struct.sh7760fb_par, %struct.sh7760fb_par* %242, i32 0, i32 1
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* @LDPSPR, align 8
  %246 = add nsw i64 %244, %245
  %247 = call i32 @iowrite16(i64 %241, i64 %246)
  %248 = load i16, i16* %12, align 2
  %249 = zext i16 %248 to i32
  %250 = ashr i32 %249, 3
  %251 = sub nsw i32 %250, 1
  %252 = load i16, i16* %13, align 2
  %253 = zext i16 %252 to i32
  %254 = ashr i32 %253, 3
  %255 = sub nsw i32 %254, 1
  %256 = shl i32 %255, 8
  %257 = or i32 %251, %256
  %258 = sext i32 %257 to i64
  %259 = load %struct.sh7760fb_par*, %struct.sh7760fb_par** %4, align 8
  %260 = getelementptr inbounds %struct.sh7760fb_par, %struct.sh7760fb_par* %259, i32 0, i32 1
  %261 = load i64, i64* %260, align 8
  %262 = load i64, i64* @LDHCNR, align 8
  %263 = add nsw i64 %261, %262
  %264 = call i32 @iowrite16(i64 %258, i64 %263)
  %265 = load i16, i16* %17, align 2
  %266 = zext i16 %265 to i32
  %267 = sub nsw i32 %266, 1
  %268 = sext i32 %267 to i64
  %269 = load %struct.sh7760fb_par*, %struct.sh7760fb_par** %4, align 8
  %270 = getelementptr inbounds %struct.sh7760fb_par, %struct.sh7760fb_par* %269, i32 0, i32 1
  %271 = load i64, i64* %270, align 8
  %272 = load i64, i64* @LDVDLNR, align 8
  %273 = add nsw i64 %271, %272
  %274 = call i32 @iowrite16(i64 %268, i64 %273)
  %275 = load i16, i16* %16, align 2
  %276 = zext i16 %275 to i32
  %277 = sub nsw i32 %276, 1
  %278 = sext i32 %277 to i64
  %279 = load %struct.sh7760fb_par*, %struct.sh7760fb_par** %4, align 8
  %280 = getelementptr inbounds %struct.sh7760fb_par, %struct.sh7760fb_par* %279, i32 0, i32 1
  %281 = load i64, i64* %280, align 8
  %282 = load i64, i64* @LDVTLNR, align 8
  %283 = add nsw i64 %281, %282
  %284 = call i32 @iowrite16(i64 %278, i64 %283)
  %285 = load i16, i16* %14, align 2
  %286 = zext i16 %285 to i32
  %287 = sub nsw i32 %286, 1
  %288 = load i16, i16* %15, align 2
  %289 = zext i16 %288 to i32
  %290 = sub nsw i32 %289, 1
  %291 = shl i32 %290, 12
  %292 = or i32 %287, %291
  %293 = sext i32 %292 to i64
  %294 = load %struct.sh7760fb_par*, %struct.sh7760fb_par** %4, align 8
  %295 = getelementptr inbounds %struct.sh7760fb_par, %struct.sh7760fb_par* %294, i32 0, i32 1
  %296 = load i64, i64* %295, align 8
  %297 = load i64, i64* @LDVSYNR, align 8
  %298 = add nsw i64 %296, %297
  %299 = call i32 @iowrite16(i64 %293, i64 %298)
  %300 = load i16, i16* %10, align 2
  %301 = zext i16 %300 to i32
  %302 = ashr i32 %301, 3
  %303 = sub nsw i32 %302, 1
  %304 = load i16, i16* %11, align 2
  %305 = zext i16 %304 to i32
  %306 = ashr i32 %305, 3
  %307 = sub nsw i32 %306, 1
  %308 = shl i32 %307, 12
  %309 = or i32 %303, %308
  %310 = sext i32 %309 to i64
  %311 = load %struct.sh7760fb_par*, %struct.sh7760fb_par** %4, align 8
  %312 = getelementptr inbounds %struct.sh7760fb_par, %struct.sh7760fb_par* %311, i32 0, i32 1
  %313 = load i64, i64* %312, align 8
  %314 = load i64, i64* @LDHSYNR, align 8
  %315 = add nsw i64 %313, %314
  %316 = call i32 @iowrite16(i64 %310, i64 %315)
  %317 = load %struct.sh7760fb_par*, %struct.sh7760fb_par** %4, align 8
  %318 = getelementptr inbounds %struct.sh7760fb_par, %struct.sh7760fb_par* %317, i32 0, i32 0
  %319 = load %struct.TYPE_4__*, %struct.TYPE_4__** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %319, i32 0, i32 5
  %321 = load i64, i64* %320, align 8
  %322 = load %struct.sh7760fb_par*, %struct.sh7760fb_par** %4, align 8
  %323 = getelementptr inbounds %struct.sh7760fb_par, %struct.sh7760fb_par* %322, i32 0, i32 1
  %324 = load i64, i64* %323, align 8
  %325 = load i64, i64* @LDACLNR, align 8
  %326 = add nsw i64 %324, %325
  %327 = call i32 @iowrite16(i64 %321, i64 %326)
  %328 = load %struct.sh7760fb_par*, %struct.sh7760fb_par** %4, align 8
  %329 = getelementptr inbounds %struct.sh7760fb_par, %struct.sh7760fb_par* %328, i32 0, i32 2
  %330 = load i64, i64* %329, align 8
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %332, label %335

332:                                              ; preds = %182
  %333 = load i16, i16* %16, align 2
  %334 = zext i16 %333 to i32
  br label %338

335:                                              ; preds = %182
  %336 = load i16, i16* %13, align 2
  %337 = zext i16 %336 to i32
  br label %338

338:                                              ; preds = %335, %332
  %339 = phi i32 [ %334, %332 ], [ %337, %335 ]
  %340 = sext i32 %339 to i64
  store i64 %340, i64* %9, align 8
  %341 = load i32, i32* %22, align 4
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %350, label %343

343:                                              ; preds = %338
  %344 = load i32, i32* %21, align 4
  %345 = add nsw i32 %344, 7
  %346 = ashr i32 %345, 3
  %347 = sext i32 %346 to i64
  %348 = load i64, i64* %9, align 8
  %349 = mul i64 %348, %347
  store i64 %349, i64* %9, align 8
  br label %371

350:                                              ; preds = %338
  %351 = load i32, i32* %21, align 4
  %352 = icmp eq i32 %351, 1
  br i1 %352, label %353, label %356

353:                                              ; preds = %350
  %354 = load i64, i64* %9, align 8
  %355 = lshr i64 %354, 3
  store i64 %355, i64* %9, align 8
  br label %370

356:                                              ; preds = %350
  %357 = load i32, i32* %21, align 4
  %358 = icmp eq i32 %357, 2
  br i1 %358, label %359, label %362

359:                                              ; preds = %356
  %360 = load i64, i64* %9, align 8
  %361 = lshr i64 %360, 2
  store i64 %361, i64* %9, align 8
  br label %369

362:                                              ; preds = %356
  %363 = load i32, i32* %21, align 4
  %364 = icmp eq i32 %363, 4
  br i1 %364, label %365, label %368

365:                                              ; preds = %362
  %366 = load i64, i64* %9, align 8
  %367 = lshr i64 %366, 1
  store i64 %367, i64* %9, align 8
  br label %368

368:                                              ; preds = %365, %362
  br label %369

369:                                              ; preds = %368, %359
  br label %370

370:                                              ; preds = %369, %353
  br label %371

371:                                              ; preds = %370, %343
  %372 = load %struct.sh7760fb_par*, %struct.sh7760fb_par** %4, align 8
  %373 = getelementptr inbounds %struct.sh7760fb_par, %struct.sh7760fb_par* %372, i32 0, i32 2
  %374 = load i64, i64* %373, align 8
  %375 = icmp ne i64 %374, 0
  br i1 %375, label %376, label %399

376:                                              ; preds = %371
  store i64 -2147483648, i64* %23, align 8
  br label %377

377:                                              ; preds = %386, %376
  %378 = load i64, i64* %23, align 8
  %379 = icmp ne i64 %378, 0
  br i1 %379, label %380, label %389

380:                                              ; preds = %377
  %381 = load i64, i64* %9, align 8
  %382 = load i64, i64* %23, align 8
  %383 = and i64 %381, %382
  %384 = icmp ne i64 %383, 0
  br i1 %384, label %385, label %386

385:                                              ; preds = %380
  br label %389

386:                                              ; preds = %380
  %387 = load i64, i64* %23, align 8
  %388 = lshr i64 %387, 1
  store i64 %388, i64* %23, align 8
  br label %377

389:                                              ; preds = %385, %377
  %390 = load i64, i64* %9, align 8
  %391 = load i64, i64* %23, align 8
  %392 = xor i64 %391, -1
  %393 = and i64 %390, %392
  %394 = icmp ne i64 %393, 0
  br i1 %394, label %395, label %398

395:                                              ; preds = %389
  %396 = load i64, i64* %23, align 8
  %397 = shl i64 %396, 1
  store i64 %397, i64* %9, align 8
  br label %398

398:                                              ; preds = %395, %389
  br label %399

399:                                              ; preds = %398, %371
  %400 = load i64, i64* %9, align 8
  %401 = load %struct.sh7760fb_par*, %struct.sh7760fb_par** %4, align 8
  %402 = getelementptr inbounds %struct.sh7760fb_par, %struct.sh7760fb_par* %401, i32 0, i32 1
  %403 = load i64, i64* %402, align 8
  %404 = load i64, i64* @LDLAOR, align 8
  %405 = add nsw i64 %403, %404
  %406 = call i32 @iowrite16(i64 %400, i64 %405)
  %407 = load %struct.sh7760fb_par*, %struct.sh7760fb_par** %4, align 8
  %408 = getelementptr inbounds %struct.sh7760fb_par, %struct.sh7760fb_par* %407, i32 0, i32 3
  %409 = load i64, i64* %408, align 8
  store i64 %409, i64* %6, align 8
  %410 = load %struct.sh7760fb_par*, %struct.sh7760fb_par** %4, align 8
  %411 = getelementptr inbounds %struct.sh7760fb_par, %struct.sh7760fb_par* %410, i32 0, i32 2
  %412 = load i64, i64* %411, align 8
  %413 = icmp ne i64 %412, 0
  br i1 %413, label %414, label %423

414:                                              ; preds = %399
  %415 = load i16, i16* %13, align 2
  %416 = zext i16 %415 to i32
  %417 = sub nsw i32 %416, 1
  %418 = sext i32 %417 to i64
  %419 = load i64, i64* %9, align 8
  %420 = mul i64 %418, %419
  %421 = load i64, i64* %6, align 8
  %422 = add i64 %421, %420
  store i64 %422, i64* %6, align 8
  br label %423

423:                                              ; preds = %414, %399
  %424 = load i64, i64* %6, align 8
  %425 = load %struct.sh7760fb_par*, %struct.sh7760fb_par** %4, align 8
  %426 = getelementptr inbounds %struct.sh7760fb_par, %struct.sh7760fb_par* %425, i32 0, i32 1
  %427 = load i64, i64* %426, align 8
  %428 = load i64, i64* @LDSARU, align 8
  %429 = add nsw i64 %427, %428
  %430 = call i32 @iowrite32(i64 %424, i64 %429)
  %431 = load i16, i16* %19, align 2
  %432 = zext i16 %431 to i32
  %433 = and i32 %432, 63
  %434 = load i16, i16* @LDMTR_DSTN_MONO_8, align 2
  %435 = zext i16 %434 to i32
  %436 = icmp sge i32 %433, %435
  br i1 %436, label %437, label %472

437:                                              ; preds = %423
  %438 = load i16, i16* %19, align 2
  %439 = zext i16 %438 to i32
  %440 = and i32 %439, 63
  %441 = load i16, i16* @LDMTR_DSTN_COLOR_16, align 2
  %442 = zext i16 %441 to i32
  %443 = icmp sle i32 %440, %442
  br i1 %443, label %444, label %472

444:                                              ; preds = %437
  %445 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %446 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %445, i32 0, i32 0
  %447 = load i32, i32* %446, align 8
  %448 = call i32 (i32, i8*, ...) @dev_dbg(i32 %447, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %449 = load i64, i64* %9, align 8
  store i64 %449, i64* %7, align 8
  %450 = load %struct.sh7760fb_par*, %struct.sh7760fb_par** %4, align 8
  %451 = getelementptr inbounds %struct.sh7760fb_par, %struct.sh7760fb_par* %450, i32 0, i32 2
  %452 = load i64, i64* %451, align 8
  %453 = icmp ne i64 %452, 0
  br i1 %453, label %454, label %461

454:                                              ; preds = %444
  %455 = load i16, i16* %13, align 2
  %456 = zext i16 %455 to i32
  %457 = ashr i32 %456, 1
  %458 = sext i32 %457 to i64
  %459 = load i64, i64* %7, align 8
  %460 = mul i64 %459, %458
  store i64 %460, i64* %7, align 8
  br label %468

461:                                              ; preds = %444
  %462 = load i16, i16* %17, align 2
  %463 = zext i16 %462 to i32
  %464 = ashr i32 %463, 1
  %465 = sext i32 %464 to i64
  %466 = load i64, i64* %7, align 8
  %467 = mul i64 %466, %465
  store i64 %467, i64* %7, align 8
  br label %468

468:                                              ; preds = %461, %454
  %469 = load i64, i64* %6, align 8
  %470 = load i64, i64* %7, align 8
  %471 = add i64 %469, %470
  store i64 %471, i64* %8, align 8
  br label %473

472:                                              ; preds = %437, %423
  store i64 0, i64* %8, align 8
  br label %473

473:                                              ; preds = %472, %468
  %474 = load i64, i64* %8, align 8
  %475 = load %struct.sh7760fb_par*, %struct.sh7760fb_par** %4, align 8
  %476 = getelementptr inbounds %struct.sh7760fb_par, %struct.sh7760fb_par* %475, i32 0, i32 1
  %477 = load i64, i64* %476, align 8
  %478 = load i64, i64* @LDSARL, align 8
  %479 = add nsw i64 %477, %478
  %480 = call i32 @iowrite32(i64 %474, i64 %479)
  %481 = load i64, i64* %9, align 8
  %482 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %483 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %482, i32 0, i32 2
  %484 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %483, i32 0, i32 0
  store i64 %481, i64* %484, align 8
  %485 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %486 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %485, i32 0, i32 1
  %487 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %488 = call i32 @sh7760fb_check_var(i32* %486, %struct.fb_info* %487)
  %489 = load i32, i32* @FB_BLANK_UNBLANK, align 4
  %490 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %491 = call i32 @sh7760fb_blank(i32 %489, %struct.fb_info* %490)
  %492 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %493 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %492, i32 0, i32 0
  %494 = load i32, i32* %493, align 8
  %495 = load i16, i16* %13, align 2
  %496 = zext i16 %495 to i32
  %497 = load i16, i16* %12, align 2
  %498 = zext i16 %497 to i32
  %499 = call i32 (i32, i8*, ...) @dev_dbg(i32 %494, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %496, i32 %498)
  %500 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %501 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %500, i32 0, i32 0
  %502 = load i32, i32* %501, align 8
  %503 = load i16, i16* %11, align 2
  %504 = zext i16 %503 to i32
  %505 = load i16, i16* %10, align 2
  %506 = zext i16 %505 to i32
  %507 = call i32 (i32, i8*, ...) @dev_dbg(i32 %502, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 %504, i32 %506)
  %508 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %509 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %508, i32 0, i32 0
  %510 = load i32, i32* %509, align 8
  %511 = load i16, i16* %17, align 2
  %512 = zext i16 %511 to i32
  %513 = load i16, i16* %16, align 2
  %514 = zext i16 %513 to i32
  %515 = call i32 (i32, i8*, ...) @dev_dbg(i32 %510, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 %512, i32 %514)
  %516 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %517 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %516, i32 0, i32 0
  %518 = load i32, i32* %517, align 8
  %519 = load i16, i16* %15, align 2
  %520 = zext i16 %519 to i32
  %521 = load i16, i16* %14, align 2
  %522 = zext i16 %521 to i32
  %523 = call i32 (i32, i8*, ...) @dev_dbg(i32 %518, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i32 %520, i32 %522)
  %524 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %525 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %524, i32 0, i32 0
  %526 = load i32, i32* %525, align 8
  %527 = load %struct.sh7760fb_par*, %struct.sh7760fb_par** %4, align 8
  %528 = getelementptr inbounds %struct.sh7760fb_par, %struct.sh7760fb_par* %527, i32 0, i32 0
  %529 = load %struct.TYPE_4__*, %struct.TYPE_4__** %528, align 8
  %530 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %529, i32 0, i32 2
  %531 = load i64, i64* %530, align 8
  %532 = lshr i64 %531, 12
  %533 = and i64 %532, 3
  %534 = load %struct.sh7760fb_par*, %struct.sh7760fb_par** %4, align 8
  %535 = getelementptr inbounds %struct.sh7760fb_par, %struct.sh7760fb_par* %534, i32 0, i32 0
  %536 = load %struct.TYPE_4__*, %struct.TYPE_4__** %535, align 8
  %537 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %536, i32 0, i32 2
  %538 = load i64, i64* %537, align 8
  %539 = and i64 %538, 31
  %540 = call i32 (i32, i8*, ...) @dev_dbg(i32 %526, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i64 %533, i64 %539)
  %541 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %542 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %541, i32 0, i32 0
  %543 = load i32, i32* %542, align 8
  %544 = load %struct.sh7760fb_par*, %struct.sh7760fb_par** %4, align 8
  %545 = getelementptr inbounds %struct.sh7760fb_par, %struct.sh7760fb_par* %544, i32 0, i32 0
  %546 = load %struct.TYPE_4__*, %struct.TYPE_4__** %545, align 8
  %547 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %546, i32 0, i32 3
  %548 = load i64, i64* %547, align 8
  %549 = load %struct.sh7760fb_par*, %struct.sh7760fb_par** %4, align 8
  %550 = getelementptr inbounds %struct.sh7760fb_par, %struct.sh7760fb_par* %549, i32 0, i32 0
  %551 = load %struct.TYPE_4__*, %struct.TYPE_4__** %550, align 8
  %552 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %551, i32 0, i32 4
  %553 = load i64, i64* %552, align 8
  %554 = call i32 (i32, i8*, ...) @dev_dbg(i32 %543, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), i64 %548, i64 %553)
  %555 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %556 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %555, i32 0, i32 0
  %557 = load i32, i32* %556, align 8
  %558 = load i16, i16* %19, align 2
  %559 = zext i16 %558 to i32
  %560 = load i16, i16* %18, align 2
  %561 = zext i16 %560 to i32
  %562 = call i32 (i32, i8*, ...) @dev_dbg(i32 %557, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0), i32 %559, i32 %561)
  %563 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %564 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %563, i32 0, i32 0
  %565 = load i32, i32* %564, align 8
  %566 = load i64, i64* %9, align 8
  %567 = call i32 (i32, i8*, ...) @dev_dbg(i32 %565, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i64 %566)
  %568 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %569 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %568, i32 0, i32 0
  %570 = load i32, i32* %569, align 8
  %571 = load i64, i64* %6, align 8
  %572 = load i64, i64* %8, align 8
  %573 = call i32 (i32, i8*, ...) @dev_dbg(i32 %570, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i64 0, i64 0), i64 %571, i64 %572)
  store i32 0, i32* %2, align 4
  br label %574

574:                                              ; preds = %473, %121
  %575 = load i32, i32* %2, align 4
  ret i32 %575
}

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @sh7760fb_get_color_info(i32, i32, i32*, i32*) #1

declare dso_local i32 @sh7760fb_blank(i32, %struct.fb_info*) #1

declare dso_local i32 @iowrite16(i64, i64) #1

declare dso_local i32 @iowrite32(i64, i64) #1

declare dso_local i32 @sh7760fb_check_var(i32*, %struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
