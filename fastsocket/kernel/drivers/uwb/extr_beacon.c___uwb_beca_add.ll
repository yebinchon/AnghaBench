; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_beacon.c___uwb_beca_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_beacon.c___uwb_beca_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_beca_e = type { i64, i32, i32* }
%struct.uwb_rc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.uwb_rc_evt_beacon = type { i32 }
%struct.uwb_beacon_frame = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.uwb_beca_e* (%struct.uwb_rc*, %struct.uwb_rc_evt_beacon*, %struct.uwb_beacon_frame*, i64)* @__uwb_beca_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.uwb_beca_e* @__uwb_beca_add(%struct.uwb_rc* %0, %struct.uwb_rc_evt_beacon* %1, %struct.uwb_beacon_frame* %2, i64 %3) #0 {
  %5 = alloca %struct.uwb_beca_e*, align 8
  %6 = alloca %struct.uwb_rc*, align 8
  %7 = alloca %struct.uwb_rc_evt_beacon*, align 8
  %8 = alloca %struct.uwb_beacon_frame*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.uwb_beca_e*, align 8
  store %struct.uwb_rc* %0, %struct.uwb_rc** %6, align 8
  store %struct.uwb_rc_evt_beacon* %1, %struct.uwb_rc_evt_beacon** %7, align 8
  store %struct.uwb_beacon_frame* %2, %struct.uwb_beacon_frame** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.uwb_beca_e* @kzalloc(i32 24, i32 %11)
  store %struct.uwb_beca_e* %12, %struct.uwb_beca_e** %10, align 8
  %13 = load %struct.uwb_beca_e*, %struct.uwb_beca_e** %10, align 8
  %14 = icmp eq %struct.uwb_beca_e* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store %struct.uwb_beca_e* null, %struct.uwb_beca_e** %5, align 8
  br label %31

16:                                               ; preds = %4
  %17 = load %struct.uwb_beca_e*, %struct.uwb_beca_e** %10, align 8
  %18 = call i32 @uwb_beca_e_init(%struct.uwb_beca_e* %17)
  %19 = load i64, i64* %9, align 8
  %20 = load %struct.uwb_beca_e*, %struct.uwb_beca_e** %10, align 8
  %21 = getelementptr inbounds %struct.uwb_beca_e, %struct.uwb_beca_e* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load %struct.uwb_beca_e*, %struct.uwb_beca_e** %10, align 8
  %23 = getelementptr inbounds %struct.uwb_beca_e, %struct.uwb_beca_e* %22, i32 0, i32 2
  store i32* null, i32** %23, align 8
  %24 = load %struct.uwb_beca_e*, %struct.uwb_beca_e** %10, align 8
  %25 = getelementptr inbounds %struct.uwb_beca_e, %struct.uwb_beca_e* %24, i32 0, i32 1
  %26 = load %struct.uwb_rc*, %struct.uwb_rc** %6, align 8
  %27 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = call i32 @list_add(i32* %25, i32* %28)
  %30 = load %struct.uwb_beca_e*, %struct.uwb_beca_e** %10, align 8
  store %struct.uwb_beca_e* %30, %struct.uwb_beca_e** %5, align 8
  br label %31

31:                                               ; preds = %16, %15
  %32 = load %struct.uwb_beca_e*, %struct.uwb_beca_e** %5, align 8
  ret %struct.uwb_beca_e* %32
}

declare dso_local %struct.uwb_beca_e* @kzalloc(i32, i32) #1

declare dso_local i32 @uwb_beca_e_init(%struct.uwb_beca_e*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
