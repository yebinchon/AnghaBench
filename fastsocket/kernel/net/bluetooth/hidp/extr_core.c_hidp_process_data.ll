; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/hidp/extr_core.c_hidp_process_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/hidp/extr_core.c_hidp_process_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidp_session = type { i32, i32 }
%struct.sk_buff = type { i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"session %p skb %p len %d param 0x%02x\00", align 1
@HID_INPUT_REPORT = common dso_local global i32 0, align 4
@HIDP_TRANS_HANDSHAKE = common dso_local global i32 0, align 4
@HIDP_HSHK_ERR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hidp_session*, %struct.sk_buff*, i8)* @hidp_process_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hidp_process_data(%struct.hidp_session* %0, %struct.sk_buff* %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.hidp_session*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i8, align 1
  store %struct.hidp_session* %0, %struct.hidp_session** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i8 %2, i8* %6, align 1
  %7 = load %struct.hidp_session*, %struct.hidp_session** %4, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i8, i8* %6, align 1
  %13 = call i32 @BT_DBG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), %struct.hidp_session* %7, %struct.sk_buff* %8, i32 %11, i8 zeroext %12)
  %14 = load i8, i8* %6, align 1
  %15 = zext i8 %14 to i32
  switch i32 %15, label %46 [
    i32 130, label %16
    i32 129, label %45
    i32 128, label %45
    i32 131, label %45
  ]

16:                                               ; preds = %3
  %17 = load %struct.hidp_session*, %struct.hidp_session** %4, align 8
  %18 = call i32 @hidp_set_timer(%struct.hidp_session* %17)
  %19 = load %struct.hidp_session*, %struct.hidp_session** %4, align 8
  %20 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load %struct.hidp_session*, %struct.hidp_session** %4, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = call i32 @hidp_input_report(%struct.hidp_session* %24, %struct.sk_buff* %25)
  br label %27

27:                                               ; preds = %23, %16
  %28 = load %struct.hidp_session*, %struct.hidp_session** %4, align 8
  %29 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %27
  %33 = load %struct.hidp_session*, %struct.hidp_session** %4, align 8
  %34 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @HID_INPUT_REPORT, align 4
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @hid_input_report(i32 %35, i32 %36, i32 %39, i32 %42, i32 0)
  br label %44

44:                                               ; preds = %32, %27
  br label %52

45:                                               ; preds = %3, %3, %3
  br label %52

46:                                               ; preds = %3
  %47 = load %struct.hidp_session*, %struct.hidp_session** %4, align 8
  %48 = load i32, i32* @HIDP_TRANS_HANDSHAKE, align 4
  %49 = load i32, i32* @HIDP_HSHK_ERR_INVALID_PARAMETER, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @__hidp_send_ctrl_message(%struct.hidp_session* %47, i32 %50, i32* null, i32 0)
  br label %52

52:                                               ; preds = %46, %45, %44
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.hidp_session*, %struct.sk_buff*, i32, i8 zeroext) #1

declare dso_local i32 @hidp_set_timer(%struct.hidp_session*) #1

declare dso_local i32 @hidp_input_report(%struct.hidp_session*, %struct.sk_buff*) #1

declare dso_local i32 @hid_input_report(i32, i32, i32, i32, i32) #1

declare dso_local i32 @__hidp_send_ctrl_message(%struct.hidp_session*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
