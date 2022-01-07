; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_event.c_hci_conn_request_evt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_event.c_hci_conn_request_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32, i32, i32 }
%struct.sk_buff = type { i64 }
%struct.hci_ev_conn_request = type { i32, i32, i32 }
%struct.inquiry_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.hci_conn = type { i32, i32, i32 }
%struct.hci_cp_accept_conn_req = type { i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8* }
%struct.hci_cp_accept_sync_conn_req = type { i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8* }
%struct.hci_cp_reject_conn_req = type { i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [23 x i8] c"%s bdaddr %s type 0x%x\00", align 1
@HCI_LM_ACCEPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"No memmory for new connection\00", align 1
@BT_CONNECT = common dso_local global i32 0, align 4
@ACL_LINK = common dso_local global i32 0, align 4
@HCI_LM_MASTER = common dso_local global i32 0, align 4
@HCI_OP_ACCEPT_CONN_REQ = common dso_local global i32 0, align 4
@HCI_OP_ACCEPT_SYNC_CONN_REQ = common dso_local global i32 0, align 4
@HCI_OP_REJECT_CONN_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, %struct.sk_buff*)* @hci_conn_request_evt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_conn_request_evt(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.hci_ev_conn_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.inquiry_entry*, align 8
  %8 = alloca %struct.hci_conn*, align 8
  %9 = alloca %struct.hci_cp_accept_conn_req, align 8
  %10 = alloca %struct.hci_cp_accept_sync_conn_req, align 8
  %11 = alloca %struct.hci_cp_reject_conn_req, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = bitcast i8* %15 to %struct.hci_ev_conn_request*
  store %struct.hci_ev_conn_request* %16, %struct.hci_ev_conn_request** %5, align 8
  %17 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %18 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %6, align 4
  %20 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %21 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.hci_ev_conn_request*, %struct.hci_ev_conn_request** %5, align 8
  %24 = getelementptr inbounds %struct.hci_ev_conn_request, %struct.hci_ev_conn_request* %23, i32 0, i32 0
  %25 = call i32 @batostr(i32* %24)
  %26 = load %struct.hci_ev_conn_request*, %struct.hci_ev_conn_request** %5, align 8
  %27 = getelementptr inbounds %struct.hci_ev_conn_request, %struct.hci_ev_conn_request* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @BT_DBG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %25, i32 %28)
  %30 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %31 = load %struct.hci_ev_conn_request*, %struct.hci_ev_conn_request** %5, align 8
  %32 = getelementptr inbounds %struct.hci_ev_conn_request, %struct.hci_ev_conn_request* %31, i32 0, i32 0
  %33 = load %struct.hci_ev_conn_request*, %struct.hci_ev_conn_request** %5, align 8
  %34 = getelementptr inbounds %struct.hci_ev_conn_request, %struct.hci_ev_conn_request* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @hci_proto_connect_ind(%struct.hci_dev* %30, i32* %32, i32 %35)
  %37 = load i32, i32* %6, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @HCI_LM_ACCEPT, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %155

43:                                               ; preds = %2
  %44 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %45 = call i32 @hci_dev_lock(%struct.hci_dev* %44)
  %46 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %47 = load %struct.hci_ev_conn_request*, %struct.hci_ev_conn_request** %5, align 8
  %48 = getelementptr inbounds %struct.hci_ev_conn_request, %struct.hci_ev_conn_request* %47, i32 0, i32 0
  %49 = call %struct.inquiry_entry* @hci_inquiry_cache_lookup(%struct.hci_dev* %46, i32* %48)
  store %struct.inquiry_entry* %49, %struct.inquiry_entry** %7, align 8
  %50 = icmp ne %struct.inquiry_entry* %49, null
  br i1 %50, label %51, label %60

51:                                               ; preds = %43
  %52 = load %struct.inquiry_entry*, %struct.inquiry_entry** %7, align 8
  %53 = getelementptr inbounds %struct.inquiry_entry, %struct.inquiry_entry* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.hci_ev_conn_request*, %struct.hci_ev_conn_request** %5, align 8
  %57 = getelementptr inbounds %struct.hci_ev_conn_request, %struct.hci_ev_conn_request* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @memcpy(i32 %55, i32 %58, i32 3)
  br label %60

60:                                               ; preds = %51, %43
  %61 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %62 = load %struct.hci_ev_conn_request*, %struct.hci_ev_conn_request** %5, align 8
  %63 = getelementptr inbounds %struct.hci_ev_conn_request, %struct.hci_ev_conn_request* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.hci_ev_conn_request*, %struct.hci_ev_conn_request** %5, align 8
  %66 = getelementptr inbounds %struct.hci_ev_conn_request, %struct.hci_ev_conn_request* %65, i32 0, i32 0
  %67 = call %struct.hci_conn* @hci_conn_hash_lookup_ba(%struct.hci_dev* %61, i32 %64, i32* %66)
  store %struct.hci_conn* %67, %struct.hci_conn** %8, align 8
  %68 = load %struct.hci_conn*, %struct.hci_conn** %8, align 8
  %69 = icmp ne %struct.hci_conn* %68, null
  br i1 %69, label %84, label %70

70:                                               ; preds = %60
  %71 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %72 = load %struct.hci_ev_conn_request*, %struct.hci_ev_conn_request** %5, align 8
  %73 = getelementptr inbounds %struct.hci_ev_conn_request, %struct.hci_ev_conn_request* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.hci_ev_conn_request*, %struct.hci_ev_conn_request** %5, align 8
  %76 = getelementptr inbounds %struct.hci_ev_conn_request, %struct.hci_ev_conn_request* %75, i32 0, i32 0
  %77 = call %struct.hci_conn* @hci_conn_add(%struct.hci_dev* %71, i32 %74, i32* %76)
  store %struct.hci_conn* %77, %struct.hci_conn** %8, align 8
  %78 = icmp ne %struct.hci_conn* %77, null
  br i1 %78, label %83, label %79

79:                                               ; preds = %70
  %80 = call i32 @BT_ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %81 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %82 = call i32 @hci_dev_unlock(%struct.hci_dev* %81)
  br label %164

83:                                               ; preds = %70
  br label %84

84:                                               ; preds = %83, %60
  %85 = load %struct.hci_conn*, %struct.hci_conn** %8, align 8
  %86 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.hci_ev_conn_request*, %struct.hci_ev_conn_request** %5, align 8
  %89 = getelementptr inbounds %struct.hci_ev_conn_request, %struct.hci_ev_conn_request* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @memcpy(i32 %87, i32 %90, i32 3)
  %92 = load i32, i32* @BT_CONNECT, align 4
  %93 = load %struct.hci_conn*, %struct.hci_conn** %8, align 8
  %94 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %96 = call i32 @hci_dev_unlock(%struct.hci_dev* %95)
  %97 = load %struct.hci_ev_conn_request*, %struct.hci_ev_conn_request** %5, align 8
  %98 = getelementptr inbounds %struct.hci_ev_conn_request, %struct.hci_ev_conn_request* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @ACL_LINK, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %106, label %102

102:                                              ; preds = %84
  %103 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %104 = call i32 @lmp_esco_capable(%struct.hci_dev* %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %128, label %106

106:                                              ; preds = %102, %84
  %107 = getelementptr inbounds %struct.hci_cp_accept_conn_req, %struct.hci_cp_accept_conn_req* %9, i32 0, i32 3
  %108 = load %struct.hci_ev_conn_request*, %struct.hci_ev_conn_request** %5, align 8
  %109 = getelementptr inbounds %struct.hci_ev_conn_request, %struct.hci_ev_conn_request* %108, i32 0, i32 0
  %110 = call i32 @bacpy(i32* %107, i32* %109)
  %111 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %112 = call i64 @lmp_rswitch_capable(%struct.hci_dev* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %106
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* @HCI_LM_MASTER, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.hci_cp_accept_conn_req, %struct.hci_cp_accept_conn_req* %9, i32 0, i32 0
  store i32 0, i32* %120, align 8
  br label %123

121:                                              ; preds = %114, %106
  %122 = getelementptr inbounds %struct.hci_cp_accept_conn_req, %struct.hci_cp_accept_conn_req* %9, i32 0, i32 0
  store i32 1, i32* %122, align 8
  br label %123

123:                                              ; preds = %121, %119
  %124 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %125 = load i32, i32* @HCI_OP_ACCEPT_CONN_REQ, align 4
  %126 = bitcast %struct.hci_cp_accept_conn_req* %9 to %struct.hci_cp_reject_conn_req*
  %127 = call i32 @hci_send_cmd(%struct.hci_dev* %124, i32 %125, i32 56, %struct.hci_cp_reject_conn_req* %126)
  br label %154

128:                                              ; preds = %102
  %129 = getelementptr inbounds %struct.hci_cp_accept_sync_conn_req, %struct.hci_cp_accept_sync_conn_req* %10, i32 0, i32 3
  %130 = load %struct.hci_ev_conn_request*, %struct.hci_ev_conn_request** %5, align 8
  %131 = getelementptr inbounds %struct.hci_ev_conn_request, %struct.hci_ev_conn_request* %130, i32 0, i32 0
  %132 = call i32 @bacpy(i32* %129, i32* %131)
  %133 = load %struct.hci_conn*, %struct.hci_conn** %8, align 8
  %134 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i8* @cpu_to_le16(i32 %135)
  %137 = getelementptr inbounds %struct.hci_cp_accept_sync_conn_req, %struct.hci_cp_accept_sync_conn_req* %10, i32 0, i32 8
  store i8* %136, i8** %137, align 8
  %138 = call i8* @cpu_to_le32(i32 8000)
  %139 = getelementptr inbounds %struct.hci_cp_accept_sync_conn_req, %struct.hci_cp_accept_sync_conn_req* %10, i32 0, i32 7
  store i8* %138, i8** %139, align 8
  %140 = call i8* @cpu_to_le32(i32 8000)
  %141 = getelementptr inbounds %struct.hci_cp_accept_sync_conn_req, %struct.hci_cp_accept_sync_conn_req* %10, i32 0, i32 6
  store i8* %140, i8** %141, align 8
  %142 = call i8* @cpu_to_le16(i32 65535)
  %143 = getelementptr inbounds %struct.hci_cp_accept_sync_conn_req, %struct.hci_cp_accept_sync_conn_req* %10, i32 0, i32 5
  store i8* %142, i8** %143, align 8
  %144 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %145 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i8* @cpu_to_le16(i32 %146)
  %148 = getelementptr inbounds %struct.hci_cp_accept_sync_conn_req, %struct.hci_cp_accept_sync_conn_req* %10, i32 0, i32 4
  store i8* %147, i8** %148, align 8
  %149 = getelementptr inbounds %struct.hci_cp_accept_sync_conn_req, %struct.hci_cp_accept_sync_conn_req* %10, i32 0, i32 1
  store i32 255, i32* %149, align 4
  %150 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %151 = load i32, i32* @HCI_OP_ACCEPT_SYNC_CONN_REQ, align 4
  %152 = bitcast %struct.hci_cp_accept_sync_conn_req* %10 to %struct.hci_cp_reject_conn_req*
  %153 = call i32 @hci_send_cmd(%struct.hci_dev* %150, i32 %151, i32 56, %struct.hci_cp_reject_conn_req* %152)
  br label %154

154:                                              ; preds = %128, %123
  br label %164

155:                                              ; preds = %2
  %156 = getelementptr inbounds %struct.hci_cp_reject_conn_req, %struct.hci_cp_reject_conn_req* %11, i32 0, i32 3
  %157 = load %struct.hci_ev_conn_request*, %struct.hci_ev_conn_request** %5, align 8
  %158 = getelementptr inbounds %struct.hci_ev_conn_request, %struct.hci_ev_conn_request* %157, i32 0, i32 0
  %159 = call i32 @bacpy(i32* %156, i32* %158)
  %160 = getelementptr inbounds %struct.hci_cp_reject_conn_req, %struct.hci_cp_reject_conn_req* %11, i32 0, i32 2
  store i32 15, i32* %160, align 8
  %161 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %162 = load i32, i32* @HCI_OP_REJECT_CONN_REQ, align 4
  %163 = call i32 @hci_send_cmd(%struct.hci_dev* %161, i32 %162, i32 56, %struct.hci_cp_reject_conn_req* %11)
  br label %164

164:                                              ; preds = %79, %155, %154
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32, i32, i32) #1

declare dso_local i32 @batostr(i32*) #1

declare dso_local i32 @hci_proto_connect_ind(%struct.hci_dev*, i32*, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local %struct.inquiry_entry* @hci_inquiry_cache_lookup(%struct.hci_dev*, i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local %struct.hci_conn* @hci_conn_hash_lookup_ba(%struct.hci_dev*, i32, i32*) #1

declare dso_local %struct.hci_conn* @hci_conn_add(%struct.hci_dev*, i32, i32*) #1

declare dso_local i32 @BT_ERR(i8*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

declare dso_local i32 @lmp_esco_capable(%struct.hci_dev*) #1

declare dso_local i32 @bacpy(i32*, i32*) #1

declare dso_local i64 @lmp_rswitch_capable(%struct.hci_dev*) #1

declare dso_local i32 @hci_send_cmd(%struct.hci_dev*, i32, i32, %struct.hci_cp_reject_conn_req*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
