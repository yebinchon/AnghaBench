; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_event.c_hci_role_change_evt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_event.c_hci_role_change_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.sk_buff = type { i64 }
%struct.hci_ev_role_change = type { i64, i32, i32 }
%struct.hci_conn = type { i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"%s status %d\00", align 1
@ACL_LINK = common dso_local global i32 0, align 4
@HCI_LM_MASTER = common dso_local global i32 0, align 4
@HCI_CONN_RSWITCH_PEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, %struct.sk_buff*)* @hci_role_change_evt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_role_change_evt(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.hci_ev_role_change*, align 8
  %6 = alloca %struct.hci_conn*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to i8*
  %11 = bitcast i8* %10 to %struct.hci_ev_role_change*
  store %struct.hci_ev_role_change* %11, %struct.hci_ev_role_change** %5, align 8
  %12 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %13 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.hci_ev_role_change*, %struct.hci_ev_role_change** %5, align 8
  %16 = getelementptr inbounds %struct.hci_ev_role_change, %struct.hci_ev_role_change* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @BT_DBG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %17)
  %19 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %20 = call i32 @hci_dev_lock(%struct.hci_dev* %19)
  %21 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %22 = load i32, i32* @ACL_LINK, align 4
  %23 = load %struct.hci_ev_role_change*, %struct.hci_ev_role_change** %5, align 8
  %24 = getelementptr inbounds %struct.hci_ev_role_change, %struct.hci_ev_role_change* %23, i32 0, i32 2
  %25 = call %struct.hci_conn* @hci_conn_hash_lookup_ba(%struct.hci_dev* %21, i32 %22, i32* %24)
  store %struct.hci_conn* %25, %struct.hci_conn** %6, align 8
  %26 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %27 = icmp ne %struct.hci_conn* %26, null
  br i1 %27, label %28, label %65

28:                                               ; preds = %2
  %29 = load %struct.hci_ev_role_change*, %struct.hci_ev_role_change** %5, align 8
  %30 = getelementptr inbounds %struct.hci_ev_role_change, %struct.hci_ev_role_change* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %52, label %33

33:                                               ; preds = %28
  %34 = load %struct.hci_ev_role_change*, %struct.hci_ev_role_change** %5, align 8
  %35 = getelementptr inbounds %struct.hci_ev_role_change, %struct.hci_ev_role_change* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = load i32, i32* @HCI_LM_MASTER, align 4
  %40 = xor i32 %39, -1
  %41 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %42 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, %40
  store i32 %44, i32* %42, align 4
  br label %51

45:                                               ; preds = %33
  %46 = load i32, i32* @HCI_LM_MASTER, align 4
  %47 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %48 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %45, %38
  br label %52

52:                                               ; preds = %51, %28
  %53 = load i32, i32* @HCI_CONN_RSWITCH_PEND, align 4
  %54 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %55 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %54, i32 0, i32 0
  %56 = call i32 @clear_bit(i32 %53, i32* %55)
  %57 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %58 = load %struct.hci_ev_role_change*, %struct.hci_ev_role_change** %5, align 8
  %59 = getelementptr inbounds %struct.hci_ev_role_change, %struct.hci_ev_role_change* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.hci_ev_role_change*, %struct.hci_ev_role_change** %5, align 8
  %62 = getelementptr inbounds %struct.hci_ev_role_change, %struct.hci_ev_role_change* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @hci_role_switch_cfm(%struct.hci_conn* %57, i32 %60, i64 %63)
  br label %65

65:                                               ; preds = %52, %2
  %66 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %67 = call i32 @hci_dev_unlock(%struct.hci_dev* %66)
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local %struct.hci_conn* @hci_conn_hash_lookup_ba(%struct.hci_dev*, i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @hci_role_switch_cfm(%struct.hci_conn*, i32, i64) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
