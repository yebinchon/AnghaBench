; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_lc-rc.c___uwb_rc_try_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_lc-rc.c___uwb_rc_try_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rc = type { i32 }
%struct.device = type { i32 }

@uwb_rc_class = common dso_local global i32 0, align 4
@find_rc_try_get = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.uwb_rc* @__uwb_rc_try_get(%struct.uwb_rc* %0) #0 {
  %2 = alloca %struct.uwb_rc*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.uwb_rc*, align 8
  store %struct.uwb_rc* %0, %struct.uwb_rc** %2, align 8
  store %struct.uwb_rc* null, %struct.uwb_rc** %4, align 8
  %5 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %6 = load i32, i32* @find_rc_try_get, align 4
  %7 = call %struct.device* @class_find_device(i32* @uwb_rc_class, i32* null, %struct.uwb_rc* %5, i32 %6)
  store %struct.device* %7, %struct.device** %3, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = icmp ne %struct.device* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.device*, %struct.device** %3, align 8
  %12 = call %struct.uwb_rc* @dev_get_drvdata(%struct.device* %11)
  store %struct.uwb_rc* %12, %struct.uwb_rc** %4, align 8
  %13 = load %struct.uwb_rc*, %struct.uwb_rc** %4, align 8
  %14 = call i32 @__uwb_rc_get(%struct.uwb_rc* %13)
  br label %15

15:                                               ; preds = %10, %1
  %16 = load %struct.uwb_rc*, %struct.uwb_rc** %4, align 8
  ret %struct.uwb_rc* %16
}

declare dso_local %struct.device* @class_find_device(i32*, i32*, %struct.uwb_rc*, i32) #1

declare dso_local %struct.uwb_rc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @__uwb_rc_get(%struct.uwb_rc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
