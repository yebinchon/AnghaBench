; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_event.c_hci_mode_change_evt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_event.c_hci_mode_change_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.sk_buff = type { i64 }
%struct.hci_ev_mode_change = type { i64, i32, i32, i32 }
%struct.hci_conn = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"%s status %d\00", align 1
@HCI_CONN_MODE_CHANGE_PEND = common dso_local global i32 0, align 4
@HCI_CM_ACTIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, %struct.sk_buff*)* @hci_mode_change_evt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_mode_change_evt(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.hci_ev_mode_change*, align 8
  %6 = alloca %struct.hci_conn*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to i8*
  %11 = bitcast i8* %10 to %struct.hci_ev_mode_change*
  store %struct.hci_ev_mode_change* %11, %struct.hci_ev_mode_change** %5, align 8
  %12 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %13 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.hci_ev_mode_change*, %struct.hci_ev_mode_change** %5, align 8
  %16 = getelementptr inbounds %struct.hci_ev_mode_change, %struct.hci_ev_mode_change* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @BT_DBG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %17)
  %19 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %20 = call i32 @hci_dev_lock(%struct.hci_dev* %19)
  %21 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %22 = load %struct.hci_ev_mode_change*, %struct.hci_ev_mode_change** %5, align 8
  %23 = getelementptr inbounds %struct.hci_ev_mode_change, %struct.hci_ev_mode_change* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @__le16_to_cpu(i32 %24)
  %26 = call %struct.hci_conn* @hci_conn_hash_lookup_handle(%struct.hci_dev* %21, i32 %25)
  store %struct.hci_conn* %26, %struct.hci_conn** %6, align 8
  %27 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %28 = icmp ne %struct.hci_conn* %27, null
  br i1 %28, label %29, label %60

29:                                               ; preds = %2
  %30 = load %struct.hci_ev_mode_change*, %struct.hci_ev_mode_change** %5, align 8
  %31 = getelementptr inbounds %struct.hci_ev_mode_change, %struct.hci_ev_mode_change* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %34 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.hci_ev_mode_change*, %struct.hci_ev_mode_change** %5, align 8
  %36 = getelementptr inbounds %struct.hci_ev_mode_change, %struct.hci_ev_mode_change* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @__le16_to_cpu(i32 %37)
  %39 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %40 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* @HCI_CONN_MODE_CHANGE_PEND, align 4
  %42 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %43 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %42, i32 0, i32 2
  %44 = call i32 @test_and_clear_bit(i32 %41, i32* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %59, label %46

46:                                               ; preds = %29
  %47 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %48 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @HCI_CM_ACTIVE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %54 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %53, i32 0, i32 1
  store i32 1, i32* %54, align 8
  br label %58

55:                                               ; preds = %46
  %56 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %57 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %56, i32 0, i32 1
  store i32 0, i32* %57, align 8
  br label %58

58:                                               ; preds = %55, %52
  br label %59

59:                                               ; preds = %58, %29
  br label %60

60:                                               ; preds = %59, %2
  %61 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %62 = call i32 @hci_dev_unlock(%struct.hci_dev* %61)
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local %struct.hci_conn* @hci_conn_hash_lookup_handle(%struct.hci_dev*, i32) #1

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
