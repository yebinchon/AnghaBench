; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_omapfb_main.c_omapfb_get_caps.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_omapfb_main.c_omapfb_get_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omapfb_device = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*)* }
%struct.TYPE_3__ = type { i32 (i32, %struct.omapfb_caps*)* }
%struct.omapfb_caps = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omapfb_device*, i32, %struct.omapfb_caps*)* @omapfb_get_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omapfb_get_caps(%struct.omapfb_device* %0, i32 %1, %struct.omapfb_caps* %2) #0 {
  %4 = alloca %struct.omapfb_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.omapfb_caps*, align 8
  store %struct.omapfb_device* %0, %struct.omapfb_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.omapfb_caps* %2, %struct.omapfb_caps** %6, align 8
  %7 = load %struct.omapfb_caps*, %struct.omapfb_caps** %6, align 8
  %8 = call i32 @memset(%struct.omapfb_caps* %7, i32 0, i32 4)
  %9 = load %struct.omapfb_device*, %struct.omapfb_device** %4, align 8
  %10 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32 (i32, %struct.omapfb_caps*)*, i32 (i32, %struct.omapfb_caps*)** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.omapfb_caps*, %struct.omapfb_caps** %6, align 8
  %16 = call i32 %13(i32 %14, %struct.omapfb_caps* %15)
  %17 = load %struct.omapfb_device*, %struct.omapfb_device** %4, align 8
  %18 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %20, align 8
  %22 = load %struct.omapfb_device*, %struct.omapfb_device** %4, align 8
  %23 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = call i32 %21(%struct.TYPE_4__* %24)
  %26 = load %struct.omapfb_caps*, %struct.omapfb_caps** %6, align 8
  %27 = getelementptr inbounds %struct.omapfb_caps, %struct.omapfb_caps* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  ret void
}

declare dso_local i32 @memset(%struct.omapfb_caps*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
