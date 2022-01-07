; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_event.c_hci_remote_features_evt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_event.c_hci_remote_features_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i64, i32, i32 }
%struct.sk_buff = type { i64 }
%struct.hci_ev_remote_features = type { i32, i32, i32 }
%struct.hci_conn = type { i64, i32, i32 }
%struct.hci_cp_read_remote_ext_features = type { i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"%s status %d\00", align 1
@BT_CONFIG = common dso_local global i64 0, align 8
@HCI_OP_READ_REMOTE_EXT_FEATURES = common dso_local global i32 0, align 4
@BT_CONNECTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, %struct.sk_buff*)* @hci_remote_features_evt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_remote_features_evt(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.hci_ev_remote_features*, align 8
  %6 = alloca %struct.hci_conn*, align 8
  %7 = alloca %struct.hci_cp_read_remote_ext_features, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = bitcast i8* %11 to %struct.hci_ev_remote_features*
  store %struct.hci_ev_remote_features* %12, %struct.hci_ev_remote_features** %5, align 8
  %13 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %14 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.hci_ev_remote_features*, %struct.hci_ev_remote_features** %5, align 8
  %17 = getelementptr inbounds %struct.hci_ev_remote_features, %struct.hci_ev_remote_features* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @BT_DBG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18)
  %20 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %21 = call i32 @hci_dev_lock(%struct.hci_dev* %20)
  %22 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %23 = load %struct.hci_ev_remote_features*, %struct.hci_ev_remote_features** %5, align 8
  %24 = getelementptr inbounds %struct.hci_ev_remote_features, %struct.hci_ev_remote_features* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @__le16_to_cpu(i32 %25)
  %27 = call %struct.hci_dev* @hci_conn_hash_lookup_handle(%struct.hci_dev* %22, i32 %26)
  %28 = bitcast %struct.hci_dev* %27 to %struct.hci_conn*
  store %struct.hci_conn* %28, %struct.hci_conn** %6, align 8
  %29 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %30 = icmp ne %struct.hci_conn* %29, null
  br i1 %30, label %31, label %88

31:                                               ; preds = %2
  %32 = load %struct.hci_ev_remote_features*, %struct.hci_ev_remote_features** %5, align 8
  %33 = getelementptr inbounds %struct.hci_ev_remote_features, %struct.hci_ev_remote_features* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %31
  %37 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %38 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.hci_ev_remote_features*, %struct.hci_ev_remote_features** %5, align 8
  %41 = getelementptr inbounds %struct.hci_ev_remote_features, %struct.hci_ev_remote_features* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @memcpy(i32 %39, i32 %42, i32 8)
  br label %44

44:                                               ; preds = %36, %31
  %45 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %46 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @BT_CONFIG, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %87

50:                                               ; preds = %44
  %51 = load %struct.hci_ev_remote_features*, %struct.hci_ev_remote_features** %5, align 8
  %52 = getelementptr inbounds %struct.hci_ev_remote_features, %struct.hci_ev_remote_features* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %73, label %55

55:                                               ; preds = %50
  %56 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %57 = call i64 @lmp_ssp_capable(%struct.hci_dev* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %55
  %60 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %61 = bitcast %struct.hci_conn* %60 to %struct.hci_dev*
  %62 = call i64 @lmp_ssp_capable(%struct.hci_dev* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %59
  %65 = load %struct.hci_ev_remote_features*, %struct.hci_ev_remote_features** %5, align 8
  %66 = getelementptr inbounds %struct.hci_ev_remote_features, %struct.hci_ev_remote_features* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.hci_cp_read_remote_ext_features, %struct.hci_cp_read_remote_ext_features* %7, i32 0, i32 1
  store i32 %67, i32* %68, align 4
  %69 = getelementptr inbounds %struct.hci_cp_read_remote_ext_features, %struct.hci_cp_read_remote_ext_features* %7, i32 0, i32 0
  store i32 1, i32* %69, align 4
  %70 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %71 = load i32, i32* @HCI_OP_READ_REMOTE_EXT_FEATURES, align 4
  %72 = call i32 @hci_send_cmd(%struct.hci_dev* %70, i32 %71, i32 8, %struct.hci_cp_read_remote_ext_features* %7)
  br label %86

73:                                               ; preds = %59, %55, %50
  %74 = load i64, i64* @BT_CONNECTED, align 8
  %75 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %76 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  %77 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %78 = bitcast %struct.hci_conn* %77 to %struct.hci_dev*
  %79 = load %struct.hci_ev_remote_features*, %struct.hci_ev_remote_features** %5, align 8
  %80 = getelementptr inbounds %struct.hci_ev_remote_features, %struct.hci_ev_remote_features* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @hci_proto_connect_cfm(%struct.hci_dev* %78, i32 %81)
  %83 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %84 = bitcast %struct.hci_conn* %83 to %struct.hci_dev*
  %85 = call i32 @hci_conn_put(%struct.hci_dev* %84)
  br label %86

86:                                               ; preds = %73, %64
  br label %87

87:                                               ; preds = %86, %44
  br label %88

88:                                               ; preds = %87, %2
  %89 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %90 = call i32 @hci_dev_unlock(%struct.hci_dev* %89)
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local %struct.hci_dev* @hci_conn_hash_lookup_handle(%struct.hci_dev*, i32) #1

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i64 @lmp_ssp_capable(%struct.hci_dev*) #1

declare dso_local i32 @hci_send_cmd(%struct.hci_dev*, i32, i32, %struct.hci_cp_read_remote_ext_features*) #1

declare dso_local i32 @hci_proto_connect_cfm(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_conn_put(%struct.hci_dev*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
