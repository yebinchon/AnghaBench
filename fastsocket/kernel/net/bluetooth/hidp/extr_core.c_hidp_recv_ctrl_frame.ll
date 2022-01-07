; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/hidp/extr_core.c_hidp_recv_ctrl_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/hidp/extr_core.c_hidp_recv_ctrl_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidp_session = type { i32 }
%struct.sk_buff = type { i8*, i32 }

@.str = private unnamed_addr constant [25 x i8] c"session %p skb %p len %d\00", align 1
@HIDP_HEADER_TRANS_MASK = common dso_local global i8 0, align 1
@HIDP_HEADER_PARAM_MASK = common dso_local global i8 0, align 1
@HIDP_HSHK_ERR_UNSUPPORTED_REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hidp_session*, %struct.sk_buff*)* @hidp_recv_ctrl_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hidp_recv_ctrl_frame(%struct.hidp_session* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hidp_session*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  store %struct.hidp_session* %0, %struct.hidp_session** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @BT_DBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.hidp_session* %8, %struct.sk_buff* %9, i32 %12)
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  store i8 %18, i8* %5, align 1
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = call i32 @skb_pull(%struct.sk_buff* %19, i32 1)
  %21 = load i8, i8* %5, align 1
  %22 = zext i8 %21 to i32
  %23 = load i8, i8* @HIDP_HEADER_TRANS_MASK, align 1
  %24 = zext i8 %23 to i32
  %25 = and i32 %22, %24
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %6, align 1
  %27 = load i8, i8* %5, align 1
  %28 = zext i8 %27 to i32
  %29 = load i8, i8* @HIDP_HEADER_PARAM_MASK, align 1
  %30 = zext i8 %29 to i32
  %31 = and i32 %28, %30
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %7, align 1
  %33 = load i8, i8* %6, align 1
  %34 = zext i8 %33 to i32
  switch i32 %34, label %48 [
    i32 129, label %35
    i32 128, label %39
    i32 130, label %43
  ]

35:                                               ; preds = %2
  %36 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %37 = load i8, i8* %7, align 1
  %38 = call i32 @hidp_process_handshake(%struct.hidp_session* %36, i8 zeroext %37)
  br label %53

39:                                               ; preds = %2
  %40 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %41 = load i8, i8* %7, align 1
  %42 = call i32 @hidp_process_hid_control(%struct.hidp_session* %40, i8 zeroext %41)
  br label %53

43:                                               ; preds = %2
  %44 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %46 = load i8, i8* %7, align 1
  %47 = call i32 @hidp_process_data(%struct.hidp_session* %44, %struct.sk_buff* %45, i8 zeroext %46)
  br label %53

48:                                               ; preds = %2
  %49 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %50 = load i32, i32* @HIDP_HSHK_ERR_UNSUPPORTED_REQUEST, align 4
  %51 = or i32 129, %50
  %52 = call i32 @__hidp_send_ctrl_message(%struct.hidp_session* %49, i32 %51, i32* null, i32 0)
  br label %53

53:                                               ; preds = %48, %43, %39, %35
  %54 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %55 = call i32 @kfree_skb(%struct.sk_buff* %54)
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.hidp_session*, %struct.sk_buff*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @hidp_process_handshake(%struct.hidp_session*, i8 zeroext) #1

declare dso_local i32 @hidp_process_hid_control(%struct.hidp_session*, i8 zeroext) #1

declare dso_local i32 @hidp_process_data(%struct.hidp_session*, %struct.sk_buff*, i8 zeroext) #1

declare dso_local i32 @__hidp_send_ctrl_message(%struct.hidp_session*, i32, i32*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
