; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_omapfb_main.c_omapfb_sync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_omapfb_main.c_omapfb_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.omapfb_plane_struct* }
%struct.omapfb_plane_struct = type { %struct.omapfb_device* }
%struct.omapfb_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (...)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*)* @omapfb_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omapfb_sync(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.omapfb_plane_struct*, align 8
  %4 = alloca %struct.omapfb_device*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %5 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %6 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %5, i32 0, i32 0
  %7 = load %struct.omapfb_plane_struct*, %struct.omapfb_plane_struct** %6, align 8
  store %struct.omapfb_plane_struct* %7, %struct.omapfb_plane_struct** %3, align 8
  %8 = load %struct.omapfb_plane_struct*, %struct.omapfb_plane_struct** %3, align 8
  %9 = getelementptr inbounds %struct.omapfb_plane_struct, %struct.omapfb_plane_struct* %8, i32 0, i32 0
  %10 = load %struct.omapfb_device*, %struct.omapfb_device** %9, align 8
  store %struct.omapfb_device* %10, %struct.omapfb_device** %4, align 8
  %11 = load %struct.omapfb_device*, %struct.omapfb_device** %4, align 8
  %12 = call i32 @omapfb_rqueue_lock(%struct.omapfb_device* %11)
  %13 = load %struct.omapfb_device*, %struct.omapfb_device** %4, align 8
  %14 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (...)*, i32 (...)** %16, align 8
  %18 = icmp ne i32 (...)* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %1
  %20 = load %struct.omapfb_device*, %struct.omapfb_device** %4, align 8
  %21 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (...)*, i32 (...)** %23, align 8
  %25 = call i32 (...) %24()
  br label %26

26:                                               ; preds = %19, %1
  %27 = load %struct.omapfb_device*, %struct.omapfb_device** %4, align 8
  %28 = call i32 @omapfb_rqueue_unlock(%struct.omapfb_device* %27)
  ret void
}

declare dso_local i32 @omapfb_rqueue_lock(%struct.omapfb_device*) #1

declare dso_local i32 @omapfb_rqueue_unlock(%struct.omapfb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
