; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/riva/extr_fbdev.c_rivafb_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/riva/extr_fbdev.c_rivafb_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.riva_par* }
%struct.riva_par = type { i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i64, i32 (%struct.TYPE_4__*, i32)* }
%struct.TYPE_5__ = type { i32 }

@NV_ARCH_03 = common dso_local global i64 0, align 8
@VGA_SAVE_CMAP = common dso_local global i32 0, align 4
@VGA_SAVE_FONTS = common dso_local global i32 0, align 4
@VGA_SAVE_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, i32)* @rivafb_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rivafb_open(%struct.fb_info* %0, i32 %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.riva_par*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %7 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %6, i32 0, i32 0
  %8 = load %struct.riva_par*, %struct.riva_par** %7, align 8
  store %struct.riva_par* %8, %struct.riva_par** %5, align 8
  %9 = call i32 (...) @NVTRACE_ENTER()
  %10 = load %struct.riva_par*, %struct.riva_par** %5, align 8
  %11 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.riva_par*, %struct.riva_par** %5, align 8
  %14 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %31, label %17

17:                                               ; preds = %2
  %18 = load %struct.riva_par*, %struct.riva_par** %5, align 8
  %19 = call i32 @CRTCout(%struct.riva_par* %18, i32 17, i32 255)
  %20 = load %struct.riva_par*, %struct.riva_par** %5, align 8
  %21 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32 (%struct.TYPE_4__*, i32)*, i32 (%struct.TYPE_4__*, i32)** %22, align 8
  %24 = load %struct.riva_par*, %struct.riva_par** %5, align 8
  %25 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %24, i32 0, i32 3
  %26 = call i32 %23(%struct.TYPE_4__* %25, i32 0)
  %27 = load %struct.riva_par*, %struct.riva_par** %5, align 8
  %28 = load %struct.riva_par*, %struct.riva_par** %5, align 8
  %29 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %28, i32 0, i32 2
  %30 = call i32 @riva_save_state(%struct.riva_par* %27, i32* %29)
  br label %31

31:                                               ; preds = %17, %2
  %32 = load %struct.riva_par*, %struct.riva_par** %5, align 8
  %33 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  %36 = load %struct.riva_par*, %struct.riva_par** %5, align 8
  %37 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %36, i32 0, i32 0
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = call i32 (...) @NVTRACE_LEAVE()
  ret i32 0
}

declare dso_local i32 @NVTRACE_ENTER(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @CRTCout(%struct.riva_par*, i32, i32) #1

declare dso_local i32 @riva_save_state(%struct.riva_par*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @NVTRACE_LEAVE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
