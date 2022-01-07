; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_ie.c_uwb_rc_ie_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_ie.c_uwb_rc_ie_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rc = type { i32, i32, %struct.uwb_rc_cmd_set_ie* }
%struct.uwb_rc_cmd_set_ie = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.uwb_rc_evt_get_ie = type { i32 }

@UWB_RC_CET_GENERAL = common dso_local global i32 0, align 4
@UWB_RC_CMD_SET_IE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uwb_rc_ie_setup(%struct.uwb_rc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uwb_rc*, align 8
  %4 = alloca %struct.uwb_rc_evt_get_ie*, align 8
  %5 = alloca i32, align 4
  store %struct.uwb_rc* %0, %struct.uwb_rc** %3, align 8
  store %struct.uwb_rc_evt_get_ie* null, %struct.uwb_rc_evt_get_ie** %4, align 8
  %6 = load %struct.uwb_rc*, %struct.uwb_rc** %3, align 8
  %7 = call i32 @uwb_rc_get_ie(%struct.uwb_rc* %6, %struct.uwb_rc_evt_get_ie** %4)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %2, align 4
  br label %39

12:                                               ; preds = %1
  %13 = load %struct.uwb_rc*, %struct.uwb_rc** %3, align 8
  %14 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %13, i32 0, i32 1
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.uwb_rc_evt_get_ie*, %struct.uwb_rc_evt_get_ie** %4, align 8
  %17 = bitcast %struct.uwb_rc_evt_get_ie* %16 to %struct.uwb_rc_cmd_set_ie*
  %18 = load %struct.uwb_rc*, %struct.uwb_rc** %3, align 8
  %19 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %18, i32 0, i32 2
  store %struct.uwb_rc_cmd_set_ie* %17, %struct.uwb_rc_cmd_set_ie** %19, align 8
  %20 = load i32, i32* @UWB_RC_CET_GENERAL, align 4
  %21 = load %struct.uwb_rc*, %struct.uwb_rc** %3, align 8
  %22 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %21, i32 0, i32 2
  %23 = load %struct.uwb_rc_cmd_set_ie*, %struct.uwb_rc_cmd_set_ie** %22, align 8
  %24 = getelementptr inbounds %struct.uwb_rc_cmd_set_ie, %struct.uwb_rc_cmd_set_ie* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store i32 %20, i32* %25, align 4
  %26 = load i32, i32* @UWB_RC_CMD_SET_IE, align 4
  %27 = call i32 @cpu_to_le16(i32 %26)
  %28 = load %struct.uwb_rc*, %struct.uwb_rc** %3, align 8
  %29 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %28, i32 0, i32 2
  %30 = load %struct.uwb_rc_cmd_set_ie*, %struct.uwb_rc_cmd_set_ie** %29, align 8
  %31 = getelementptr inbounds %struct.uwb_rc_cmd_set_ie, %struct.uwb_rc_cmd_set_ie* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 %27, i32* %32, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.uwb_rc*, %struct.uwb_rc** %3, align 8
  %35 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.uwb_rc*, %struct.uwb_rc** %3, align 8
  %37 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %36, i32 0, i32 1
  %38 = call i32 @mutex_unlock(i32* %37)
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %12, %10
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @uwb_rc_get_ie(%struct.uwb_rc*, %struct.uwb_rc_evt_get_ie**) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
