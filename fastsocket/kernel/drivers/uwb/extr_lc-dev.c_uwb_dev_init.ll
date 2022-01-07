; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_lc-dev.c_uwb_dev_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_lc-dev.c_uwb_dev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_dev = type { i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@uwb_dev_sys_release = common dso_local global i32 0, align 4
@UWB_NUM_GLOBAL_STREAMS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uwb_dev_init(%struct.uwb_dev* %0) #0 {
  %2 = alloca %struct.uwb_dev*, align 8
  store %struct.uwb_dev* %0, %struct.uwb_dev** %2, align 8
  %3 = load %struct.uwb_dev*, %struct.uwb_dev** %2, align 8
  %4 = getelementptr inbounds %struct.uwb_dev, %struct.uwb_dev* %3, i32 0, i32 4
  %5 = call i32 @mutex_init(i32* %4)
  %6 = load %struct.uwb_dev*, %struct.uwb_dev** %2, align 8
  %7 = getelementptr inbounds %struct.uwb_dev, %struct.uwb_dev* %6, i32 0, i32 3
  %8 = call i32 @device_initialize(%struct.TYPE_2__* %7)
  %9 = load i32, i32* @uwb_dev_sys_release, align 4
  %10 = load %struct.uwb_dev*, %struct.uwb_dev** %2, align 8
  %11 = getelementptr inbounds %struct.uwb_dev, %struct.uwb_dev* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i32 %9, i32* %12, align 4
  %13 = load %struct.uwb_dev*, %struct.uwb_dev** %2, align 8
  %14 = getelementptr inbounds %struct.uwb_dev, %struct.uwb_dev* %13, i32 0, i32 2
  %15 = call i32 @uwb_dev_addr_init(i32* %14)
  %16 = load %struct.uwb_dev*, %struct.uwb_dev** %2, align 8
  %17 = getelementptr inbounds %struct.uwb_dev, %struct.uwb_dev* %16, i32 0, i32 1
  %18 = call i32 @uwb_mac_addr_init(i32* %17)
  %19 = load %struct.uwb_dev*, %struct.uwb_dev** %2, align 8
  %20 = getelementptr inbounds %struct.uwb_dev, %struct.uwb_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @UWB_NUM_GLOBAL_STREAMS, align 4
  %23 = call i32 @bitmap_fill(i32 %21, i32 %22)
  ret void
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @device_initialize(%struct.TYPE_2__*) #1

declare dso_local i32 @uwb_dev_addr_init(i32*) #1

declare dso_local i32 @uwb_mac_addr_init(i32*) #1

declare dso_local i32 @bitmap_fill(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
