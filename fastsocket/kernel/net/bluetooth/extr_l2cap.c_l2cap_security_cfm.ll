; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_security_cfm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_security_cfm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_conn = type { %struct.l2cap_conn* }
%struct.l2cap_conn = type { %struct.l2cap_chan_list }
%struct.l2cap_chan_list = type { i32, %struct.sock* }
%struct.sock = type { i64 }
%struct.l2cap_conn_req = type { i8*, i8*, i8*, i8*, i32 }
%struct.l2cap_conn_rsp = type { i8*, i8*, i8*, i8*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, %struct.sock* }

@.str = private unnamed_addr constant [8 x i8] c"conn %p\00", align 1
@L2CAP_CONF_CONNECT_PEND = common dso_local global i32 0, align 4
@BT_CONNECTED = common dso_local global i64 0, align 8
@BT_CONFIG = common dso_local global i64 0, align 8
@BT_CONNECT = common dso_local global i64 0, align 8
@L2CAP_CONN_REQ = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@BT_CONNECT2 = common dso_local global i64 0, align 8
@L2CAP_CR_SUCCESS = common dso_local global i32 0, align 4
@BT_DISCONN = common dso_local global i64 0, align 8
@L2CAP_CR_SEC_BLOCK = common dso_local global i32 0, align 4
@L2CAP_CS_NO_INFO = common dso_local global i32 0, align 4
@L2CAP_CONN_RSP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_conn*, i32, i32)* @l2cap_security_cfm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2cap_security_cfm(%struct.hci_conn* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hci_conn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.l2cap_chan_list*, align 8
  %9 = alloca %struct.l2cap_conn*, align 8
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.l2cap_conn_req, align 8
  %12 = alloca %struct.l2cap_conn_rsp, align 8
  %13 = alloca i32, align 4
  store %struct.hci_conn* %0, %struct.hci_conn** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %15 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %14, i32 0, i32 0
  %16 = load %struct.l2cap_conn*, %struct.l2cap_conn** %15, align 8
  store %struct.l2cap_conn* %16, %struct.l2cap_conn** %9, align 8
  %17 = load %struct.l2cap_conn*, %struct.l2cap_conn** %9, align 8
  %18 = icmp ne %struct.l2cap_conn* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %172

20:                                               ; preds = %3
  %21 = load %struct.l2cap_conn*, %struct.l2cap_conn** %9, align 8
  %22 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %21, i32 0, i32 0
  store %struct.l2cap_chan_list* %22, %struct.l2cap_chan_list** %8, align 8
  %23 = load %struct.l2cap_conn*, %struct.l2cap_conn** %9, align 8
  %24 = call i32 @BT_DBG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.l2cap_conn* %23)
  %25 = load %struct.l2cap_chan_list*, %struct.l2cap_chan_list** %8, align 8
  %26 = getelementptr inbounds %struct.l2cap_chan_list, %struct.l2cap_chan_list* %25, i32 0, i32 0
  %27 = call i32 @read_lock(i32* %26)
  %28 = load %struct.l2cap_chan_list*, %struct.l2cap_chan_list** %8, align 8
  %29 = getelementptr inbounds %struct.l2cap_chan_list, %struct.l2cap_chan_list* %28, i32 0, i32 1
  %30 = load %struct.sock*, %struct.sock** %29, align 8
  store %struct.sock* %30, %struct.sock** %10, align 8
  br label %31

31:                                               ; preds = %163, %20
  %32 = load %struct.sock*, %struct.sock** %10, align 8
  %33 = icmp ne %struct.sock* %32, null
  br i1 %33, label %34, label %168

34:                                               ; preds = %31
  %35 = load %struct.sock*, %struct.sock** %10, align 8
  %36 = call i32 @bh_lock_sock(%struct.sock* %35)
  %37 = load %struct.sock*, %struct.sock** %10, align 8
  %38 = call %struct.TYPE_2__* @l2cap_pi(%struct.sock* %37)
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @L2CAP_CONF_CONNECT_PEND, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %34
  %45 = load %struct.sock*, %struct.sock** %10, align 8
  %46 = call i32 @bh_unlock_sock(%struct.sock* %45)
  br label %163

47:                                               ; preds = %34
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %68, label %50

50:                                               ; preds = %47
  %51 = load %struct.sock*, %struct.sock** %10, align 8
  %52 = getelementptr inbounds %struct.sock, %struct.sock* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @BT_CONNECTED, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %62, label %56

56:                                               ; preds = %50
  %57 = load %struct.sock*, %struct.sock** %10, align 8
  %58 = getelementptr inbounds %struct.sock, %struct.sock* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @BT_CONFIG, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %56, %50
  %63 = load %struct.sock*, %struct.sock** %10, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @l2cap_check_encryption(%struct.sock* %63, i32 %64)
  %66 = load %struct.sock*, %struct.sock** %10, align 8
  %67 = call i32 @bh_unlock_sock(%struct.sock* %66)
  br label %163

68:                                               ; preds = %56, %47
  %69 = load %struct.sock*, %struct.sock** %10, align 8
  %70 = getelementptr inbounds %struct.sock, %struct.sock* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @BT_CONNECT, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %110

74:                                               ; preds = %68
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %102, label %77

77:                                               ; preds = %74
  %78 = load %struct.sock*, %struct.sock** %10, align 8
  %79 = call %struct.TYPE_2__* @l2cap_pi(%struct.sock* %78)
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call i8* @cpu_to_le16(i32 %81)
  %83 = getelementptr inbounds %struct.l2cap_conn_req, %struct.l2cap_conn_req* %11, i32 0, i32 3
  store i8* %82, i8** %83, align 8
  %84 = load %struct.sock*, %struct.sock** %10, align 8
  %85 = call %struct.TYPE_2__* @l2cap_pi(%struct.sock* %84)
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = getelementptr inbounds %struct.l2cap_conn_req, %struct.l2cap_conn_req* %11, i32 0, i32 4
  store i32 %87, i32* %88, align 8
  %89 = load %struct.l2cap_conn*, %struct.l2cap_conn** %9, align 8
  %90 = call i32 @l2cap_get_ident(%struct.l2cap_conn* %89)
  %91 = load %struct.sock*, %struct.sock** %10, align 8
  %92 = call %struct.TYPE_2__* @l2cap_pi(%struct.sock* %91)
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  store i32 %90, i32* %93, align 4
  %94 = load %struct.l2cap_conn*, %struct.l2cap_conn** %9, align 8
  %95 = load %struct.sock*, %struct.sock** %10, align 8
  %96 = call %struct.TYPE_2__* @l2cap_pi(%struct.sock* %95)
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @L2CAP_CONN_REQ, align 4
  %100 = bitcast %struct.l2cap_conn_req* %11 to %struct.l2cap_conn_rsp*
  %101 = call i32 @l2cap_send_cmd(%struct.l2cap_conn* %94, i32 %98, i32 %99, i32 40, %struct.l2cap_conn_rsp* %100)
  br label %109

102:                                              ; preds = %74
  %103 = load %struct.sock*, %struct.sock** %10, align 8
  %104 = call i32 @l2cap_sock_clear_timer(%struct.sock* %103)
  %105 = load %struct.sock*, %struct.sock** %10, align 8
  %106 = load i32, i32* @HZ, align 4
  %107 = sdiv i32 %106, 10
  %108 = call i32 @l2cap_sock_set_timer(%struct.sock* %105, i32 %107)
  br label %109

109:                                              ; preds = %102, %77
  br label %160

110:                                              ; preds = %68
  %111 = load %struct.sock*, %struct.sock** %10, align 8
  %112 = getelementptr inbounds %struct.sock, %struct.sock* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @BT_CONNECT2, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %159

116:                                              ; preds = %110
  %117 = load i32, i32* %6, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %124, label %119

119:                                              ; preds = %116
  %120 = load i64, i64* @BT_CONFIG, align 8
  %121 = load %struct.sock*, %struct.sock** %10, align 8
  %122 = getelementptr inbounds %struct.sock, %struct.sock* %121, i32 0, i32 0
  store i64 %120, i64* %122, align 8
  %123 = load i32, i32* @L2CAP_CR_SUCCESS, align 4
  store i32 %123, i32* %13, align 4
  br label %133

124:                                              ; preds = %116
  %125 = load i64, i64* @BT_DISCONN, align 8
  %126 = load %struct.sock*, %struct.sock** %10, align 8
  %127 = getelementptr inbounds %struct.sock, %struct.sock* %126, i32 0, i32 0
  store i64 %125, i64* %127, align 8
  %128 = load %struct.sock*, %struct.sock** %10, align 8
  %129 = load i32, i32* @HZ, align 4
  %130 = sdiv i32 %129, 10
  %131 = call i32 @l2cap_sock_set_timer(%struct.sock* %128, i32 %130)
  %132 = load i32, i32* @L2CAP_CR_SEC_BLOCK, align 4
  store i32 %132, i32* %13, align 4
  br label %133

133:                                              ; preds = %124, %119
  %134 = load %struct.sock*, %struct.sock** %10, align 8
  %135 = call %struct.TYPE_2__* @l2cap_pi(%struct.sock* %134)
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = call i8* @cpu_to_le16(i32 %137)
  %139 = getelementptr inbounds %struct.l2cap_conn_rsp, %struct.l2cap_conn_rsp* %12, i32 0, i32 3
  store i8* %138, i8** %139, align 8
  %140 = load %struct.sock*, %struct.sock** %10, align 8
  %141 = call %struct.TYPE_2__* @l2cap_pi(%struct.sock* %140)
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = call i8* @cpu_to_le16(i32 %143)
  %145 = getelementptr inbounds %struct.l2cap_conn_rsp, %struct.l2cap_conn_rsp* %12, i32 0, i32 2
  store i8* %144, i8** %145, align 8
  %146 = load i32, i32* %13, align 4
  %147 = call i8* @cpu_to_le16(i32 %146)
  %148 = getelementptr inbounds %struct.l2cap_conn_rsp, %struct.l2cap_conn_rsp* %12, i32 0, i32 1
  store i8* %147, i8** %148, align 8
  %149 = load i32, i32* @L2CAP_CS_NO_INFO, align 4
  %150 = call i8* @cpu_to_le16(i32 %149)
  %151 = getelementptr inbounds %struct.l2cap_conn_rsp, %struct.l2cap_conn_rsp* %12, i32 0, i32 0
  store i8* %150, i8** %151, align 8
  %152 = load %struct.l2cap_conn*, %struct.l2cap_conn** %9, align 8
  %153 = load %struct.sock*, %struct.sock** %10, align 8
  %154 = call %struct.TYPE_2__* @l2cap_pi(%struct.sock* %153)
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @L2CAP_CONN_RSP, align 4
  %158 = call i32 @l2cap_send_cmd(%struct.l2cap_conn* %152, i32 %156, i32 %157, i32 40, %struct.l2cap_conn_rsp* %12)
  br label %159

159:                                              ; preds = %133, %110
  br label %160

160:                                              ; preds = %159, %109
  %161 = load %struct.sock*, %struct.sock** %10, align 8
  %162 = call i32 @bh_unlock_sock(%struct.sock* %161)
  br label %163

163:                                              ; preds = %160, %62, %44
  %164 = load %struct.sock*, %struct.sock** %10, align 8
  %165 = call %struct.TYPE_2__* @l2cap_pi(%struct.sock* %164)
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 5
  %167 = load %struct.sock*, %struct.sock** %166, align 8
  store %struct.sock* %167, %struct.sock** %10, align 8
  br label %31

168:                                              ; preds = %31
  %169 = load %struct.l2cap_chan_list*, %struct.l2cap_chan_list** %8, align 8
  %170 = getelementptr inbounds %struct.l2cap_chan_list, %struct.l2cap_chan_list* %169, i32 0, i32 0
  %171 = call i32 @read_unlock(i32* %170)
  store i32 0, i32* %4, align 4
  br label %172

172:                                              ; preds = %168, %19
  %173 = load i32, i32* %4, align 4
  ret i32 %173
}

declare dso_local i32 @BT_DBG(i8*, %struct.l2cap_conn*) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local %struct.TYPE_2__* @l2cap_pi(%struct.sock*) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

declare dso_local i32 @l2cap_check_encryption(%struct.sock*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @l2cap_get_ident(%struct.l2cap_conn*) #1

declare dso_local i32 @l2cap_send_cmd(%struct.l2cap_conn*, i32, i32, i32, %struct.l2cap_conn_rsp*) #1

declare dso_local i32 @l2cap_sock_clear_timer(%struct.sock*) #1

declare dso_local i32 @l2cap_sock_set_timer(%struct.sock*, i32) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
