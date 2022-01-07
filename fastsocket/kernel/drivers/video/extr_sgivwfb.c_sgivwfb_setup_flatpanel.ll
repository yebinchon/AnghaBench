; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_sgivwfb.c_sgivwfb_setup_flatpanel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_sgivwfb.c_sgivwfb_setup_flatpanel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sgivw_par = type { i32 }
%struct.dbe_timing_info = type { i32, i32, i32, i32 }

@VT_FLAGS = common dso_local global i32 0, align 4
@HDRV_INVERT = common dso_local global i32 0, align 4
@FB_SYNC_HOR_HIGH_ACT = common dso_local global i32 0, align 4
@VDRV_INVERT = common dso_local global i32 0, align 4
@FB_SYNC_VERT_HIGH_ACT = common dso_local global i32 0, align 4
@vt_flags = common dso_local global i32 0, align 4
@flatpanel_id = common dso_local global i32 0, align 4
@FP_DE = common dso_local global i32 0, align 4
@FP_DE_ON = common dso_local global i32 0, align 4
@FP_DE_OFF = common dso_local global i32 0, align 4
@fp_de = common dso_local global i32 0, align 4
@FP_HDRV = common dso_local global i32 0, align 4
@FP_HDRV_OFF = common dso_local global i32 0, align 4
@fp_hdrv = common dso_local global i32 0, align 4
@FP_VDRV = common dso_local global i32 0, align 4
@FP_VDRV_ON = common dso_local global i32 0, align 4
@FP_VDRV_OFF = common dso_local global i32 0, align 4
@fp_vdrv = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sgivw_par*, %struct.dbe_timing_info*)* @sgivwfb_setup_flatpanel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sgivwfb_setup_flatpanel(%struct.sgivw_par* %0, %struct.dbe_timing_info* %1) #0 {
  %3 = alloca %struct.sgivw_par*, align 8
  %4 = alloca %struct.dbe_timing_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.sgivw_par* %0, %struct.sgivw_par** %3, align 8
  store %struct.dbe_timing_info* %1, %struct.dbe_timing_info** %4, align 8
  store i64 0, i64* %9, align 8
  %10 = load i32, i32* @VT_FLAGS, align 4
  %11 = load i32, i32* @HDRV_INVERT, align 4
  %12 = load i64, i64* %9, align 8
  %13 = load %struct.dbe_timing_info*, %struct.dbe_timing_info** %4, align 8
  %14 = getelementptr inbounds %struct.dbe_timing_info, %struct.dbe_timing_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @FB_SYNC_HOR_HIGH_ACT, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 0, i32 1
  %21 = call i32 @SET_DBE_FIELD(i32 %10, i32 %11, i64 %12, i32 %20)
  %22 = load i32, i32* @VT_FLAGS, align 4
  %23 = load i32, i32* @VDRV_INVERT, align 4
  %24 = load i64, i64* %9, align 8
  %25 = load %struct.dbe_timing_info*, %struct.dbe_timing_info** %4, align 8
  %26 = getelementptr inbounds %struct.dbe_timing_info, %struct.dbe_timing_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @FB_SYNC_VERT_HIGH_ACT, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 0, i32 1
  %33 = call i32 @SET_DBE_FIELD(i32 %22, i32 %23, i64 %24, i32 %32)
  %34 = load i32, i32* @vt_flags, align 4
  %35 = load i64, i64* %9, align 8
  %36 = call i32 @DBE_SETREG(i32 %34, i64 %35)
  %37 = load i32, i32* @flatpanel_id, align 4
  switch i32 %37, label %45 [
    i32 128, label %38
  ]

38:                                               ; preds = %2
  store i32 1600, i32* %5, align 4
  store i32 1024, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 1600, i32* %8, align 4
  %39 = load %struct.dbe_timing_info*, %struct.dbe_timing_info** %4, align 8
  %40 = getelementptr inbounds %struct.dbe_timing_info, %struct.dbe_timing_info* %39, i32 0, i32 1
  store i32 4, i32* %40, align 4
  %41 = load %struct.dbe_timing_info*, %struct.dbe_timing_info** %4, align 8
  %42 = getelementptr inbounds %struct.dbe_timing_info, %struct.dbe_timing_info* %41, i32 0, i32 2
  store i32 1, i32* %42, align 4
  %43 = load %struct.dbe_timing_info*, %struct.dbe_timing_info** %4, align 8
  %44 = getelementptr inbounds %struct.dbe_timing_info, %struct.dbe_timing_info* %43, i32 0, i32 3
  store i32 0, i32* %44, align 4
  br label %46

45:                                               ; preds = %2
  store i32 4095, i32* %8, align 4
  store i32 4095, i32* %7, align 4
  store i32 4095, i32* %6, align 4
  store i32 4095, i32* %5, align 4
  br label %46

46:                                               ; preds = %45, %38
  store i64 0, i64* %9, align 8
  %47 = load i32, i32* @FP_DE, align 4
  %48 = load i32, i32* @FP_DE_ON, align 4
  %49 = load i64, i64* %9, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @SET_DBE_FIELD(i32 %47, i32 %48, i64 %49, i32 %50)
  %52 = load i32, i32* @FP_DE, align 4
  %53 = load i32, i32* @FP_DE_OFF, align 4
  %54 = load i64, i64* %9, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @SET_DBE_FIELD(i32 %52, i32 %53, i64 %54, i32 %55)
  %57 = load i32, i32* @fp_de, align 4
  %58 = load i64, i64* %9, align 8
  %59 = call i32 @DBE_SETREG(i32 %57, i64 %58)
  store i64 0, i64* %9, align 8
  %60 = load i32, i32* @FP_HDRV, align 4
  %61 = load i32, i32* @FP_HDRV_OFF, align 4
  %62 = load i64, i64* %9, align 8
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @SET_DBE_FIELD(i32 %60, i32 %61, i64 %62, i32 %63)
  %65 = load i32, i32* @fp_hdrv, align 4
  %66 = load i64, i64* %9, align 8
  %67 = call i32 @DBE_SETREG(i32 %65, i64 %66)
  store i64 0, i64* %9, align 8
  %68 = load i32, i32* @FP_VDRV, align 4
  %69 = load i32, i32* @FP_VDRV_ON, align 4
  %70 = load i64, i64* %9, align 8
  %71 = call i32 @SET_DBE_FIELD(i32 %68, i32 %69, i64 %70, i32 1)
  %72 = load i32, i32* @FP_VDRV, align 4
  %73 = load i32, i32* @FP_VDRV_OFF, align 4
  %74 = load i64, i64* %9, align 8
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 1
  %77 = call i32 @SET_DBE_FIELD(i32 %72, i32 %73, i64 %74, i32 %76)
  %78 = load i32, i32* @fp_vdrv, align 4
  %79 = load i64, i64* %9, align 8
  %80 = call i32 @DBE_SETREG(i32 %78, i64 %79)
  ret void
}

declare dso_local i32 @SET_DBE_FIELD(i32, i32, i64, i32) #1

declare dso_local i32 @DBE_SETREG(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
