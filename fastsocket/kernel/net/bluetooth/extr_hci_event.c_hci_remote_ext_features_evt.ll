; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_event.c_hci_remote_ext_features_evt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_event.c_hci_remote_ext_features_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i64, i32 }
%struct.sk_buff = type { i64 }
%struct.hci_ev_remote_ext_features = type { i32, i32*, i32, i32 }
%struct.hci_conn = type { i32, i64, i64, i64, i32 }
%struct.inquiry_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.hci_cp_auth_requested = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@BT_CONFIG = common dso_local global i64 0, align 8
@BT_SECURITY_SDP = common dso_local global i64 0, align 8
@HCI_OP_AUTH_REQUESTED = common dso_local global i32 0, align 4
@BT_CONNECTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, %struct.sk_buff*)* @hci_remote_ext_features_evt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_remote_ext_features_evt(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.hci_ev_remote_ext_features*, align 8
  %6 = alloca %struct.hci_conn*, align 8
  %7 = alloca %struct.inquiry_entry*, align 8
  %8 = alloca %struct.hci_cp_auth_requested, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = bitcast i8* %12 to %struct.hci_ev_remote_ext_features*
  store %struct.hci_ev_remote_ext_features* %13, %struct.hci_ev_remote_ext_features** %5, align 8
  %14 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %15 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @BT_DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %19 = call i32 @hci_dev_lock(%struct.hci_dev* %18)
  %20 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %21 = load %struct.hci_ev_remote_ext_features*, %struct.hci_ev_remote_ext_features** %5, align 8
  %22 = getelementptr inbounds %struct.hci_ev_remote_ext_features, %struct.hci_ev_remote_ext_features* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @__le16_to_cpu(i32 %23)
  %25 = call %struct.hci_conn* @hci_conn_hash_lookup_handle(%struct.hci_dev* %20, i32 %24)
  store %struct.hci_conn* %25, %struct.hci_conn** %6, align 8
  %26 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %27 = icmp ne %struct.hci_conn* %26, null
  br i1 %27, label %28, label %116

28:                                               ; preds = %2
  %29 = load %struct.hci_ev_remote_ext_features*, %struct.hci_ev_remote_ext_features** %5, align 8
  %30 = getelementptr inbounds %struct.hci_ev_remote_ext_features, %struct.hci_ev_remote_ext_features* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %63, label %33

33:                                               ; preds = %28
  %34 = load %struct.hci_ev_remote_ext_features*, %struct.hci_ev_remote_ext_features** %5, align 8
  %35 = getelementptr inbounds %struct.hci_ev_remote_ext_features, %struct.hci_ev_remote_ext_features* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %63

38:                                               ; preds = %33
  %39 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %40 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %41 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %40, i32 0, i32 4
  %42 = call %struct.inquiry_entry* @hci_inquiry_cache_lookup(%struct.hci_dev* %39, i32* %41)
  store %struct.inquiry_entry* %42, %struct.inquiry_entry** %7, align 8
  %43 = icmp ne %struct.inquiry_entry* %42, null
  br i1 %43, label %44, label %54

44:                                               ; preds = %38
  %45 = load %struct.hci_ev_remote_ext_features*, %struct.hci_ev_remote_ext_features** %5, align 8
  %46 = getelementptr inbounds %struct.hci_ev_remote_ext_features, %struct.hci_ev_remote_ext_features* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 1
  %51 = load %struct.inquiry_entry*, %struct.inquiry_entry** %7, align 8
  %52 = getelementptr inbounds %struct.inquiry_entry, %struct.inquiry_entry* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 4
  br label %54

54:                                               ; preds = %44, %38
  %55 = load %struct.hci_ev_remote_ext_features*, %struct.hci_ev_remote_ext_features** %5, align 8
  %56 = getelementptr inbounds %struct.hci_ev_remote_ext_features, %struct.hci_ev_remote_ext_features* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 1
  %61 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %62 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  br label %63

63:                                               ; preds = %54, %33, %28
  %64 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %65 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @BT_CONFIG, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %115

69:                                               ; preds = %63
  %70 = load %struct.hci_ev_remote_ext_features*, %struct.hci_ev_remote_ext_features** %5, align 8
  %71 = getelementptr inbounds %struct.hci_ev_remote_ext_features, %struct.hci_ev_remote_ext_features* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %103, label %74

74:                                               ; preds = %69
  %75 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %76 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp sgt i64 %77, 0
  br i1 %78, label %79, label %103

79:                                               ; preds = %74
  %80 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %81 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %103

84:                                               ; preds = %79
  %85 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %86 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %103

89:                                               ; preds = %84
  %90 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %91 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @BT_SECURITY_SDP, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %103

95:                                               ; preds = %89
  %96 = load %struct.hci_ev_remote_ext_features*, %struct.hci_ev_remote_ext_features** %5, align 8
  %97 = getelementptr inbounds %struct.hci_ev_remote_ext_features, %struct.hci_ev_remote_ext_features* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds %struct.hci_cp_auth_requested, %struct.hci_cp_auth_requested* %8, i32 0, i32 0
  store i32 %98, i32* %99, align 4
  %100 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %101 = load i32, i32* @HCI_OP_AUTH_REQUESTED, align 4
  %102 = call i32 @hci_send_cmd(%struct.hci_dev* %100, i32 %101, i32 4, %struct.hci_cp_auth_requested* %8)
  br label %114

103:                                              ; preds = %89, %84, %79, %74, %69
  %104 = load i64, i64* @BT_CONNECTED, align 8
  %105 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %106 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %105, i32 0, i32 1
  store i64 %104, i64* %106, align 8
  %107 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %108 = load %struct.hci_ev_remote_ext_features*, %struct.hci_ev_remote_ext_features** %5, align 8
  %109 = getelementptr inbounds %struct.hci_ev_remote_ext_features, %struct.hci_ev_remote_ext_features* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @hci_proto_connect_cfm(%struct.hci_conn* %107, i32 %110)
  %112 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %113 = call i32 @hci_conn_put(%struct.hci_conn* %112)
  br label %114

114:                                              ; preds = %103, %95
  br label %115

115:                                              ; preds = %114, %63
  br label %116

116:                                              ; preds = %115, %2
  %117 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %118 = call i32 @hci_dev_unlock(%struct.hci_dev* %117)
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local %struct.hci_conn* @hci_conn_hash_lookup_handle(%struct.hci_dev*, i32) #1

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local %struct.inquiry_entry* @hci_inquiry_cache_lookup(%struct.hci_dev*, i32*) #1

declare dso_local i32 @hci_send_cmd(%struct.hci_dev*, i32, i32, %struct.hci_cp_auth_requested*) #1

declare dso_local i32 @hci_proto_connect_cfm(%struct.hci_conn*, i32) #1

declare dso_local i32 @hci_conn_put(%struct.hci_conn*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
