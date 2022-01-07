; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pxafb.c_setup_base_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pxafb.c_setup_base_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxafb_info = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.fb_fix_screeninfo, %struct.fb_var_screeninfo }
%struct.fb_fix_screeninfo = type { i32 }
%struct.fb_var_screeninfo = type { i32, i32, i64 }

@DMA_BASE = common dso_local global i32 0, align 4
@DMA_MAX = common dso_local global i32 0, align 4
@PAL_NONE = common dso_local global i32 0, align 4
@PAL_BASE = common dso_local global i32 0, align 4
@PAL_MAX = common dso_local global i32 0, align 4
@LCCR0_SDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pxafb_info*, i32)* @setup_base_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_base_frame(%struct.pxafb_info* %0, i32 %1) #0 {
  %3 = alloca %struct.pxafb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fb_var_screeninfo*, align 8
  %6 = alloca %struct.fb_fix_screeninfo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.pxafb_info* %0, %struct.pxafb_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.pxafb_info*, %struct.pxafb_info** %3, align 8
  %13 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  store %struct.fb_var_screeninfo* %14, %struct.fb_var_screeninfo** %5, align 8
  %15 = load %struct.pxafb_info*, %struct.pxafb_info** %3, align 8
  %16 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.fb_fix_screeninfo* %17, %struct.fb_fix_screeninfo** %6, align 8
  %18 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %19 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* @DMA_BASE, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @DMA_MAX, align 4
  br label %27

26:                                               ; preds = %2
  br label %27

27:                                               ; preds = %26, %24
  %28 = phi i32 [ %25, %24 ], [ 0, %26 ]
  %29 = add nsw i32 %21, %28
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp sge i32 %30, 16
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @PAL_NONE, align 4
  br label %44

34:                                               ; preds = %27
  %35 = load i32, i32* @PAL_BASE, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* @PAL_MAX, align 4
  br label %41

40:                                               ; preds = %34
  br label %41

41:                                               ; preds = %40, %38
  %42 = phi i32 [ %39, %38 ], [ 0, %40 ]
  %43 = add nsw i32 %35, %42
  br label %44

44:                                               ; preds = %41, %32
  %45 = phi i32 [ %33, %32 ], [ %43, %41 ]
  store i32 %45, i32* %9, align 4
  %46 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %6, align 8
  %47 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %50 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = mul nsw i32 %48, %51
  store i32 %52, i32* %7, align 4
  %53 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %6, align 8
  %54 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %58 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = mul i64 %56, %59
  %61 = load %struct.pxafb_info*, %struct.pxafb_info** %3, align 8
  %62 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = add i64 %60, %63
  store i64 %64, i64* %11, align 8
  %65 = load %struct.pxafb_info*, %struct.pxafb_info** %3, align 8
  %66 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @LCCR0_SDS, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %84

71:                                               ; preds = %44
  %72 = load i32, i32* %7, align 4
  %73 = sdiv i32 %72, 2
  store i32 %73, i32* %7, align 4
  %74 = load %struct.pxafb_info*, %struct.pxafb_info** %3, align 8
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, 1
  %77 = load i32, i32* @PAL_NONE, align 4
  %78 = load i64, i64* %11, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = add i64 %78, %80
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @setup_frame_dma(%struct.pxafb_info* %74, i32 %76, i32 %77, i64 %81, i32 %82)
  br label %84

84:                                               ; preds = %71, %44
  %85 = load %struct.pxafb_info*, %struct.pxafb_info** %3, align 8
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %9, align 4
  %88 = load i64, i64* %11, align 8
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @setup_frame_dma(%struct.pxafb_info* %85, i32 %86, i32 %87, i64 %88, i32 %89)
  ret void
}

declare dso_local i32 @setup_frame_dma(%struct.pxafb_info*, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
