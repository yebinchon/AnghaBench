; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_event.c_hci_auth_complete_evt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_event.c_hci_auth_complete_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i64, i32 }
%struct.sk_buff = type { i64 }
%struct.hci_ev_auth_complete = type { i32, i32 }
%struct.hci_conn = type { i64, i64, i32, i32, i32 }
%struct.hci_cp_set_conn_encrypt = type { i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"%s status %d\00", align 1
@HCI_LM_AUTH = common dso_local global i32 0, align 4
@HCI_CONN_AUTH_PEND = common dso_local global i32 0, align 4
@BT_CONFIG = common dso_local global i64 0, align 8
@HCI_OP_SET_CONN_ENCRYPT = common dso_local global i32 0, align 4
@BT_CONNECTED = common dso_local global i64 0, align 8
@HCI_DISCONN_TIMEOUT = common dso_local global i32 0, align 4
@HCI_CONN_ENCRYPT_PEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, %struct.sk_buff*)* @hci_auth_complete_evt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_auth_complete_evt(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.hci_ev_auth_complete*, align 8
  %6 = alloca %struct.hci_conn*, align 8
  %7 = alloca %struct.hci_cp_set_conn_encrypt, align 4
  %8 = alloca %struct.hci_cp_set_conn_encrypt, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = bitcast i8* %12 to %struct.hci_ev_auth_complete*
  store %struct.hci_ev_auth_complete* %13, %struct.hci_ev_auth_complete** %5, align 8
  %14 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %15 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.hci_ev_auth_complete*, %struct.hci_ev_auth_complete** %5, align 8
  %18 = getelementptr inbounds %struct.hci_ev_auth_complete, %struct.hci_ev_auth_complete* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @BT_DBG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %19)
  %21 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %22 = call i32 @hci_dev_lock(%struct.hci_dev* %21)
  %23 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %24 = load %struct.hci_ev_auth_complete*, %struct.hci_ev_auth_complete** %5, align 8
  %25 = getelementptr inbounds %struct.hci_ev_auth_complete, %struct.hci_ev_auth_complete* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @__le16_to_cpu(i32 %26)
  %28 = call %struct.hci_conn* @hci_conn_hash_lookup_handle(%struct.hci_dev* %23, i32 %27)
  store %struct.hci_conn* %28, %struct.hci_conn** %6, align 8
  %29 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %30 = icmp ne %struct.hci_conn* %29, null
  br i1 %30, label %31, label %133

31:                                               ; preds = %2
  %32 = load %struct.hci_ev_auth_complete*, %struct.hci_ev_auth_complete** %5, align 8
  %33 = getelementptr inbounds %struct.hci_ev_auth_complete, %struct.hci_ev_auth_complete* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @HCI_LM_AUTH, align 4
  %38 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %39 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 8
  br label %42

42:                                               ; preds = %36, %31
  %43 = load i32, i32* @HCI_CONN_AUTH_PEND, align 4
  %44 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %45 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %44, i32 0, i32 2
  %46 = call i32 @clear_bit(i32 %43, i32* %45)
  %47 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %48 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @BT_CONFIG, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %88

52:                                               ; preds = %42
  %53 = load %struct.hci_ev_auth_complete*, %struct.hci_ev_auth_complete** %5, align 8
  %54 = getelementptr inbounds %struct.hci_ev_auth_complete, %struct.hci_ev_auth_complete* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %76, label %57

57:                                               ; preds = %52
  %58 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %59 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp sgt i64 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %57
  %63 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %64 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp sgt i64 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %62
  %68 = load %struct.hci_ev_auth_complete*, %struct.hci_ev_auth_complete** %5, align 8
  %69 = getelementptr inbounds %struct.hci_ev_auth_complete, %struct.hci_ev_auth_complete* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.hci_cp_set_conn_encrypt, %struct.hci_cp_set_conn_encrypt* %7, i32 0, i32 1
  store i32 %70, i32* %71, align 4
  %72 = getelementptr inbounds %struct.hci_cp_set_conn_encrypt, %struct.hci_cp_set_conn_encrypt* %7, i32 0, i32 0
  store i32 1, i32* %72, align 4
  %73 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %74 = load i32, i32* @HCI_OP_SET_CONN_ENCRYPT, align 4
  %75 = call i32 @hci_send_cmd(%struct.hci_dev* %73, i32 %74, i32 8, %struct.hci_cp_set_conn_encrypt* %7)
  br label %87

76:                                               ; preds = %62, %57, %52
  %77 = load i64, i64* @BT_CONNECTED, align 8
  %78 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %79 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  %80 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %81 = load %struct.hci_ev_auth_complete*, %struct.hci_ev_auth_complete** %5, align 8
  %82 = getelementptr inbounds %struct.hci_ev_auth_complete, %struct.hci_ev_auth_complete* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @hci_proto_connect_cfm(%struct.hci_conn* %80, i32 %83)
  %85 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %86 = call i32 @hci_conn_put(%struct.hci_conn* %85)
  br label %87

87:                                               ; preds = %76, %67
  br label %101

88:                                               ; preds = %42
  %89 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %90 = load %struct.hci_ev_auth_complete*, %struct.hci_ev_auth_complete** %5, align 8
  %91 = getelementptr inbounds %struct.hci_ev_auth_complete, %struct.hci_ev_auth_complete* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @hci_auth_cfm(%struct.hci_conn* %89, i32 %92)
  %94 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %95 = call i32 @hci_conn_hold(%struct.hci_conn* %94)
  %96 = load i32, i32* @HCI_DISCONN_TIMEOUT, align 4
  %97 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %98 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 4
  %99 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %100 = call i32 @hci_conn_put(%struct.hci_conn* %99)
  br label %101

101:                                              ; preds = %88, %87
  %102 = load i32, i32* @HCI_CONN_ENCRYPT_PEND, align 4
  %103 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %104 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %103, i32 0, i32 2
  %105 = call i64 @test_bit(i32 %102, i32* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %132

107:                                              ; preds = %101
  %108 = load %struct.hci_ev_auth_complete*, %struct.hci_ev_auth_complete** %5, align 8
  %109 = getelementptr inbounds %struct.hci_ev_auth_complete, %struct.hci_ev_auth_complete* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %121, label %112

112:                                              ; preds = %107
  %113 = load %struct.hci_ev_auth_complete*, %struct.hci_ev_auth_complete** %5, align 8
  %114 = getelementptr inbounds %struct.hci_ev_auth_complete, %struct.hci_ev_auth_complete* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds %struct.hci_cp_set_conn_encrypt, %struct.hci_cp_set_conn_encrypt* %8, i32 0, i32 1
  store i32 %115, i32* %116, align 4
  %117 = getelementptr inbounds %struct.hci_cp_set_conn_encrypt, %struct.hci_cp_set_conn_encrypt* %8, i32 0, i32 0
  store i32 1, i32* %117, align 4
  %118 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %119 = load i32, i32* @HCI_OP_SET_CONN_ENCRYPT, align 4
  %120 = call i32 @hci_send_cmd(%struct.hci_dev* %118, i32 %119, i32 8, %struct.hci_cp_set_conn_encrypt* %8)
  br label %131

121:                                              ; preds = %107
  %122 = load i32, i32* @HCI_CONN_ENCRYPT_PEND, align 4
  %123 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %124 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %123, i32 0, i32 2
  %125 = call i32 @clear_bit(i32 %122, i32* %124)
  %126 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %127 = load %struct.hci_ev_auth_complete*, %struct.hci_ev_auth_complete** %5, align 8
  %128 = getelementptr inbounds %struct.hci_ev_auth_complete, %struct.hci_ev_auth_complete* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @hci_encrypt_cfm(%struct.hci_conn* %126, i32 %129, i32 0)
  br label %131

131:                                              ; preds = %121, %112
  br label %132

132:                                              ; preds = %131, %101
  br label %133

133:                                              ; preds = %132, %2
  %134 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %135 = call i32 @hci_dev_unlock(%struct.hci_dev* %134)
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local %struct.hci_conn* @hci_conn_hash_lookup_handle(%struct.hci_dev*, i32) #1

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @hci_send_cmd(%struct.hci_dev*, i32, i32, %struct.hci_cp_set_conn_encrypt*) #1

declare dso_local i32 @hci_proto_connect_cfm(%struct.hci_conn*, i32) #1

declare dso_local i32 @hci_conn_put(%struct.hci_conn*) #1

declare dso_local i32 @hci_auth_cfm(%struct.hci_conn*, i32) #1

declare dso_local i32 @hci_conn_hold(%struct.hci_conn*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @hci_encrypt_cfm(%struct.hci_conn*, i32, i32) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
