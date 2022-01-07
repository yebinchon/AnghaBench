; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_event.c_hci_si_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_event.c_hci_si_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.hci_event_hdr = type { i32, i32 }
%struct.hci_ev_stack_internal = type { i32, i32 }
%struct.sk_buff = type { i8* }
%struct.TYPE_2__ = type { i32, i32 }

@HCI_EVENT_HDR_SIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@HCI_EV_STACK_INTERNAL = common dso_local global i32 0, align 4
@HCI_EVENT_PKT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hci_si_event(%struct.hci_dev* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.hci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.hci_event_hdr*, align 8
  %10 = alloca %struct.hci_ev_stack_internal*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %12 = load i32, i32* @HCI_EVENT_HDR_SIZE, align 4
  %13 = sext i32 %12 to i64
  %14 = add i64 %13, 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = add i64 %14, %16
  %18 = trunc i64 %17 to i32
  %19 = load i32, i32* @GFP_ATOMIC, align 4
  %20 = call %struct.sk_buff* @bt_skb_alloc(i32 %18, i32 %19)
  store %struct.sk_buff* %20, %struct.sk_buff** %11, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %22 = icmp ne %struct.sk_buff* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %4
  br label %74

24:                                               ; preds = %4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %26 = load i32, i32* @HCI_EVENT_HDR_SIZE, align 4
  %27 = call i64 @skb_put(%struct.sk_buff* %25, i32 %26)
  %28 = inttoptr i64 %27 to i8*
  %29 = bitcast i8* %28 to %struct.hci_event_hdr*
  store %struct.hci_event_hdr* %29, %struct.hci_event_hdr** %9, align 8
  %30 = load i32, i32* @HCI_EV_STACK_INTERNAL, align 4
  %31 = load %struct.hci_event_hdr*, %struct.hci_event_hdr** %9, align 8
  %32 = getelementptr inbounds %struct.hci_event_hdr, %struct.hci_event_hdr* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = add i64 8, %34
  %36 = trunc i64 %35 to i32
  %37 = load %struct.hci_event_hdr*, %struct.hci_event_hdr** %9, align 8
  %38 = getelementptr inbounds %struct.hci_event_hdr, %struct.hci_event_hdr* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = add i64 8, %41
  %43 = trunc i64 %42 to i32
  %44 = call i64 @skb_put(%struct.sk_buff* %39, i32 %43)
  %45 = inttoptr i64 %44 to i8*
  %46 = bitcast i8* %45 to %struct.hci_ev_stack_internal*
  store %struct.hci_ev_stack_internal* %46, %struct.hci_ev_stack_internal** %10, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.hci_ev_stack_internal*, %struct.hci_ev_stack_internal** %10, align 8
  %49 = getelementptr inbounds %struct.hci_ev_stack_internal, %struct.hci_ev_stack_internal* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.hci_ev_stack_internal*, %struct.hci_ev_stack_internal** %10, align 8
  %51 = getelementptr inbounds %struct.hci_ev_stack_internal, %struct.hci_ev_stack_internal* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i8*, i8** %8, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @memcpy(i32 %52, i8* %53, i32 %54)
  %56 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %57 = call %struct.TYPE_2__* @bt_cb(%struct.sk_buff* %56)
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i32 1, i32* %58, align 4
  %59 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %60 = call i32 @__net_timestamp(%struct.sk_buff* %59)
  %61 = load i32, i32* @HCI_EVENT_PKT, align 4
  %62 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %63 = call %struct.TYPE_2__* @bt_cb(%struct.sk_buff* %62)
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  store i32 %61, i32* %64, align 4
  %65 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %66 = bitcast %struct.hci_dev* %65 to i8*
  %67 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %68 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %67, i32 0, i32 0
  store i8* %66, i8** %68, align 8
  %69 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %71 = call i32 @hci_send_to_sock(%struct.hci_dev* %69, %struct.sk_buff* %70)
  %72 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %73 = call i32 @kfree_skb(%struct.sk_buff* %72)
  br label %74

74:                                               ; preds = %24, %23
  ret void
}

declare dso_local %struct.sk_buff* @bt_skb_alloc(i32, i32) #1

declare dso_local i64 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local %struct.TYPE_2__* @bt_cb(%struct.sk_buff*) #1

declare dso_local i32 @__net_timestamp(%struct.sk_buff*) #1

declare dso_local i32 @hci_send_to_sock(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
