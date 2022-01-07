; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/hidp/extr_core.c_hidp_recv_intr_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/hidp/extr_core.c_hidp_recv_intr_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidp_session = type { i64, i64 }
%struct.sk_buff = type { i8, i8* }

@.str = private unnamed_addr constant [25 x i8] c"session %p skb %p len %d\00", align 1
@HIDP_TRANS_DATA = common dso_local global i8 0, align 1
@HIDP_DATA_RTYPE_INPUT = common dso_local global i8 0, align 1
@HID_INPUT_REPORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"report len %d\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Unsupported protocol header 0x%02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hidp_session*, %struct.sk_buff*)* @hidp_recv_intr_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hidp_recv_intr_frame(%struct.hidp_session* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hidp_session*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i8, align 1
  store %struct.hidp_session* %0, %struct.hidp_session** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 0
  %10 = load i8, i8* %9, align 8
  %11 = zext i8 %10 to i32
  %12 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.hidp_session* %6, %struct.sk_buff* %7, i32 %11)
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  store i8 %17, i8* %5, align 1
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = call i32 @skb_pull(%struct.sk_buff* %18, i32 1)
  %20 = load i8, i8* %5, align 1
  %21 = zext i8 %20 to i32
  %22 = load i8, i8* @HIDP_TRANS_DATA, align 1
  %23 = zext i8 %22 to i32
  %24 = load i8, i8* @HIDP_DATA_RTYPE_INPUT, align 1
  %25 = zext i8 %24 to i32
  %26 = or i32 %23, %25
  %27 = icmp eq i32 %21, %26
  br i1 %27, label %28, label %62

28:                                               ; preds = %2
  %29 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %30 = call i32 @hidp_set_timer(%struct.hidp_session* %29)
  %31 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %32 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = call i32 @hidp_input_report(%struct.hidp_session* %36, %struct.sk_buff* %37)
  br label %39

39:                                               ; preds = %35, %28
  %40 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %41 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %61

44:                                               ; preds = %39
  %45 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %46 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* @HID_INPUT_REPORT, align 4
  %49 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %50 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 0
  %54 = load i8, i8* %53, align 8
  %55 = call i32 @hid_input_report(i64 %47, i32 %48, i8* %51, i8 zeroext %54, i32 1)
  %56 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 0
  %58 = load i8, i8* %57, align 8
  %59 = zext i8 %58 to i32
  %60 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %44, %39
  br label %66

62:                                               ; preds = %2
  %63 = load i8, i8* %5, align 1
  %64 = zext i8 %63 to i32
  %65 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %62, %61
  %67 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %68 = call i32 @kfree_skb(%struct.sk_buff* %67)
  ret void
}

declare dso_local i32 @BT_DBG(i8*, ...) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @hidp_set_timer(%struct.hidp_session*) #1

declare dso_local i32 @hidp_input_report(%struct.hidp_session*, %struct.sk_buff*) #1

declare dso_local i32 @hid_input_report(i64, i32, i8*, i8 zeroext, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
