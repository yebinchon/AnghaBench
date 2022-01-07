; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_connect_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_connect_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_conn = type { i32, i32, i32, i32, i32, i32, i32, %struct.l2cap_chan_list }
%struct.l2cap_chan_list = type { i32 }
%struct.l2cap_cmd_hdr = type { i32 }
%struct.l2cap_conn_req = type { i8*, i32 }
%struct.l2cap_conn_rsp = type { i8*, i8*, i8*, i8*, i8* }
%struct.sock = type { i8*, i32 (%struct.sock*, i32)*, i32, i32 }
%struct.l2cap_info_req = type { i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_4__ = type { i64, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i8* }

@L2CAP_CS_NO_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"psm 0x%2.2x scid 0x%4.4x\00", align 1
@BT_LISTEN = common dso_local global i32 0, align 4
@L2CAP_CR_BAD_PSM = common dso_local global i32 0, align 4
@L2CAP_CR_SEC_BLOCK = common dso_local global i32 0, align 4
@L2CAP_CR_NO_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"backlog full %d\00", align 1
@BTPROTO_L2CAP = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@SOCK_ZAPPED = common dso_local global i32 0, align 4
@L2CAP_INFO_FEAT_MASK_REQ_DONE = common dso_local global i32 0, align 4
@BT_CONNECT2 = common dso_local global i8* null, align 8
@L2CAP_CR_PEND = common dso_local global i32 0, align 4
@L2CAP_CS_AUTHOR_PEND = common dso_local global i32 0, align 4
@BT_CONFIG = common dso_local global i8* null, align 8
@L2CAP_CR_SUCCESS = common dso_local global i32 0, align 4
@L2CAP_CS_AUTHEN_PEND = common dso_local global i32 0, align 4
@L2CAP_CONN_RSP = common dso_local global i32 0, align 4
@L2CAP_IT_FEAT_MASK = common dso_local global i32 0, align 4
@L2CAP_INFO_FEAT_MASK_REQ_SENT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@L2CAP_INFO_TIMEOUT = common dso_local global i32 0, align 4
@L2CAP_INFO_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l2cap_conn*, %struct.l2cap_cmd_hdr*, i32*)* @l2cap_connect_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2cap_connect_req(%struct.l2cap_conn* %0, %struct.l2cap_cmd_hdr* %1, i32* %2) #0 {
  %4 = alloca %struct.l2cap_conn*, align 8
  %5 = alloca %struct.l2cap_cmd_hdr*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.l2cap_chan_list*, align 8
  %8 = alloca %struct.l2cap_conn_req*, align 8
  %9 = alloca %struct.l2cap_conn_rsp, align 8
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.sock*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca %struct.l2cap_info_req, align 8
  store %struct.l2cap_conn* %0, %struct.l2cap_conn** %4, align 8
  store %struct.l2cap_cmd_hdr* %1, %struct.l2cap_cmd_hdr** %5, align 8
  store i32* %2, i32** %6, align 8
  %18 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %19 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %18, i32 0, i32 7
  store %struct.l2cap_chan_list* %19, %struct.l2cap_chan_list** %7, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = bitcast i32* %20 to %struct.l2cap_conn_req*
  store %struct.l2cap_conn_req* %21, %struct.l2cap_conn_req** %8, align 8
  %22 = load i32, i32* @L2CAP_CS_NO_INFO, align 4
  store i32 %22, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %23 = load %struct.l2cap_conn_req*, %struct.l2cap_conn_req** %8, align 8
  %24 = getelementptr inbounds %struct.l2cap_conn_req, %struct.l2cap_conn_req* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @__le16_to_cpu(i32 %25)
  store i32 %26, i32* %15, align 4
  %27 = load %struct.l2cap_conn_req*, %struct.l2cap_conn_req** %8, align 8
  %28 = getelementptr inbounds %struct.l2cap_conn_req, %struct.l2cap_conn_req* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %16, align 8
  %30 = load i8*, i8** %16, align 8
  %31 = load i32, i32* %15, align 4
  %32 = call i32 (i8*, i8*, ...) @BT_DBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %30, i32 %31)
  %33 = load i32, i32* @BT_LISTEN, align 4
  %34 = load i8*, i8** %16, align 8
  %35 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %36 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.sock* @l2cap_get_sock_by_psm(i32 %33, i8* %34, i32 %37)
  store %struct.sock* %38, %struct.sock** %11, align 8
  %39 = load %struct.sock*, %struct.sock** %11, align 8
  %40 = icmp ne %struct.sock* %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %3
  %42 = load i32, i32* @L2CAP_CR_BAD_PSM, align 4
  store i32 %42, i32* %12, align 4
  br label %198

43:                                               ; preds = %3
  %44 = load i8*, i8** %16, align 8
  %45 = call i8* @cpu_to_le16(i32 1)
  %46 = icmp ne i8* %44, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %43
  %48 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %49 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @hci_conn_check_link_mode(i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %47
  %54 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %55 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %54, i32 0, i32 0
  store i32 5, i32* %55, align 4
  %56 = load i32, i32* @L2CAP_CR_SEC_BLOCK, align 4
  store i32 %56, i32* %12, align 4
  br label %195

57:                                               ; preds = %47, %43
  %58 = load i32, i32* @L2CAP_CR_NO_MEM, align 4
  store i32 %58, i32* %12, align 4
  %59 = load %struct.sock*, %struct.sock** %11, align 8
  %60 = call i64 @sk_acceptq_is_full(%struct.sock* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %57
  %63 = load %struct.sock*, %struct.sock** %11, align 8
  %64 = getelementptr inbounds %struct.sock, %struct.sock* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = inttoptr i64 %66 to i8*
  %68 = call i32 (i8*, i8*, ...) @BT_DBG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %67)
  br label %195

69:                                               ; preds = %57
  %70 = load %struct.sock*, %struct.sock** %11, align 8
  %71 = call i32 @sock_net(%struct.sock* %70)
  %72 = load i32, i32* @BTPROTO_L2CAP, align 4
  %73 = load i32, i32* @GFP_ATOMIC, align 4
  %74 = call %struct.sock* @l2cap_sock_alloc(i32 %71, i32* null, i32 %72, i32 %73)
  store %struct.sock* %74, %struct.sock** %10, align 8
  %75 = load %struct.sock*, %struct.sock** %10, align 8
  %76 = icmp ne %struct.sock* %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %69
  br label %195

78:                                               ; preds = %69
  %79 = load %struct.l2cap_chan_list*, %struct.l2cap_chan_list** %7, align 8
  %80 = getelementptr inbounds %struct.l2cap_chan_list, %struct.l2cap_chan_list* %79, i32 0, i32 0
  %81 = call i32 @write_lock_bh(i32* %80)
  %82 = load %struct.l2cap_chan_list*, %struct.l2cap_chan_list** %7, align 8
  %83 = load i32, i32* %15, align 4
  %84 = call i64 @__l2cap_get_chan_by_dcid(%struct.l2cap_chan_list* %82, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %78
  %87 = load %struct.l2cap_chan_list*, %struct.l2cap_chan_list** %7, align 8
  %88 = getelementptr inbounds %struct.l2cap_chan_list, %struct.l2cap_chan_list* %87, i32 0, i32 0
  %89 = call i32 @write_unlock_bh(i32* %88)
  %90 = load %struct.sock*, %struct.sock** %10, align 8
  %91 = load i32, i32* @SOCK_ZAPPED, align 4
  %92 = call i32 @sock_set_flag(%struct.sock* %90, i32 %91)
  %93 = load %struct.sock*, %struct.sock** %10, align 8
  %94 = call i32 @l2cap_sock_kill(%struct.sock* %93)
  br label %195

95:                                               ; preds = %78
  %96 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %97 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %96, i32 0, i32 6
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @hci_conn_hold(i32 %98)
  %100 = load %struct.sock*, %struct.sock** %10, align 8
  %101 = load %struct.sock*, %struct.sock** %11, align 8
  %102 = call i32 @l2cap_sock_init(%struct.sock* %100, %struct.sock* %101)
  %103 = load %struct.sock*, %struct.sock** %10, align 8
  %104 = call %struct.TYPE_4__* @bt_sk(%struct.sock* %103)
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 2
  %106 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %107 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @bacpy(i32* %105, i32 %108)
  %110 = load %struct.sock*, %struct.sock** %10, align 8
  %111 = call %struct.TYPE_4__* @bt_sk(%struct.sock* %110)
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  %113 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %114 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @bacpy(i32* %112, i32 %115)
  %117 = load i8*, i8** %16, align 8
  %118 = load %struct.sock*, %struct.sock** %10, align 8
  %119 = call %struct.TYPE_3__* @l2cap_pi(%struct.sock* %118)
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 3
  store i8* %117, i8** %120, align 8
  %121 = load i32, i32* %15, align 4
  %122 = load %struct.sock*, %struct.sock** %10, align 8
  %123 = call %struct.TYPE_3__* @l2cap_pi(%struct.sock* %122)
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  store i32 %121, i32* %124, align 8
  %125 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %126 = load %struct.sock*, %struct.sock** %10, align 8
  %127 = load %struct.sock*, %struct.sock** %11, align 8
  %128 = call i32 @__l2cap_chan_add(%struct.l2cap_conn* %125, %struct.sock* %126, %struct.sock* %127)
  %129 = load %struct.sock*, %struct.sock** %10, align 8
  %130 = call %struct.TYPE_3__* @l2cap_pi(%struct.sock* %129)
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* %14, align 4
  %133 = load %struct.sock*, %struct.sock** %10, align 8
  %134 = load %struct.sock*, %struct.sock** %10, align 8
  %135 = getelementptr inbounds %struct.sock, %struct.sock* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @l2cap_sock_set_timer(%struct.sock* %133, i32 %136)
  %138 = load %struct.l2cap_cmd_hdr*, %struct.l2cap_cmd_hdr** %5, align 8
  %139 = getelementptr inbounds %struct.l2cap_cmd_hdr, %struct.l2cap_cmd_hdr* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.sock*, %struct.sock** %10, align 8
  %142 = call %struct.TYPE_3__* @l2cap_pi(%struct.sock* %141)
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 2
  store i32 %140, i32* %143, align 8
  %144 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %145 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @L2CAP_INFO_FEAT_MASK_REQ_DONE, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %185

150:                                              ; preds = %95
  %151 = load %struct.sock*, %struct.sock** %10, align 8
  %152 = call i64 @l2cap_check_security(%struct.sock* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %178

154:                                              ; preds = %150
  %155 = load %struct.sock*, %struct.sock** %10, align 8
  %156 = call %struct.TYPE_4__* @bt_sk(%struct.sock* %155)
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %171

160:                                              ; preds = %154
  %161 = load i8*, i8** @BT_CONNECT2, align 8
  %162 = load %struct.sock*, %struct.sock** %10, align 8
  %163 = getelementptr inbounds %struct.sock, %struct.sock* %162, i32 0, i32 0
  store i8* %161, i8** %163, align 8
  %164 = load i32, i32* @L2CAP_CR_PEND, align 4
  store i32 %164, i32* %12, align 4
  %165 = load i32, i32* @L2CAP_CS_AUTHOR_PEND, align 4
  store i32 %165, i32* %13, align 4
  %166 = load %struct.sock*, %struct.sock** %11, align 8
  %167 = getelementptr inbounds %struct.sock, %struct.sock* %166, i32 0, i32 1
  %168 = load i32 (%struct.sock*, i32)*, i32 (%struct.sock*, i32)** %167, align 8
  %169 = load %struct.sock*, %struct.sock** %11, align 8
  %170 = call i32 %168(%struct.sock* %169, i32 0)
  br label %177

171:                                              ; preds = %154
  %172 = load i8*, i8** @BT_CONFIG, align 8
  %173 = load %struct.sock*, %struct.sock** %10, align 8
  %174 = getelementptr inbounds %struct.sock, %struct.sock* %173, i32 0, i32 0
  store i8* %172, i8** %174, align 8
  %175 = load i32, i32* @L2CAP_CR_SUCCESS, align 4
  store i32 %175, i32* %12, align 4
  %176 = load i32, i32* @L2CAP_CS_NO_INFO, align 4
  store i32 %176, i32* %13, align 4
  br label %177

177:                                              ; preds = %171, %160
  br label %184

178:                                              ; preds = %150
  %179 = load i8*, i8** @BT_CONNECT2, align 8
  %180 = load %struct.sock*, %struct.sock** %10, align 8
  %181 = getelementptr inbounds %struct.sock, %struct.sock* %180, i32 0, i32 0
  store i8* %179, i8** %181, align 8
  %182 = load i32, i32* @L2CAP_CR_PEND, align 4
  store i32 %182, i32* %12, align 4
  %183 = load i32, i32* @L2CAP_CS_AUTHEN_PEND, align 4
  store i32 %183, i32* %13, align 4
  br label %184

184:                                              ; preds = %178, %177
  br label %191

185:                                              ; preds = %95
  %186 = load i8*, i8** @BT_CONNECT2, align 8
  %187 = load %struct.sock*, %struct.sock** %10, align 8
  %188 = getelementptr inbounds %struct.sock, %struct.sock* %187, i32 0, i32 0
  store i8* %186, i8** %188, align 8
  %189 = load i32, i32* @L2CAP_CR_PEND, align 4
  store i32 %189, i32* %12, align 4
  %190 = load i32, i32* @L2CAP_CS_NO_INFO, align 4
  store i32 %190, i32* %13, align 4
  br label %191

191:                                              ; preds = %185, %184
  %192 = load %struct.l2cap_chan_list*, %struct.l2cap_chan_list** %7, align 8
  %193 = getelementptr inbounds %struct.l2cap_chan_list, %struct.l2cap_chan_list* %192, i32 0, i32 0
  %194 = call i32 @write_unlock_bh(i32* %193)
  br label %195

195:                                              ; preds = %191, %86, %77, %62, %53
  %196 = load %struct.sock*, %struct.sock** %11, align 8
  %197 = call i32 @bh_unlock_sock(%struct.sock* %196)
  br label %198

198:                                              ; preds = %195, %41
  %199 = load i32, i32* %15, align 4
  %200 = call i8* @cpu_to_le16(i32 %199)
  %201 = getelementptr inbounds %struct.l2cap_conn_rsp, %struct.l2cap_conn_rsp* %9, i32 0, i32 4
  store i8* %200, i8** %201, align 8
  %202 = load i32, i32* %14, align 4
  %203 = call i8* @cpu_to_le16(i32 %202)
  %204 = getelementptr inbounds %struct.l2cap_conn_rsp, %struct.l2cap_conn_rsp* %9, i32 0, i32 3
  store i8* %203, i8** %204, align 8
  %205 = load i32, i32* %12, align 4
  %206 = call i8* @cpu_to_le16(i32 %205)
  %207 = getelementptr inbounds %struct.l2cap_conn_rsp, %struct.l2cap_conn_rsp* %9, i32 0, i32 2
  store i8* %206, i8** %207, align 8
  %208 = load i32, i32* %13, align 4
  %209 = call i8* @cpu_to_le16(i32 %208)
  %210 = getelementptr inbounds %struct.l2cap_conn_rsp, %struct.l2cap_conn_rsp* %9, i32 0, i32 1
  store i8* %209, i8** %210, align 8
  %211 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %212 = load %struct.l2cap_cmd_hdr*, %struct.l2cap_cmd_hdr** %5, align 8
  %213 = getelementptr inbounds %struct.l2cap_cmd_hdr, %struct.l2cap_cmd_hdr* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* @L2CAP_CONN_RSP, align 4
  %216 = bitcast %struct.l2cap_conn_rsp* %9 to %struct.l2cap_info_req*
  %217 = call i32 @l2cap_send_cmd(%struct.l2cap_conn* %211, i32 %214, i32 %215, i32 40, %struct.l2cap_info_req* %216)
  %218 = load i32, i32* %12, align 4
  %219 = load i32, i32* @L2CAP_CR_PEND, align 4
  %220 = icmp eq i32 %218, %219
  br i1 %220, label %221, label %251

221:                                              ; preds = %198
  %222 = load i32, i32* %13, align 4
  %223 = load i32, i32* @L2CAP_CS_NO_INFO, align 4
  %224 = icmp eq i32 %222, %223
  br i1 %224, label %225, label %251

225:                                              ; preds = %221
  %226 = load i32, i32* @L2CAP_IT_FEAT_MASK, align 4
  %227 = call i8* @cpu_to_le16(i32 %226)
  %228 = getelementptr inbounds %struct.l2cap_info_req, %struct.l2cap_info_req* %17, i32 0, i32 0
  store i8* %227, i8** %228, align 8
  %229 = load i32, i32* @L2CAP_INFO_FEAT_MASK_REQ_SENT, align 4
  %230 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %231 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = or i32 %232, %229
  store i32 %233, i32* %231, align 4
  %234 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %235 = call i32 @l2cap_get_ident(%struct.l2cap_conn* %234)
  %236 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %237 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %236, i32 0, i32 2
  store i32 %235, i32* %237, align 4
  %238 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %239 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %238, i32 0, i32 3
  %240 = load i64, i64* @jiffies, align 8
  %241 = load i32, i32* @L2CAP_INFO_TIMEOUT, align 4
  %242 = call i64 @msecs_to_jiffies(i32 %241)
  %243 = add nsw i64 %240, %242
  %244 = call i32 @mod_timer(i32* %239, i64 %243)
  %245 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %246 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %247 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* @L2CAP_INFO_REQ, align 4
  %250 = call i32 @l2cap_send_cmd(%struct.l2cap_conn* %245, i32 %248, i32 %249, i32 40, %struct.l2cap_info_req* %17)
  br label %251

251:                                              ; preds = %225, %221, %198
  ret i32 0
}

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local i32 @BT_DBG(i8*, i8*, ...) #1

declare dso_local %struct.sock* @l2cap_get_sock_by_psm(i32, i8*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @hci_conn_check_link_mode(i32) #1

declare dso_local i64 @sk_acceptq_is_full(%struct.sock*) #1

declare dso_local %struct.sock* @l2cap_sock_alloc(i32, i32*, i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i64 @__l2cap_get_chan_by_dcid(%struct.l2cap_chan_list*, i32) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @sock_set_flag(%struct.sock*, i32) #1

declare dso_local i32 @l2cap_sock_kill(%struct.sock*) #1

declare dso_local i32 @hci_conn_hold(i32) #1

declare dso_local i32 @l2cap_sock_init(%struct.sock*, %struct.sock*) #1

declare dso_local i32 @bacpy(i32*, i32) #1

declare dso_local %struct.TYPE_4__* @bt_sk(%struct.sock*) #1

declare dso_local %struct.TYPE_3__* @l2cap_pi(%struct.sock*) #1

declare dso_local i32 @__l2cap_chan_add(%struct.l2cap_conn*, %struct.sock*, %struct.sock*) #1

declare dso_local i32 @l2cap_sock_set_timer(%struct.sock*, i32) #1

declare dso_local i64 @l2cap_check_security(%struct.sock*) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

declare dso_local i32 @l2cap_send_cmd(%struct.l2cap_conn*, i32, i32, i32, %struct.l2cap_info_req*) #1

declare dso_local i32 @l2cap_get_ident(%struct.l2cap_conn*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
