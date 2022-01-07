; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/nvidia/extr_nv_accel.c_NVSetRopSolid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/nvidia/extr_nv_accel.c_NVSetRopSolid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.nvidia_par* }
%struct.nvidia_par = type { i32 }

@ROP_SET = common dso_local global i32 0, align 4
@NVCopyROP_PM = common dso_local global i32* null, align 8
@NVCopyROP = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, i32, i32)* @NVSetRopSolid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @NVSetRopSolid(%struct.fb_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvidia_par*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %9 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 0
  %10 = load %struct.nvidia_par*, %struct.nvidia_par** %9, align 8
  store %struct.nvidia_par* %10, %struct.nvidia_par** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, -1
  br i1 %12, label %13, label %40

13:                                               ; preds = %3
  %14 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @NVSetPattern(%struct.fb_info* %14, i32 0, i32 %15, i32 -1, i32 -1)
  %17 = load %struct.nvidia_par*, %struct.nvidia_par** %7, align 8
  %18 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %5, align 4
  %21 = add nsw i32 %20, 32
  %22 = icmp ne i32 %19, %21
  br i1 %22, label %23, label %39

23:                                               ; preds = %13
  %24 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %25 = load %struct.nvidia_par*, %struct.nvidia_par** %7, align 8
  %26 = load i32, i32* @ROP_SET, align 4
  %27 = call i32 @NVDmaStart(%struct.fb_info* %24, %struct.nvidia_par* %25, i32 %26, i32 1)
  %28 = load %struct.nvidia_par*, %struct.nvidia_par** %7, align 8
  %29 = load i32*, i32** @NVCopyROP_PM, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @NVDmaNext(%struct.nvidia_par* %28, i32 %33)
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 32
  %37 = load %struct.nvidia_par*, %struct.nvidia_par** %7, align 8
  %38 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  br label %39

39:                                               ; preds = %23, %13
  br label %70

40:                                               ; preds = %3
  %41 = load %struct.nvidia_par*, %struct.nvidia_par** %7, align 8
  %42 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %69

46:                                               ; preds = %40
  %47 = load %struct.nvidia_par*, %struct.nvidia_par** %7, align 8
  %48 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp sge i32 %49, 16
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %53 = call i32 @NVSetPattern(%struct.fb_info* %52, i32 -1, i32 -1, i32 -1, i32 -1)
  br label %54

54:                                               ; preds = %51, %46
  %55 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %56 = load %struct.nvidia_par*, %struct.nvidia_par** %7, align 8
  %57 = load i32, i32* @ROP_SET, align 4
  %58 = call i32 @NVDmaStart(%struct.fb_info* %55, %struct.nvidia_par* %56, i32 %57, i32 1)
  %59 = load %struct.nvidia_par*, %struct.nvidia_par** %7, align 8
  %60 = load i32*, i32** @NVCopyROP, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @NVDmaNext(%struct.nvidia_par* %59, i32 %64)
  %66 = load i32, i32* %5, align 4
  %67 = load %struct.nvidia_par*, %struct.nvidia_par** %7, align 8
  %68 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  br label %69

69:                                               ; preds = %54, %40
  br label %70

70:                                               ; preds = %69, %39
  ret void
}

declare dso_local i32 @NVSetPattern(%struct.fb_info*, i32, i32, i32, i32) #1

declare dso_local i32 @NVDmaStart(%struct.fb_info*, %struct.nvidia_par*, i32, i32) #1

declare dso_local i32 @NVDmaNext(%struct.nvidia_par*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
