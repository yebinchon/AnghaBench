; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/nvidia/extr_nvidia.c_nvidiafb_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/nvidia/extr_nvidia.c_nvidiafb_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.nvidia_par* }
%struct.nvidia_par = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, i32)* @nvidiafb_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvidiafb_open(%struct.fb_info* %0, i32 %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvidia_par*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %7 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %6, i32 0, i32 0
  %8 = load %struct.nvidia_par*, %struct.nvidia_par** %7, align 8
  store %struct.nvidia_par* %8, %struct.nvidia_par** %5, align 8
  %9 = load %struct.nvidia_par*, %struct.nvidia_par** %5, align 8
  %10 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %2
  %14 = load %struct.nvidia_par*, %struct.nvidia_par** %5, align 8
  %15 = call i32 @save_vga_x86(%struct.nvidia_par* %14)
  %16 = load %struct.nvidia_par*, %struct.nvidia_par** %5, align 8
  %17 = load %struct.nvidia_par*, %struct.nvidia_par** %5, align 8
  %18 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %17, i32 0, i32 1
  %19 = call i32 @nvidia_save_vga(%struct.nvidia_par* %16, i32* %18)
  br label %20

20:                                               ; preds = %13, %2
  %21 = load %struct.nvidia_par*, %struct.nvidia_par** %5, align 8
  %22 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  ret i32 0
}

declare dso_local i32 @save_vga_x86(%struct.nvidia_par*) #1

declare dso_local i32 @nvidia_save_vga(%struct.nvidia_par*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
