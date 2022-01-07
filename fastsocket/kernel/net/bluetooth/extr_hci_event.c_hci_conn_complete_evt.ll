; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_event.c_hci_conn_complete_evt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_event.c_hci_conn_complete_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32, i32, i32 }
%struct.sk_buff = type { i64 }
%struct.hci_ev_conn_complete = type { i64, i64, i32, i32 }
%struct.hci_conn = type { i64, i32, %struct.hci_conn*, i32, i32, i32, i32, i32 }
%struct.hci_cp_read_remote_features = type { i32, i32 }
%struct.hci_cp_change_conn_ptype = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@SCO_LINK = common dso_local global i64 0, align 8
@ESCO_LINK = common dso_local global i64 0, align 8
@ACL_LINK = common dso_local global i64 0, align 8
@BT_CONFIG = common dso_local global i32 0, align 4
@HCI_DISCONN_TIMEOUT = common dso_local global i32 0, align 4
@BT_CONNECTED = common dso_local global i32 0, align 4
@HCI_AUTH = common dso_local global i32 0, align 4
@HCI_LM_AUTH = common dso_local global i32 0, align 4
@HCI_ENCRYPT = common dso_local global i32 0, align 4
@HCI_LM_ENCRYPT = common dso_local global i32 0, align 4
@HCI_OP_READ_REMOTE_FEATURES = common dso_local global i32 0, align 4
@HCI_OP_CHANGE_CONN_PTYPE = common dso_local global i32 0, align 4
@BT_CLOSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, %struct.sk_buff*)* @hci_conn_complete_evt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_conn_complete_evt(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.hci_ev_conn_complete*, align 8
  %6 = alloca %struct.hci_conn*, align 8
  %7 = alloca %struct.hci_cp_read_remote_features, align 4
  %8 = alloca %struct.hci_cp_change_conn_ptype, align 4
  %9 = alloca %struct.hci_conn*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = bitcast i8* %13 to %struct.hci_ev_conn_complete*
  store %struct.hci_ev_conn_complete* %14, %struct.hci_ev_conn_complete** %5, align 8
  %15 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %16 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @BT_DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %20 = call i32 @hci_dev_lock(%struct.hci_dev* %19)
  %21 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %22 = load %struct.hci_ev_conn_complete*, %struct.hci_ev_conn_complete** %5, align 8
  %23 = getelementptr inbounds %struct.hci_ev_conn_complete, %struct.hci_ev_conn_complete* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.hci_ev_conn_complete*, %struct.hci_ev_conn_complete** %5, align 8
  %26 = getelementptr inbounds %struct.hci_ev_conn_complete, %struct.hci_ev_conn_complete* %25, i32 0, i32 3
  %27 = call %struct.hci_conn* @hci_conn_hash_lookup_ba(%struct.hci_dev* %21, i64 %24, i32* %26)
  store %struct.hci_conn* %27, %struct.hci_conn** %6, align 8
  %28 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %29 = icmp ne %struct.hci_conn* %28, null
  br i1 %29, label %50, label %30

30:                                               ; preds = %2
  %31 = load %struct.hci_ev_conn_complete*, %struct.hci_ev_conn_complete** %5, align 8
  %32 = getelementptr inbounds %struct.hci_ev_conn_complete, %struct.hci_ev_conn_complete* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SCO_LINK, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %222

37:                                               ; preds = %30
  %38 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %39 = load i64, i64* @ESCO_LINK, align 8
  %40 = load %struct.hci_ev_conn_complete*, %struct.hci_ev_conn_complete** %5, align 8
  %41 = getelementptr inbounds %struct.hci_ev_conn_complete, %struct.hci_ev_conn_complete* %40, i32 0, i32 3
  %42 = call %struct.hci_conn* @hci_conn_hash_lookup_ba(%struct.hci_dev* %38, i64 %39, i32* %41)
  store %struct.hci_conn* %42, %struct.hci_conn** %6, align 8
  %43 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %44 = icmp ne %struct.hci_conn* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %37
  br label %222

46:                                               ; preds = %37
  %47 = load i64, i64* @SCO_LINK, align 8
  %48 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %49 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  br label %50

50:                                               ; preds = %46, %2
  %51 = load %struct.hci_ev_conn_complete*, %struct.hci_ev_conn_complete** %5, align 8
  %52 = getelementptr inbounds %struct.hci_ev_conn_complete, %struct.hci_ev_conn_complete* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %147, label %55

55:                                               ; preds = %50
  %56 = load %struct.hci_ev_conn_complete*, %struct.hci_ev_conn_complete** %5, align 8
  %57 = getelementptr inbounds %struct.hci_ev_conn_complete, %struct.hci_ev_conn_complete* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @__le16_to_cpu(i32 %58)
  %60 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %61 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  %62 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %63 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @ACL_LINK, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %55
  %68 = load i32, i32* @BT_CONFIG, align 4
  %69 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %70 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 8
  %71 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %72 = call i32 @hci_conn_hold(%struct.hci_conn* %71)
  %73 = load i32, i32* @HCI_DISCONN_TIMEOUT, align 4
  %74 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %75 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %74, i32 0, i32 7
  store i32 %73, i32* %75, align 8
  br label %80

76:                                               ; preds = %55
  %77 = load i32, i32* @BT_CONNECTED, align 4
  %78 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %79 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 8
  br label %80

80:                                               ; preds = %76, %67
  %81 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %82 = call i32 @hci_conn_hold_device(%struct.hci_conn* %81)
  %83 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %84 = call i32 @hci_conn_add_sysfs(%struct.hci_conn* %83)
  %85 = load i32, i32* @HCI_AUTH, align 4
  %86 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %87 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %86, i32 0, i32 1
  %88 = call i64 @test_bit(i32 %85, i32* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %80
  %91 = load i32, i32* @HCI_LM_AUTH, align 4
  %92 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %93 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %92, i32 0, i32 6
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %90, %80
  %97 = load i32, i32* @HCI_ENCRYPT, align 4
  %98 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %99 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %98, i32 0, i32 1
  %100 = call i64 @test_bit(i32 %97, i32* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %96
  %103 = load i32, i32* @HCI_LM_ENCRYPT, align 4
  %104 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %105 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %104, i32 0, i32 6
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 4
  br label %108

108:                                              ; preds = %102, %96
  %109 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %110 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @ACL_LINK, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %122

114:                                              ; preds = %108
  %115 = load %struct.hci_ev_conn_complete*, %struct.hci_ev_conn_complete** %5, align 8
  %116 = getelementptr inbounds %struct.hci_ev_conn_complete, %struct.hci_ev_conn_complete* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = getelementptr inbounds %struct.hci_cp_read_remote_features, %struct.hci_cp_read_remote_features* %7, i32 0, i32 1
  store i32 %117, i32* %118, align 4
  %119 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %120 = load i32, i32* @HCI_OP_READ_REMOTE_FEATURES, align 4
  %121 = call i32 @hci_send_cmd(%struct.hci_dev* %119, i32 %120, i32 8, %struct.hci_cp_read_remote_features* %7)
  br label %122

122:                                              ; preds = %114, %108
  %123 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %124 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 8
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %146, label %127

127:                                              ; preds = %122
  %128 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %129 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = icmp slt i32 %130, 3
  br i1 %131, label %132, label %146

132:                                              ; preds = %127
  %133 = load %struct.hci_ev_conn_complete*, %struct.hci_ev_conn_complete** %5, align 8
  %134 = getelementptr inbounds %struct.hci_ev_conn_complete, %struct.hci_ev_conn_complete* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = getelementptr inbounds %struct.hci_cp_change_conn_ptype, %struct.hci_cp_change_conn_ptype* %8, i32 0, i32 1
  store i32 %135, i32* %136, align 4
  %137 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %138 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @cpu_to_le16(i32 %139)
  %141 = getelementptr inbounds %struct.hci_cp_change_conn_ptype, %struct.hci_cp_change_conn_ptype* %8, i32 0, i32 0
  store i32 %140, i32* %141, align 4
  %142 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %143 = load i32, i32* @HCI_OP_CHANGE_CONN_PTYPE, align 4
  %144 = bitcast %struct.hci_cp_change_conn_ptype* %8 to %struct.hci_cp_read_remote_features*
  %145 = call i32 @hci_send_cmd(%struct.hci_dev* %142, i32 %143, i32 8, %struct.hci_cp_read_remote_features* %144)
  br label %146

146:                                              ; preds = %132, %127, %122
  br label %151

147:                                              ; preds = %50
  %148 = load i32, i32* @BT_CLOSED, align 4
  %149 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %150 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %149, i32 0, i32 3
  store i32 %148, i32* %150, align 8
  br label %151

151:                                              ; preds = %147, %146
  %152 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %153 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @ACL_LINK, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %195

157:                                              ; preds = %151
  %158 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %159 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %158, i32 0, i32 2
  %160 = load %struct.hci_conn*, %struct.hci_conn** %159, align 8
  store %struct.hci_conn* %160, %struct.hci_conn** %9, align 8
  %161 = load %struct.hci_conn*, %struct.hci_conn** %9, align 8
  %162 = icmp ne %struct.hci_conn* %161, null
  br i1 %162, label %163, label %194

163:                                              ; preds = %157
  %164 = load %struct.hci_ev_conn_complete*, %struct.hci_ev_conn_complete** %5, align 8
  %165 = getelementptr inbounds %struct.hci_ev_conn_complete, %struct.hci_ev_conn_complete* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %185, label %168

168:                                              ; preds = %163
  %169 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %170 = call i64 @lmp_esco_capable(%struct.hci_dev* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %178

172:                                              ; preds = %168
  %173 = load %struct.hci_conn*, %struct.hci_conn** %9, align 8
  %174 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %175 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @hci_setup_sync(%struct.hci_conn* %173, i32 %176)
  br label %184

178:                                              ; preds = %168
  %179 = load %struct.hci_conn*, %struct.hci_conn** %9, align 8
  %180 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %181 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @hci_add_sco(%struct.hci_conn* %179, i32 %182)
  br label %184

184:                                              ; preds = %178, %172
  br label %193

185:                                              ; preds = %163
  %186 = load %struct.hci_conn*, %struct.hci_conn** %9, align 8
  %187 = load %struct.hci_ev_conn_complete*, %struct.hci_ev_conn_complete** %5, align 8
  %188 = getelementptr inbounds %struct.hci_ev_conn_complete, %struct.hci_ev_conn_complete* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = call i32 @hci_proto_connect_cfm(%struct.hci_conn* %186, i64 %189)
  %191 = load %struct.hci_conn*, %struct.hci_conn** %9, align 8
  %192 = call i32 @hci_conn_del(%struct.hci_conn* %191)
  br label %193

193:                                              ; preds = %185, %184
  br label %194

194:                                              ; preds = %193, %157
  br label %195

195:                                              ; preds = %194, %151
  %196 = load %struct.hci_ev_conn_complete*, %struct.hci_ev_conn_complete** %5, align 8
  %197 = getelementptr inbounds %struct.hci_ev_conn_complete, %struct.hci_ev_conn_complete* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %208

200:                                              ; preds = %195
  %201 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %202 = load %struct.hci_ev_conn_complete*, %struct.hci_ev_conn_complete** %5, align 8
  %203 = getelementptr inbounds %struct.hci_ev_conn_complete, %struct.hci_ev_conn_complete* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = call i32 @hci_proto_connect_cfm(%struct.hci_conn* %201, i64 %204)
  %206 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %207 = call i32 @hci_conn_del(%struct.hci_conn* %206)
  br label %221

208:                                              ; preds = %195
  %209 = load %struct.hci_ev_conn_complete*, %struct.hci_ev_conn_complete** %5, align 8
  %210 = getelementptr inbounds %struct.hci_ev_conn_complete, %struct.hci_ev_conn_complete* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @ACL_LINK, align 8
  %213 = icmp ne i64 %211, %212
  br i1 %213, label %214, label %220

214:                                              ; preds = %208
  %215 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %216 = load %struct.hci_ev_conn_complete*, %struct.hci_ev_conn_complete** %5, align 8
  %217 = getelementptr inbounds %struct.hci_ev_conn_complete, %struct.hci_ev_conn_complete* %216, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  %219 = call i32 @hci_proto_connect_cfm(%struct.hci_conn* %215, i64 %218)
  br label %220

220:                                              ; preds = %214, %208
  br label %221

221:                                              ; preds = %220, %200
  br label %222

222:                                              ; preds = %221, %45, %36
  %223 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %224 = call i32 @hci_dev_unlock(%struct.hci_dev* %223)
  %225 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %226 = call i32 @hci_conn_check_pending(%struct.hci_dev* %225)
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local %struct.hci_conn* @hci_conn_hash_lookup_ba(%struct.hci_dev*, i64, i32*) #1

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local i32 @hci_conn_hold(%struct.hci_conn*) #1

declare dso_local i32 @hci_conn_hold_device(%struct.hci_conn*) #1

declare dso_local i32 @hci_conn_add_sysfs(%struct.hci_conn*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @hci_send_cmd(%struct.hci_dev*, i32, i32, %struct.hci_cp_read_remote_features*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i64 @lmp_esco_capable(%struct.hci_dev*) #1

declare dso_local i32 @hci_setup_sync(%struct.hci_conn*, i32) #1

declare dso_local i32 @hci_add_sco(%struct.hci_conn*, i32) #1

declare dso_local i32 @hci_proto_connect_cfm(%struct.hci_conn*, i64) #1

declare dso_local i32 @hci_conn_del(%struct.hci_conn*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

declare dso_local i32 @hci_conn_check_pending(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
