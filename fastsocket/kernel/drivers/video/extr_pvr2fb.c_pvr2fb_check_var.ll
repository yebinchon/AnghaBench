; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pvr2fb.c_pvr2fb_check_var.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pvr2fb.c_pvr2fb_check_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i64, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_info = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.pvr2fb_par = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@TV_CLK = common dso_local global i64 0, align 8
@VGA_CLK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Invalid pixclock value %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@FB_VMODE_YWRAP = common dso_local global i32 0, align 4
@video_output = common dso_local global i64 0, align 8
@VO_VGA = common dso_local global i64 0, align 8
@FB_VMODE_DOUBLE = common dso_local global i32 0, align 4
@FB_SYNC_BROADCAST = common dso_local global i32 0, align 4
@FB_VMODE_INTERLACED = common dso_local global i32 0, align 4
@FB_VMODE_NONINTERLACED = common dso_local global i32 0, align 4
@FB_ACTIVATE_MASK = common dso_local global i32 0, align 4
@FB_ACTIVATE_TEST = common dso_local global i32 0, align 4
@PAL_VTOTAL = common dso_local global i32 0, align 4
@NTSC_VTOTAL = common dso_local global i32 0, align 4
@PAL_HTOTAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"invalid hsync total for PAL\0A\00", align 1
@NTSC_HTOTAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"invalid hsync total for NTSC\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)* @pvr2fb_check_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvr2fb_check_var(%struct.fb_var_screeninfo* %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %struct.pvr2fb_par*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %4, align 8
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  %10 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %11 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.pvr2fb_par*
  store %struct.pvr2fb_par* %13, %struct.pvr2fb_par** %6, align 8
  %14 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %15 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @TV_CLK, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %2
  %20 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %21 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @VGA_CLK, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %27 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %407

32:                                               ; preds = %19, %2
  %33 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %34 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %35, 320
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %39 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %38, i32 0, i32 1
  store i32 320, i32* %39, align 8
  br label %40

40:                                               ; preds = %37, %32
  %41 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %42 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %43, 240
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %47 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %46, i32 0, i32 2
  store i32 240, i32* %47, align 4
  br label %48

48:                                               ; preds = %45, %40
  %49 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %50 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %53 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %48
  %57 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %58 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %61 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 8
  br label %62

62:                                               ; preds = %56, %48
  %63 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %64 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %67 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %62
  %71 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %72 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %75 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %74, i32 0, i32 4
  store i32 %73, i32* %75, align 4
  br label %76

76:                                               ; preds = %70, %62
  %77 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %78 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 8
  %80 = icmp sle i32 %79, 16
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %83 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %82, i32 0, i32 5
  store i32 16, i32* %83, align 8
  br label %102

84:                                               ; preds = %76
  %85 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %86 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 8
  %88 = icmp sle i32 %87, 24
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %91 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %90, i32 0, i32 5
  store i32 24, i32* %91, align 8
  br label %101

92:                                               ; preds = %84
  %93 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %94 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 8
  %96 = icmp sle i32 %95, 32
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %99 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %98, i32 0, i32 5
  store i32 32, i32* %99, align 8
  br label %100

100:                                              ; preds = %97, %92
  br label %101

101:                                              ; preds = %100, %89
  br label %102

102:                                              ; preds = %101, %81
  %103 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %104 = call i32 @set_color_bitfields(%struct.fb_var_screeninfo* %103)
  %105 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %106 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %105, i32 0, i32 6
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @FB_VMODE_YWRAP, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %178

111:                                              ; preds = %102
  %112 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %113 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %112, i32 0, i32 7
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %130, label %116

116:                                              ; preds = %111
  %117 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %118 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %117, i32 0, i32 8
  %119 = load i64, i64* %118, align 8
  %120 = icmp slt i64 %119, 0
  br i1 %120, label %130, label %121

121:                                              ; preds = %116
  %122 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %123 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %122, i32 0, i32 8
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %126 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 4
  %128 = sext i32 %127 to i64
  %129 = icmp sge i64 %124, %128
  br i1 %129, label %130, label %135

130:                                              ; preds = %121, %116, %111
  %131 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %132 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %131, i32 0, i32 8
  store i64 0, i64* %132, align 8
  %133 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %134 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %133, i32 0, i32 7
  store i64 0, i64* %134, align 8
  br label %177

135:                                              ; preds = %121
  %136 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %137 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %136, i32 0, i32 7
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %140 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %143 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = sub nsw i32 %141, %144
  %146 = sext i32 %145 to i64
  %147 = icmp sgt i64 %138, %146
  br i1 %147, label %171, label %148

148:                                              ; preds = %135
  %149 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %150 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %149, i32 0, i32 8
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %153 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %156 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = sub nsw i32 %154, %157
  %159 = sext i32 %158 to i64
  %160 = icmp sgt i64 %151, %159
  br i1 %160, label %171, label %161

161:                                              ; preds = %148
  %162 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %163 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %162, i32 0, i32 7
  %164 = load i64, i64* %163, align 8
  %165 = icmp slt i64 %164, 0
  br i1 %165, label %171, label %166

166:                                              ; preds = %161
  %167 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %168 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %167, i32 0, i32 8
  %169 = load i64, i64* %168, align 8
  %170 = icmp slt i64 %169, 0
  br i1 %170, label %171, label %176

171:                                              ; preds = %166, %161, %148, %135
  %172 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %173 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %172, i32 0, i32 8
  store i64 0, i64* %173, align 8
  %174 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %175 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %174, i32 0, i32 7
  store i64 0, i64* %175, align 8
  br label %176

176:                                              ; preds = %171, %166
  br label %177

177:                                              ; preds = %176, %130
  br label %183

178:                                              ; preds = %102
  %179 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %180 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %179, i32 0, i32 8
  store i64 0, i64* %180, align 8
  %181 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %182 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %181, i32 0, i32 7
  store i64 0, i64* %182, align 8
  br label %183

183:                                              ; preds = %178, %177
  %184 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %185 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  %187 = icmp slt i32 %186, 480
  br i1 %187, label %188, label %198

188:                                              ; preds = %183
  %189 = load i64, i64* @video_output, align 8
  %190 = load i64, i64* @VO_VGA, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %198

192:                                              ; preds = %188
  %193 = load i32, i32* @FB_VMODE_DOUBLE, align 4
  %194 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %195 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %194, i32 0, i32 6
  %196 = load i32, i32* %195, align 4
  %197 = or i32 %196, %193
  store i32 %197, i32* %195, align 4
  br label %198

198:                                              ; preds = %192, %188, %183
  %199 = load i64, i64* @video_output, align 8
  %200 = load i64, i64* @VO_VGA, align 8
  %201 = icmp ne i64 %199, %200
  br i1 %201, label %202, label %213

202:                                              ; preds = %198
  %203 = load i32, i32* @FB_SYNC_BROADCAST, align 4
  %204 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %205 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %204, i32 0, i32 9
  %206 = load i32, i32* %205, align 8
  %207 = or i32 %206, %203
  store i32 %207, i32* %205, align 8
  %208 = load i32, i32* @FB_VMODE_INTERLACED, align 4
  %209 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %210 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %209, i32 0, i32 6
  %211 = load i32, i32* %210, align 4
  %212 = or i32 %211, %208
  store i32 %212, i32* %210, align 4
  br label %231

213:                                              ; preds = %198
  %214 = load i32, i32* @FB_SYNC_BROADCAST, align 4
  %215 = xor i32 %214, -1
  %216 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %217 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %216, i32 0, i32 9
  %218 = load i32, i32* %217, align 8
  %219 = and i32 %218, %215
  store i32 %219, i32* %217, align 8
  %220 = load i32, i32* @FB_VMODE_INTERLACED, align 4
  %221 = xor i32 %220, -1
  %222 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %223 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %222, i32 0, i32 6
  %224 = load i32, i32* %223, align 4
  %225 = and i32 %224, %221
  store i32 %225, i32* %223, align 4
  %226 = load i32, i32* @FB_VMODE_NONINTERLACED, align 4
  %227 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %228 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %227, i32 0, i32 6
  %229 = load i32, i32* %228, align 4
  %230 = or i32 %229, %226
  store i32 %230, i32* %228, align 4
  br label %231

231:                                              ; preds = %213, %202
  %232 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %233 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %232, i32 0, i32 10
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* @FB_ACTIVATE_MASK, align 4
  %236 = and i32 %234, %235
  %237 = load i32, i32* @FB_ACTIVATE_TEST, align 4
  %238 = icmp ne i32 %236, %237
  br i1 %238, label %239, label %310

239:                                              ; preds = %231
  %240 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %6, align 8
  %241 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %6, align 8
  %244 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %247 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 8
  %249 = add i32 %245, %248
  %250 = sub i32 %242, %249
  %251 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %252 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %251, i32 0, i32 11
  store i32 %250, i32* %252, align 8
  %253 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %6, align 8
  %254 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %6, align 8
  %257 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 4
  %259 = sub i32 %255, %258
  %260 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %261 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %260, i32 0, i32 12
  store i32 %259, i32* %261, align 4
  %262 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %6, align 8
  %263 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %6, align 8
  %266 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %265, i32 0, i32 3
  %267 = load i32, i32* %266, align 4
  %268 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %6, align 8
  %269 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  %271 = sub i32 %267, %270
  %272 = add i32 %264, %271
  %273 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %274 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %273, i32 0, i32 13
  store i32 %272, i32* %274, align 8
  %275 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %6, align 8
  %276 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %275, i32 0, i32 4
  %277 = load i32, i32* %276, align 4
  %278 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %6, align 8
  %279 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %278, i32 0, i32 5
  %280 = load i32, i32* %279, align 4
  %281 = sub i32 %277, %280
  %282 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %283 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %282, i32 0, i32 14
  store i32 %281, i32* %283, align 4
  %284 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %6, align 8
  %285 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %284, i32 0, i32 6
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %6, align 8
  %288 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %287, i32 0, i32 4
  %289 = load i32, i32* %288, align 4
  %290 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %291 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %290, i32 0, i32 2
  %292 = load i32, i32* %291, align 4
  %293 = add i32 %289, %292
  %294 = sub i32 %286, %293
  %295 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %296 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %295, i32 0, i32 15
  store i32 %294, i32* %296, align 8
  %297 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %6, align 8
  %298 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %297, i32 0, i32 6
  %299 = load i32, i32* %298, align 4
  %300 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %6, align 8
  %301 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %300, i32 0, i32 7
  %302 = load i32, i32* %301, align 4
  %303 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %6, align 8
  %304 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %303, i32 0, i32 6
  %305 = load i32, i32* %304, align 4
  %306 = sub i32 %302, %305
  %307 = add i32 %299, %306
  %308 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %309 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %308, i32 0, i32 16
  store i32 %307, i32* %309, align 4
  br label %310

310:                                              ; preds = %239, %231
  %311 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %312 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %311, i32 0, i32 12
  %313 = load i32, i32* %312, align 4
  %314 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %315 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %314, i32 0, i32 1
  %316 = load i32, i32* %315, align 8
  %317 = add i32 %313, %316
  %318 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %319 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %318, i32 0, i32 11
  %320 = load i32, i32* %319, align 8
  %321 = add i32 %317, %320
  %322 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %323 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %322, i32 0, i32 13
  %324 = load i32, i32* %323, align 8
  %325 = add i32 %321, %324
  store i32 %325, i32* %8, align 4
  %326 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %327 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %326, i32 0, i32 14
  %328 = load i32, i32* %327, align 4
  %329 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %330 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %329, i32 0, i32 2
  %331 = load i32, i32* %330, align 4
  %332 = add i32 %328, %331
  %333 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %334 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %333, i32 0, i32 15
  %335 = load i32, i32* %334, align 8
  %336 = add i32 %332, %335
  %337 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %338 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %337, i32 0, i32 16
  %339 = load i32, i32* %338, align 4
  %340 = add i32 %336, %339
  store i32 %340, i32* %7, align 4
  %341 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %342 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %341, i32 0, i32 9
  %343 = load i32, i32* %342, align 8
  %344 = load i32, i32* @FB_SYNC_BROADCAST, align 4
  %345 = and i32 %343, %344
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %383

347:                                              ; preds = %310
  %348 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %349 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %348, i32 0, i32 6
  %350 = load i32, i32* %349, align 4
  %351 = load i32, i32* @FB_VMODE_INTERLACED, align 4
  %352 = and i32 %350, %351
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %357

354:                                              ; preds = %347
  %355 = load i32, i32* %7, align 4
  %356 = udiv i32 %355, 2
  store i32 %356, i32* %7, align 4
  br label %357

357:                                              ; preds = %354, %347
  %358 = load i32, i32* %7, align 4
  %359 = load i32, i32* @PAL_VTOTAL, align 4
  %360 = load i32, i32* @NTSC_VTOTAL, align 4
  %361 = add nsw i32 %359, %360
  %362 = sdiv i32 %361, 2
  %363 = icmp ugt i32 %358, %362
  br i1 %363, label %364, label %373

364:                                              ; preds = %357
  %365 = load i32, i32* %8, align 4
  %366 = load i32, i32* @PAL_HTOTAL, align 4
  %367 = icmp ne i32 %365, %366
  br i1 %367, label %368, label %372

368:                                              ; preds = %364
  %369 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %370 = load i32, i32* @EINVAL, align 4
  %371 = sub nsw i32 0, %370
  store i32 %371, i32* %3, align 4
  br label %407

372:                                              ; preds = %364
  br label %382

373:                                              ; preds = %357
  %374 = load i32, i32* %8, align 4
  %375 = load i32, i32* @NTSC_HTOTAL, align 4
  %376 = icmp ne i32 %374, %375
  br i1 %376, label %377, label %381

377:                                              ; preds = %373
  %378 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %379 = load i32, i32* @EINVAL, align 4
  %380 = sub nsw i32 0, %379
  store i32 %380, i32* %3, align 4
  br label %407

381:                                              ; preds = %373
  br label %382

382:                                              ; preds = %381, %372
  br label %383

383:                                              ; preds = %382, %310
  %384 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %385 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %384, i32 0, i32 3
  %386 = load i32, i32* %385, align 8
  %387 = sext i32 %386 to i64
  %388 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %389 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %388, i32 0, i32 5
  %390 = load i32, i32* %389, align 8
  %391 = call i64 @get_line_length(i64 %387, i32 %390)
  store i64 %391, i64* %9, align 8
  %392 = load i64, i64* %9, align 8
  %393 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %394 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %393, i32 0, i32 4
  %395 = load i32, i32* %394, align 4
  %396 = sext i32 %395 to i64
  %397 = mul i64 %392, %396
  %398 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %399 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %398, i32 0, i32 0
  %400 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %399, i32 0, i32 0
  %401 = load i64, i64* %400, align 8
  %402 = icmp ugt i64 %397, %401
  br i1 %402, label %403, label %406

403:                                              ; preds = %383
  %404 = load i32, i32* @ENOMEM, align 4
  %405 = sub nsw i32 0, %404
  store i32 %405, i32* %3, align 4
  br label %407

406:                                              ; preds = %383
  store i32 0, i32* %3, align 4
  br label %407

407:                                              ; preds = %406, %403, %377, %368, %25
  %408 = load i32, i32* %3, align 4
  ret i32 %408
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @set_color_bitfields(%struct.fb_var_screeninfo*) #1

declare dso_local i64 @get_line_length(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
