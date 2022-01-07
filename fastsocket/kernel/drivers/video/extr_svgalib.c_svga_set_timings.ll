; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_svgalib.c_svga_set_timings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_svgalib.c_svga_set_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svga_timing_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"fb%d: horizontal total      : %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"fb%d: horizontal display    : %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"fb%d: horizontal blank start: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"fb%d: horizontal blank end  : %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"fb%d: horizontal sync start : %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"fb%d: horizontal sync end   : %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"fb%d: vertical total        : %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"fb%d: vertical display      : %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"fb%d: vertical blank start  : %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"fb%d: vertical blank end    : %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"fb%d: vertical sync start   : %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"fb%d: vertical sync end     : %d\0A\00", align 1
@VGA_MIS_R = common dso_local global i32 0, align 4
@FB_SYNC_HOR_HIGH_ACT = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [32 x i8] c"fb%d: positive horizontal sync\0A\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"fb%d: negative horizontal sync\0A\00", align 1
@FB_SYNC_VERT_HIGH_ACT = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [30 x i8] c"fb%d: positive vertical sync\0A\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"fb%d: negative vertical sync\0A\0A\00", align 1
@VGA_MIS_W = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svga_set_timings(%struct.svga_timing_regs* %0, %struct.fb_var_screeninfo* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.svga_timing_regs*, align 8
  %10 = alloca %struct.fb_var_screeninfo*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.svga_timing_regs* %0, %struct.svga_timing_regs** %9, align 8
  store %struct.fb_var_screeninfo* %1, %struct.fb_var_screeninfo** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %19 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %10, align 8
  %20 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %10, align 8
  %23 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %21, %24
  %26 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %10, align 8
  %27 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %25, %28
  %30 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %10, align 8
  %31 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %29, %32
  store i32 %33, i32* %18, align 4
  %34 = load i32, i32* %18, align 4
  %35 = load i32, i32* %11, align 4
  %36 = mul nsw i32 %34, %35
  %37 = load i32, i32* %12, align 4
  %38 = sdiv i32 %36, %37
  store i32 %38, i32* %18, align 4
  %39 = load i32, i32* %16, align 4
  %40 = load i32, i32* %18, align 4
  %41 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40)
  %42 = load %struct.svga_timing_regs*, %struct.svga_timing_regs** %9, align 8
  %43 = getelementptr inbounds %struct.svga_timing_regs, %struct.svga_timing_regs* %42, i32 0, i32 11
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %18, align 4
  %46 = sdiv i32 %45, 8
  %47 = sub nsw i32 %46, 5
  %48 = call i32 @svga_wcrt_multi(i32 %44, i32 %47)
  %49 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %10, align 8
  %50 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %18, align 4
  %52 = load i32, i32* %18, align 4
  %53 = load i32, i32* %11, align 4
  %54 = mul nsw i32 %52, %53
  %55 = load i32, i32* %12, align 4
  %56 = sdiv i32 %54, %55
  store i32 %56, i32* %18, align 4
  %57 = load i32, i32* %16, align 4
  %58 = load i32, i32* %18, align 4
  %59 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %58)
  %60 = load %struct.svga_timing_regs*, %struct.svga_timing_regs** %9, align 8
  %61 = getelementptr inbounds %struct.svga_timing_regs, %struct.svga_timing_regs* %60, i32 0, i32 10
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %18, align 4
  %64 = sdiv i32 %63, 8
  %65 = sub nsw i32 %64, 1
  %66 = call i32 @svga_wcrt_multi(i32 %62, i32 %65)
  %67 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %10, align 8
  %68 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %18, align 4
  %70 = load i32, i32* %18, align 4
  %71 = load i32, i32* %11, align 4
  %72 = mul nsw i32 %70, %71
  %73 = load i32, i32* %12, align 4
  %74 = sdiv i32 %72, %73
  store i32 %74, i32* %18, align 4
  %75 = load i32, i32* %16, align 4
  %76 = load i32, i32* %18, align 4
  %77 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %75, i32 %76)
  %78 = load %struct.svga_timing_regs*, %struct.svga_timing_regs** %9, align 8
  %79 = getelementptr inbounds %struct.svga_timing_regs, %struct.svga_timing_regs* %78, i32 0, i32 9
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %18, align 4
  %82 = sdiv i32 %81, 8
  %83 = sub nsw i32 %82, 1
  %84 = load i32, i32* %15, align 4
  %85 = add nsw i32 %83, %84
  %86 = call i32 @svga_wcrt_multi(i32 %80, i32 %85)
  %87 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %10, align 8
  %88 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %10, align 8
  %91 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %89, %92
  %94 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %10, align 8
  %95 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %93, %96
  %98 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %10, align 8
  %99 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %97, %100
  store i32 %101, i32* %18, align 4
  %102 = load i32, i32* %18, align 4
  %103 = load i32, i32* %11, align 4
  %104 = mul nsw i32 %102, %103
  %105 = load i32, i32* %12, align 4
  %106 = sdiv i32 %104, %105
  store i32 %106, i32* %18, align 4
  %107 = load i32, i32* %16, align 4
  %108 = load i32, i32* %18, align 4
  %109 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %107, i32 %108)
  %110 = load %struct.svga_timing_regs*, %struct.svga_timing_regs** %9, align 8
  %111 = getelementptr inbounds %struct.svga_timing_regs, %struct.svga_timing_regs* %110, i32 0, i32 8
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %18, align 4
  %114 = sdiv i32 %113, 8
  %115 = sub nsw i32 %114, 1
  %116 = load i32, i32* %15, align 4
  %117 = sub nsw i32 %115, %116
  %118 = call i32 @svga_wcrt_multi(i32 %112, i32 %117)
  %119 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %10, align 8
  %120 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %10, align 8
  %123 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %121, %124
  store i32 %125, i32* %18, align 4
  %126 = load i32, i32* %18, align 4
  %127 = load i32, i32* %11, align 4
  %128 = mul nsw i32 %126, %127
  %129 = load i32, i32* %12, align 4
  %130 = sdiv i32 %128, %129
  store i32 %130, i32* %18, align 4
  %131 = load i32, i32* %16, align 4
  %132 = load i32, i32* %18, align 4
  %133 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %131, i32 %132)
  %134 = load %struct.svga_timing_regs*, %struct.svga_timing_regs** %9, align 8
  %135 = getelementptr inbounds %struct.svga_timing_regs, %struct.svga_timing_regs* %134, i32 0, i32 7
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %18, align 4
  %138 = sdiv i32 %137, 8
  %139 = call i32 @svga_wcrt_multi(i32 %136, i32 %138)
  %140 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %10, align 8
  %141 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %10, align 8
  %144 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %142, %145
  %147 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %10, align 8
  %148 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = add nsw i32 %146, %149
  store i32 %150, i32* %18, align 4
  %151 = load i32, i32* %18, align 4
  %152 = load i32, i32* %11, align 4
  %153 = mul nsw i32 %151, %152
  %154 = load i32, i32* %12, align 4
  %155 = sdiv i32 %153, %154
  store i32 %155, i32* %18, align 4
  %156 = load i32, i32* %16, align 4
  %157 = load i32, i32* %18, align 4
  %158 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %156, i32 %157)
  %159 = load %struct.svga_timing_regs*, %struct.svga_timing_regs** %9, align 8
  %160 = getelementptr inbounds %struct.svga_timing_regs, %struct.svga_timing_regs* %159, i32 0, i32 6
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %18, align 4
  %163 = sdiv i32 %162, 8
  %164 = call i32 @svga_wcrt_multi(i32 %161, i32 %163)
  %165 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %10, align 8
  %166 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %10, align 8
  %169 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %168, i32 0, i32 5
  %170 = load i32, i32* %169, align 4
  %171 = add nsw i32 %167, %170
  %172 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %10, align 8
  %173 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %172, i32 0, i32 6
  %174 = load i32, i32* %173, align 4
  %175 = add nsw i32 %171, %174
  %176 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %10, align 8
  %177 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %176, i32 0, i32 7
  %178 = load i32, i32* %177, align 4
  %179 = add nsw i32 %175, %178
  store i32 %179, i32* %18, align 4
  %180 = load i32, i32* %18, align 4
  %181 = load i32, i32* %13, align 4
  %182 = mul nsw i32 %180, %181
  %183 = load i32, i32* %14, align 4
  %184 = sdiv i32 %182, %183
  store i32 %184, i32* %18, align 4
  %185 = load i32, i32* %16, align 4
  %186 = load i32, i32* %18, align 4
  %187 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %185, i32 %186)
  %188 = load %struct.svga_timing_regs*, %struct.svga_timing_regs** %9, align 8
  %189 = getelementptr inbounds %struct.svga_timing_regs, %struct.svga_timing_regs* %188, i32 0, i32 5
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* %18, align 4
  %192 = sub nsw i32 %191, 2
  %193 = call i32 @svga_wcrt_multi(i32 %190, i32 %192)
  %194 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %10, align 8
  %195 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %194, i32 0, i32 4
  %196 = load i32, i32* %195, align 4
  store i32 %196, i32* %18, align 4
  %197 = load i32, i32* %18, align 4
  %198 = load i32, i32* %13, align 4
  %199 = mul nsw i32 %197, %198
  %200 = load i32, i32* %14, align 4
  %201 = sdiv i32 %199, %200
  store i32 %201, i32* %18, align 4
  %202 = load i32, i32* %16, align 4
  %203 = load i32, i32* %18, align 4
  %204 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %202, i32 %203)
  %205 = load %struct.svga_timing_regs*, %struct.svga_timing_regs** %9, align 8
  %206 = getelementptr inbounds %struct.svga_timing_regs, %struct.svga_timing_regs* %205, i32 0, i32 4
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* %18, align 4
  %209 = sub nsw i32 %208, 1
  %210 = call i32 @svga_wcrt_multi(i32 %207, i32 %209)
  %211 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %10, align 8
  %212 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %211, i32 0, i32 4
  %213 = load i32, i32* %212, align 4
  store i32 %213, i32* %18, align 4
  %214 = load i32, i32* %18, align 4
  %215 = load i32, i32* %13, align 4
  %216 = mul nsw i32 %214, %215
  %217 = load i32, i32* %14, align 4
  %218 = sdiv i32 %216, %217
  store i32 %218, i32* %18, align 4
  %219 = load i32, i32* %16, align 4
  %220 = load i32, i32* %18, align 4
  %221 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i32 %219, i32 %220)
  %222 = load %struct.svga_timing_regs*, %struct.svga_timing_regs** %9, align 8
  %223 = getelementptr inbounds %struct.svga_timing_regs, %struct.svga_timing_regs* %222, i32 0, i32 3
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* %18, align 4
  %226 = call i32 @svga_wcrt_multi(i32 %224, i32 %225)
  %227 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %10, align 8
  %228 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %227, i32 0, i32 4
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %10, align 8
  %231 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %230, i32 0, i32 5
  %232 = load i32, i32* %231, align 4
  %233 = add nsw i32 %229, %232
  %234 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %10, align 8
  %235 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %234, i32 0, i32 6
  %236 = load i32, i32* %235, align 4
  %237 = add nsw i32 %233, %236
  %238 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %10, align 8
  %239 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %238, i32 0, i32 7
  %240 = load i32, i32* %239, align 4
  %241 = add nsw i32 %237, %240
  store i32 %241, i32* %18, align 4
  %242 = load i32, i32* %18, align 4
  %243 = load i32, i32* %13, align 4
  %244 = mul nsw i32 %242, %243
  %245 = load i32, i32* %14, align 4
  %246 = sdiv i32 %244, %245
  store i32 %246, i32* %18, align 4
  %247 = load i32, i32* %16, align 4
  %248 = load i32, i32* %18, align 4
  %249 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i32 %247, i32 %248)
  %250 = load %struct.svga_timing_regs*, %struct.svga_timing_regs** %9, align 8
  %251 = getelementptr inbounds %struct.svga_timing_regs, %struct.svga_timing_regs* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 4
  %253 = load i32, i32* %18, align 4
  %254 = sub nsw i32 %253, 2
  %255 = call i32 @svga_wcrt_multi(i32 %252, i32 %254)
  %256 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %10, align 8
  %257 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %256, i32 0, i32 4
  %258 = load i32, i32* %257, align 4
  %259 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %10, align 8
  %260 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %259, i32 0, i32 6
  %261 = load i32, i32* %260, align 4
  %262 = add nsw i32 %258, %261
  store i32 %262, i32* %18, align 4
  %263 = load i32, i32* %18, align 4
  %264 = load i32, i32* %13, align 4
  %265 = mul nsw i32 %263, %264
  %266 = load i32, i32* %14, align 4
  %267 = sdiv i32 %265, %266
  store i32 %267, i32* %18, align 4
  %268 = load i32, i32* %16, align 4
  %269 = load i32, i32* %18, align 4
  %270 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i32 %268, i32 %269)
  %271 = load %struct.svga_timing_regs*, %struct.svga_timing_regs** %9, align 8
  %272 = getelementptr inbounds %struct.svga_timing_regs, %struct.svga_timing_regs* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = load i32, i32* %18, align 4
  %275 = call i32 @svga_wcrt_multi(i32 %273, i32 %274)
  %276 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %10, align 8
  %277 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %276, i32 0, i32 4
  %278 = load i32, i32* %277, align 4
  %279 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %10, align 8
  %280 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %279, i32 0, i32 6
  %281 = load i32, i32* %280, align 4
  %282 = add nsw i32 %278, %281
  %283 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %10, align 8
  %284 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %283, i32 0, i32 7
  %285 = load i32, i32* %284, align 4
  %286 = add nsw i32 %282, %285
  store i32 %286, i32* %18, align 4
  %287 = load i32, i32* %18, align 4
  %288 = load i32, i32* %13, align 4
  %289 = mul nsw i32 %287, %288
  %290 = load i32, i32* %14, align 4
  %291 = sdiv i32 %289, %290
  store i32 %291, i32* %18, align 4
  %292 = load i32, i32* %16, align 4
  %293 = load i32, i32* %18, align 4
  %294 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0), i32 %292, i32 %293)
  %295 = load %struct.svga_timing_regs*, %struct.svga_timing_regs** %9, align 8
  %296 = getelementptr inbounds %struct.svga_timing_regs, %struct.svga_timing_regs* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = load i32, i32* %18, align 4
  %299 = call i32 @svga_wcrt_multi(i32 %297, i32 %298)
  %300 = load i32, i32* @VGA_MIS_R, align 4
  %301 = call i32 @vga_r(i32* null, i32 %300)
  store i32 %301, i32* %17, align 4
  %302 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %10, align 8
  %303 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %302, i32 0, i32 8
  %304 = load i32, i32* %303, align 4
  %305 = load i32, i32* @FB_SYNC_HOR_HIGH_ACT, align 4
  %306 = and i32 %304, %305
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %313

308:                                              ; preds = %8
  %309 = load i32, i32* %16, align 4
  %310 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0), i32 %309)
  %311 = load i32, i32* %17, align 4
  %312 = and i32 %311, -129
  store i32 %312, i32* %17, align 4
  br label %318

313:                                              ; preds = %8
  %314 = load i32, i32* %16, align 4
  %315 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i64 0, i64 0), i32 %314)
  %316 = load i32, i32* %17, align 4
  %317 = or i32 %316, 128
  store i32 %317, i32* %17, align 4
  br label %318

318:                                              ; preds = %313, %308
  %319 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %10, align 8
  %320 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %319, i32 0, i32 8
  %321 = load i32, i32* %320, align 4
  %322 = load i32, i32* @FB_SYNC_VERT_HIGH_ACT, align 4
  %323 = and i32 %321, %322
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %330

325:                                              ; preds = %318
  %326 = load i32, i32* %16, align 4
  %327 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 %326)
  %328 = load i32, i32* %17, align 4
  %329 = and i32 %328, -65
  store i32 %329, i32* %17, align 4
  br label %335

330:                                              ; preds = %318
  %331 = load i32, i32* %16, align 4
  %332 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i64 0, i64 0), i32 %331)
  %333 = load i32, i32* %17, align 4
  %334 = or i32 %333, 64
  store i32 %334, i32* %17, align 4
  br label %335

335:                                              ; preds = %330, %325
  %336 = load i32, i32* @VGA_MIS_W, align 4
  %337 = load i32, i32* %17, align 4
  %338 = call i32 @vga_w(i32* null, i32 %336, i32 %337)
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @svga_wcrt_multi(i32, i32) #1

declare dso_local i32 @vga_r(i32*, i32) #1

declare dso_local i32 @vga_w(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
