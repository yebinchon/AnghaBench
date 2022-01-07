; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_atafb.c_tt_encode_fix.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_atafb.c_tt_encode_fix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_fix_screeninfo = type { i64, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32 }
%struct.atafb_par = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"Atari Builtin\00", align 1
@real_screen_base = common dso_local global i64 0, align 8
@screen_len = common dso_local global i32 0, align 4
@FB_TYPE_INTERLEAVED_PLANES = common dso_local global i32 0, align 4
@FB_VISUAL_PSEUDOCOLOR = common dso_local global i32 0, align 4
@TT_SHIFTER_MODEMASK = common dso_local global i32 0, align 4
@TT_SHIFTER_TTHIGH = common dso_local global i32 0, align 4
@TT_SHIFTER_STHIGH = common dso_local global i32 0, align 4
@FB_TYPE_PACKED_PIXELS = common dso_local global i32 0, align 4
@FB_VISUAL_MONO01 = common dso_local global i32 0, align 4
@FB_ACCEL_ATARIBLITT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_fix_screeninfo*, %struct.atafb_par*)* @tt_encode_fix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tt_encode_fix(%struct.fb_fix_screeninfo* %0, %struct.atafb_par* %1) #0 {
  %3 = alloca %struct.fb_fix_screeninfo*, align 8
  %4 = alloca %struct.atafb_par*, align 8
  %5 = alloca i32, align 4
  store %struct.fb_fix_screeninfo* %0, %struct.fb_fix_screeninfo** %3, align 8
  store %struct.atafb_par* %1, %struct.atafb_par** %4, align 8
  %6 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %3, align 8
  %7 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %6, i32 0, i32 10
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @strcpy(i32 %8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %10 = load i64, i64* @real_screen_base, align 8
  %11 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %3, align 8
  %12 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %11, i32 0, i32 0
  store i64 %10, i64* %12, align 8
  %13 = load i32, i32* @screen_len, align 4
  %14 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %3, align 8
  %15 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %14, i32 0, i32 9
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* @FB_TYPE_INTERLEAVED_PLANES, align 4
  %17 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %3, align 8
  %18 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %17, i32 0, i32 8
  store i32 %16, i32* %18, align 4
  %19 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %3, align 8
  %20 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %19, i32 0, i32 1
  store i32 2, i32* %20, align 8
  %21 = load i32, i32* @FB_VISUAL_PSEUDOCOLOR, align 4
  %22 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %3, align 8
  %23 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %22, i32 0, i32 7
  store i32 %21, i32* %23, align 8
  %24 = load %struct.atafb_par*, %struct.atafb_par** %4, align 8
  %25 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @TT_SHIFTER_MODEMASK, align 4
  %30 = and i32 %28, %29
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @TT_SHIFTER_TTHIGH, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %38, label %34

34:                                               ; preds = %2
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @TT_SHIFTER_STHIGH, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %34, %2
  %39 = load i32, i32* @FB_TYPE_PACKED_PIXELS, align 4
  %40 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %3, align 8
  %41 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %40, i32 0, i32 8
  store i32 %39, i32* %41, align 4
  %42 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %3, align 8
  %43 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %42, i32 0, i32 1
  store i32 0, i32* %43, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @TT_SHIFTER_TTHIGH, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %38
  %48 = load i32, i32* @FB_VISUAL_MONO01, align 4
  %49 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %3, align 8
  %50 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %49, i32 0, i32 7
  store i32 %48, i32* %50, align 8
  br label %51

51:                                               ; preds = %47, %38
  br label %52

52:                                               ; preds = %51, %34
  %53 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %3, align 8
  %54 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %53, i32 0, i32 6
  store i64 0, i64* %54, align 8
  %55 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %3, align 8
  %56 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %55, i32 0, i32 2
  store i32 1, i32* %56, align 4
  %57 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %3, align 8
  %58 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %57, i32 0, i32 5
  store i64 0, i64* %58, align 8
  %59 = load %struct.atafb_par*, %struct.atafb_par** %4, align 8
  %60 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %3, align 8
  %63 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @FB_ACCEL_ATARIBLITT, align 4
  %65 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %3, align 8
  %66 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 8
  ret i32 0
}

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
