; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_event.c_hci_link_key_notify_evt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_event.c_hci_link_key_notify_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.sk_buff = type { i64 }
%struct.hci_ev_link_key_notify = type { i32 }
%struct.hci_conn = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ACL_LINK = common dso_local global i32 0, align 4
@HCI_DISCONN_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, %struct.sk_buff*)* @hci_link_key_notify_evt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_link_key_notify_evt(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.hci_ev_link_key_notify*, align 8
  %6 = alloca %struct.hci_conn*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to i8*
  %11 = bitcast i8* %10 to %struct.hci_ev_link_key_notify*
  store %struct.hci_ev_link_key_notify* %11, %struct.hci_ev_link_key_notify** %5, align 8
  %12 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %13 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @BT_DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %17 = call i32 @hci_dev_lock(%struct.hci_dev* %16)
  %18 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %19 = load i32, i32* @ACL_LINK, align 4
  %20 = load %struct.hci_ev_link_key_notify*, %struct.hci_ev_link_key_notify** %5, align 8
  %21 = getelementptr inbounds %struct.hci_ev_link_key_notify, %struct.hci_ev_link_key_notify* %20, i32 0, i32 0
  %22 = call %struct.hci_conn* @hci_conn_hash_lookup_ba(%struct.hci_dev* %18, i32 %19, i32* %21)
  store %struct.hci_conn* %22, %struct.hci_conn** %6, align 8
  %23 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %24 = icmp ne %struct.hci_conn* %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %2
  %26 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %27 = call i32 @hci_conn_hold(%struct.hci_conn* %26)
  %28 = load i32, i32* @HCI_DISCONN_TIMEOUT, align 4
  %29 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %30 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %32 = call i32 @hci_conn_put(%struct.hci_conn* %31)
  br label %33

33:                                               ; preds = %25, %2
  %34 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %35 = call i32 @hci_dev_unlock(%struct.hci_dev* %34)
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local %struct.hci_conn* @hci_conn_hash_lookup_ba(%struct.hci_dev*, i32, i32*) #1

declare dso_local i32 @hci_conn_hold(%struct.hci_conn*) #1

declare dso_local i32 @hci_conn_put(%struct.hci_conn*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
