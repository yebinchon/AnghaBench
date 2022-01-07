; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/hidp/extr_core.c_hidp_send_ctrl_message.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/hidp/extr_core.c_hidp_send_ctrl_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidp_session = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hidp_session*, i8, i8*, i32)* @hidp_send_ctrl_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hidp_send_ctrl_message(%struct.hidp_session* %0, i8 zeroext %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.hidp_session*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hidp_session* %0, %struct.hidp_session** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.hidp_session*, %struct.hidp_session** %5, align 8
  %11 = load i8, i8* %6, align 1
  %12 = load i8*, i8** %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @__hidp_send_ctrl_message(%struct.hidp_session* %10, i8 zeroext %11, i8* %12, i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load %struct.hidp_session*, %struct.hidp_session** %5, align 8
  %16 = call i32 @hidp_schedule(%struct.hidp_session* %15)
  %17 = load i32, i32* %9, align 4
  ret i32 %17
}

declare dso_local i32 @__hidp_send_ctrl_message(%struct.hidp_session*, i8 zeroext, i8*, i32) #1

declare dso_local i32 @hidp_schedule(%struct.hidp_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
