; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/hidp/extr_core.c_hidp_process_hid_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/hidp/extr_core.c_hidp_process_hid_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidp_session = type { i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"session %p param 0x%02x\00", align 1
@HIDP_CTRL_VIRTUAL_CABLE_UNPLUG = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hidp_session*, i8)* @hidp_process_hid_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hidp_process_hid_control(%struct.hidp_session* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.hidp_session*, align 8
  %4 = alloca i8, align 1
  store %struct.hidp_session* %0, %struct.hidp_session** %3, align 8
  store i8 %1, i8* %4, align 1
  %5 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %6 = load i8, i8* %4, align 1
  %7 = call i32 @BT_DBG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.hidp_session* %5, i8 zeroext %6)
  %8 = load i8, i8* %4, align 1
  %9 = zext i8 %8 to i32
  %10 = load i8, i8* @HIDP_CTRL_VIRTUAL_CABLE_UNPLUG, align 1
  %11 = zext i8 %10 to i32
  %12 = icmp eq i32 %9, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %2
  %14 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %15 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %14, i32 0, i32 2
  %16 = call i32 @skb_queue_purge(i32* %15)
  %17 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %18 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %17, i32 0, i32 1
  %19 = call i32 @skb_queue_purge(i32* %18)
  %20 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %21 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %20, i32 0, i32 0
  %22 = call i32 @atomic_inc(i32* %21)
  %23 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %24 = call i32 @hidp_schedule(%struct.hidp_session* %23)
  br label %25

25:                                               ; preds = %13, %2
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.hidp_session*, i8 zeroext) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @hidp_schedule(%struct.hidp_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
