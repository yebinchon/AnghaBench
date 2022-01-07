; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/aty/extr_mach64_accel.c_atyfb_fillrect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/aty/extr_mach64_accel.c_atyfb_fillrect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.fb_fillrect = type { i32, i32, i32, i32, i32 }
%struct.atyfb_par = type { i32, i64 }

@DST_X_LEFT_TO_RIGHT = common dso_local global i32 0, align 4
@DP_FRGD_CLR = common dso_local global i32 0, align 4
@DP_SRC = common dso_local global i32 0, align 4
@BKGD_SRC_BKGD_CLR = common dso_local global i32 0, align 4
@FRGD_SRC_FRGD_CLR = common dso_local global i32 0, align 4
@MONO_SRC_ONE = common dso_local global i32 0, align 4
@DST_CNTL = common dso_local global i32 0, align 4
@DST_LAST_PEL = common dso_local global i32 0, align 4
@DST_Y_TOP_TO_BOTTOM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @atyfb_fillrect(%struct.fb_info* %0, %struct.fb_fillrect* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_fillrect*, align 8
  %5 = alloca %struct.atyfb_par*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_fillrect* %1, %struct.fb_fillrect** %4, align 8
  %10 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %11 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.atyfb_par*
  store %struct.atyfb_par* %13, %struct.atyfb_par** %5, align 8
  %14 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %15 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  %17 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %18 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %7, align 4
  %20 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %21 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %23 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %24 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  br label %109

28:                                               ; preds = %2
  %29 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %30 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %35 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %33, %28
  br label %109

39:                                               ; preds = %33
  %40 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %41 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %39
  %45 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %46 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %47 = call i32 @cfb_fillrect(%struct.fb_info* %45, %struct.fb_fillrect* %46)
  br label %109

48:                                               ; preds = %39
  %49 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %50 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = shl i32 %51, 8
  %53 = load i32, i32* %6, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %6, align 4
  %55 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %56 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = shl i32 %57, 16
  %59 = load i32, i32* %6, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %6, align 4
  %61 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %62 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %64, 24
  br i1 %65, label %66, label %74

66:                                               ; preds = %48
  %67 = load i32, i32* %7, align 4
  %68 = mul nsw i32 %67, 3
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %8, align 4
  %70 = mul nsw i32 %69, 3
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @DST_X_LEFT_TO_RIGHT, align 4
  %73 = call i32 @rotation24bpp(i32 %71, i32 %72)
  store i32 %73, i32* %9, align 4
  br label %74

74:                                               ; preds = %66, %48
  %75 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %76 = call i32 @wait_for_fifo(i32 3, %struct.atyfb_par* %75)
  %77 = load i32, i32* @DP_FRGD_CLR, align 4
  %78 = load i32, i32* %6, align 4
  %79 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %80 = call i32 @aty_st_le32(i32 %77, i32 %78, %struct.atyfb_par* %79)
  %81 = load i32, i32* @DP_SRC, align 4
  %82 = load i32, i32* @BKGD_SRC_BKGD_CLR, align 4
  %83 = load i32, i32* @FRGD_SRC_FRGD_CLR, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @MONO_SRC_ONE, align 4
  %86 = or i32 %84, %85
  %87 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %88 = call i32 @aty_st_le32(i32 %81, i32 %86, %struct.atyfb_par* %87)
  %89 = load i32, i32* @DST_CNTL, align 4
  %90 = load i32, i32* @DST_LAST_PEL, align 4
  %91 = load i32, i32* @DST_Y_TOP_TO_BOTTOM, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @DST_X_LEFT_TO_RIGHT, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* %9, align 4
  %96 = or i32 %94, %95
  %97 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %98 = call i32 @aty_st_le32(i32 %89, i32 %96, %struct.atyfb_par* %97)
  %99 = load i32, i32* %7, align 4
  %100 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %101 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %8, align 4
  %104 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %105 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %108 = call i32 @draw_rect(i32 %99, i32 %102, i32 %103, i32 %106, %struct.atyfb_par* %107)
  br label %109

109:                                              ; preds = %74, %44, %38, %27
  ret void
}

declare dso_local i32 @cfb_fillrect(%struct.fb_info*, %struct.fb_fillrect*) #1

declare dso_local i32 @rotation24bpp(i32, i32) #1

declare dso_local i32 @wait_for_fifo(i32, %struct.atyfb_par*) #1

declare dso_local i32 @aty_st_le32(i32, i32, %struct.atyfb_par*) #1

declare dso_local i32 @draw_rect(i32, i32, i32, i32, %struct.atyfb_par*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
