; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_lc-rc.c_uwb_rc_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_lc-rc.c_uwb_rc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rc = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, i32, %struct.uwb_dev }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.uwb_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32* }

@uwb_rc_class = common dso_local global i32 0, align 4
@uwb_rc_sys_release = common dso_local global i32 0, align 4
@UWB_SCAN_DISABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uwb_rc_init(%struct.uwb_rc* %0) #0 {
  %2 = alloca %struct.uwb_rc*, align 8
  %3 = alloca %struct.uwb_dev*, align 8
  store %struct.uwb_rc* %0, %struct.uwb_rc** %2, align 8
  %4 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %5 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %4, i32 0, i32 4
  store %struct.uwb_dev* %5, %struct.uwb_dev** %3, align 8
  %6 = load %struct.uwb_dev*, %struct.uwb_dev** %3, align 8
  %7 = call i32 @uwb_dev_init(%struct.uwb_dev* %6)
  %8 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %9 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %8, i32 0, i32 4
  %10 = getelementptr inbounds %struct.uwb_dev, %struct.uwb_dev* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  store i32* @uwb_rc_class, i32** %11, align 8
  %12 = load i32, i32* @uwb_rc_sys_release, align 4
  %13 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %14 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.uwb_dev, %struct.uwb_dev* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store i32 %12, i32* %16, align 8
  %17 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %18 = call i32 @uwb_rc_neh_create(%struct.uwb_rc* %17)
  %19 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %20 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %19, i32 0, i32 0
  store i32 -1, i32* %20, align 8
  %21 = load i32, i32* @UWB_SCAN_DISABLED, align 4
  %22 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %23 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 4
  %24 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %25 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = call i32 @INIT_LIST_HEAD(i32* %26)
  %28 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %29 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = call i32 @mutex_init(i32* %30)
  %32 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %33 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = call i32 @INIT_LIST_HEAD(i32* %34)
  %36 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %37 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = call i32 @mutex_init(i32* %38)
  %40 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %41 = call i32 @uwb_drp_avail_init(%struct.uwb_rc* %40)
  %42 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %43 = call i32 @uwb_rc_ie_init(%struct.uwb_rc* %42)
  %44 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %45 = call i32 @uwb_rsv_init(%struct.uwb_rc* %44)
  %46 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %47 = call i32 @uwb_rc_pal_init(%struct.uwb_rc* %46)
  ret void
}

declare dso_local i32 @uwb_dev_init(%struct.uwb_dev*) #1

declare dso_local i32 @uwb_rc_neh_create(%struct.uwb_rc*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @uwb_drp_avail_init(%struct.uwb_rc*) #1

declare dso_local i32 @uwb_rc_ie_init(%struct.uwb_rc*) #1

declare dso_local i32 @uwb_rsv_init(%struct.uwb_rc*) #1

declare dso_local i32 @uwb_rc_pal_init(%struct.uwb_rc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
