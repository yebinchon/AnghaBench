; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/nvidia/extr_nv_accel.c_nvidiafb_sync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/nvidia/extr_nv_accel.c_nvidiafb_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64, %struct.nvidia_par* }
%struct.nvidia_par = type { i32 }

@FBINFO_STATE_RUNNING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvidiafb_sync(%struct.fb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.nvidia_par*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  %5 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %6 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %5, i32 0, i32 1
  %7 = load %struct.nvidia_par*, %struct.nvidia_par** %6, align 8
  store %struct.nvidia_par* %7, %struct.nvidia_par** %4, align 8
  %8 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %9 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @FBINFO_STATE_RUNNING, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %31

14:                                               ; preds = %1
  %15 = load %struct.nvidia_par*, %struct.nvidia_par** %4, align 8
  %16 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %21 = call i32 @NVFlush(%struct.fb_info* %20)
  br label %22

22:                                               ; preds = %19, %14
  %23 = load %struct.nvidia_par*, %struct.nvidia_par** %4, align 8
  %24 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %29 = call i32 @NVSync(%struct.fb_info* %28)
  br label %30

30:                                               ; preds = %27, %22
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %13
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @NVFlush(%struct.fb_info*) #1

declare dso_local i32 @NVSync(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
