; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_input.c_dccp_rcv_state_process.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_input.c_dccp_rcv_state_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32 (%struct.sock*)* }
%struct.sk_buff = type { i32 }
%struct.dccp_hdr = type { i64 }
%struct.dccp_sock = type { i64, i32* }
%struct.dccp_skb_cb = type { i64, i32, i8* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 (%struct.sock*, %struct.sk_buff*)* }

@DCCP_LISTEN = common dso_local global i32 0, align 4
@DCCP_PKT_REQUEST = common dso_local global i64 0, align 8
@DCCP_PKT_RESET = common dso_local global i64 0, align 8
@DCCP_RESET_CODE_NO_CONNECTION = common dso_local global i8* null, align 8
@DCCP_CLOSED = common dso_local global i32 0, align 4
@DCCP_PKT_WITHOUT_ACK_SEQ = common dso_local global i64 0, align 8
@DCCP_ACKVEC_STATE_RECEIVED = common dso_local global i32 0, align 4
@DCCP_ROLE_CLIENT = common dso_local global i64 0, align 8
@DCCP_PKT_RESPONSE = common dso_local global i64 0, align 8
@DCCP_PKT_DATA = common dso_local global i64 0, align 8
@DCCP_PKT_SYNC = common dso_local global i64 0, align 8
@DCCP_PKT_CLOSEREQ = common dso_local global i64 0, align 8
@DCCP_PKT_CLOSE = common dso_local global i64 0, align 8
@DCCP_PKT_ACK = common dso_local global i64 0, align 8
@DCCP_PKT_DATAACK = common dso_local global i64 0, align 8
@SOCK_WAKE_IO = common dso_local global i32 0, align 4
@POLL_OUT = common dso_local global i32 0, align 4
@DCCP_PKT_SYNCACK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dccp_rcv_state_process(%struct.sock* %0, %struct.sk_buff* %1, %struct.dccp_hdr* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.dccp_hdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dccp_sock*, align 8
  %11 = alloca %struct.dccp_skb_cb*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.dccp_hdr* %2, %struct.dccp_hdr** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.sock*, %struct.sock** %6, align 8
  %15 = call %struct.dccp_sock* @dccp_sk(%struct.sock* %14)
  store %struct.dccp_sock* %15, %struct.dccp_sock** %10, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %17 = call %struct.dccp_skb_cb* @DCCP_SKB_CB(%struct.sk_buff* %16)
  store %struct.dccp_skb_cb* %17, %struct.dccp_skb_cb** %11, align 8
  %18 = load %struct.sock*, %struct.sock** %6, align 8
  %19 = getelementptr inbounds %struct.sock, %struct.sock* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %21 = load %struct.sock*, %struct.sock** %6, align 8
  %22 = getelementptr inbounds %struct.sock, %struct.sock* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @DCCP_LISTEN, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %56

26:                                               ; preds = %4
  %27 = load %struct.dccp_hdr*, %struct.dccp_hdr** %8, align 8
  %28 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @DCCP_PKT_REQUEST, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %26
  %33 = load %struct.sock*, %struct.sock** %6, align 8
  %34 = call %struct.TYPE_4__* @inet_csk(%struct.sock* %33)
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64 (%struct.sock*, %struct.sk_buff*)*, i64 (%struct.sock*, %struct.sk_buff*)** %37, align 8
  %39 = load %struct.sock*, %struct.sock** %6, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %41 = call i64 %38(%struct.sock* %39, %struct.sk_buff* %40)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %32
  store i32 1, i32* %5, align 4
  br label %275

44:                                               ; preds = %32
  br label %271

45:                                               ; preds = %26
  %46 = load %struct.dccp_hdr*, %struct.dccp_hdr** %8, align 8
  %47 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @DCCP_PKT_RESET, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %271

52:                                               ; preds = %45
  %53 = load i8*, i8** @DCCP_RESET_CODE_NO_CONNECTION, align 8
  %54 = load %struct.dccp_skb_cb*, %struct.dccp_skb_cb** %11, align 8
  %55 = getelementptr inbounds %struct.dccp_skb_cb, %struct.dccp_skb_cb* %54, i32 0, i32 2
  store i8* %53, i8** %55, align 8
  store i32 1, i32* %5, align 4
  br label %275

56:                                               ; preds = %4
  %57 = load %struct.sock*, %struct.sock** %6, align 8
  %58 = getelementptr inbounds %struct.sock, %struct.sock* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @DCCP_CLOSED, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load i8*, i8** @DCCP_RESET_CODE_NO_CONNECTION, align 8
  %64 = load %struct.dccp_skb_cb*, %struct.dccp_skb_cb** %11, align 8
  %65 = getelementptr inbounds %struct.dccp_skb_cb, %struct.dccp_skb_cb* %64, i32 0, i32 2
  store i8* %63, i8** %65, align 8
  store i32 1, i32* %5, align 4
  br label %275

66:                                               ; preds = %56
  br label %67

67:                                               ; preds = %66
  %68 = load %struct.sock*, %struct.sock** %6, align 8
  %69 = getelementptr inbounds %struct.sock, %struct.sock* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 129
  br i1 %71, label %72, label %121

72:                                               ; preds = %67
  %73 = load %struct.sock*, %struct.sock** %6, align 8
  %74 = getelementptr inbounds %struct.sock, %struct.sock* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 128
  br i1 %76, label %77, label %121

77:                                               ; preds = %72
  %78 = load %struct.sock*, %struct.sock** %6, align 8
  %79 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %80 = call i64 @dccp_check_seqno(%struct.sock* %78, %struct.sk_buff* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  br label %271

83:                                               ; preds = %77
  %84 = load %struct.sock*, %struct.sock** %6, align 8
  %85 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %86 = call i64 @dccp_parse_options(%struct.sock* %84, i32* null, %struct.sk_buff* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  store i32 1, i32* %5, align 4
  br label %275

89:                                               ; preds = %83
  %90 = load %struct.dccp_skb_cb*, %struct.dccp_skb_cb** %11, align 8
  %91 = getelementptr inbounds %struct.dccp_skb_cb, %struct.dccp_skb_cb* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @DCCP_PKT_WITHOUT_ACK_SEQ, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %89
  %96 = load %struct.sock*, %struct.sock** %6, align 8
  %97 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %98 = call i32 @dccp_event_ack_recv(%struct.sock* %96, %struct.sk_buff* %97)
  br label %99

99:                                               ; preds = %95, %89
  %100 = load %struct.dccp_sock*, %struct.dccp_sock** %10, align 8
  %101 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %117

104:                                              ; preds = %99
  %105 = load %struct.dccp_sock*, %struct.dccp_sock** %10, align 8
  %106 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = load %struct.sock*, %struct.sock** %6, align 8
  %109 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %110 = call %struct.dccp_skb_cb* @DCCP_SKB_CB(%struct.sk_buff* %109)
  %111 = getelementptr inbounds %struct.dccp_skb_cb, %struct.dccp_skb_cb* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @DCCP_ACKVEC_STATE_RECEIVED, align 4
  %114 = call i64 @dccp_ackvec_add(i32* %107, %struct.sock* %108, i32 %112, i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %104
  br label %271

117:                                              ; preds = %104, %99
  %118 = load %struct.sock*, %struct.sock** %6, align 8
  %119 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %120 = call i32 @dccp_deliver_input_to_ccids(%struct.sock* %118, %struct.sk_buff* %119)
  br label %121

121:                                              ; preds = %117, %72, %67
  %122 = load %struct.dccp_hdr*, %struct.dccp_hdr** %8, align 8
  %123 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @DCCP_PKT_RESET, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %131

127:                                              ; preds = %121
  %128 = load %struct.sock*, %struct.sock** %6, align 8
  %129 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %130 = call i32 @dccp_rcv_reset(%struct.sock* %128, %struct.sk_buff* %129)
  store i32 0, i32* %5, align 4
  br label %275

131:                                              ; preds = %121
  %132 = load %struct.dccp_sock*, %struct.dccp_sock** %10, align 8
  %133 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @DCCP_ROLE_CLIENT, align 8
  %136 = icmp ne i64 %134, %135
  br i1 %136, label %137, label %143

137:                                              ; preds = %131
  %138 = load %struct.dccp_hdr*, %struct.dccp_hdr** %8, align 8
  %139 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @DCCP_PKT_RESPONSE, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %166, label %143

143:                                              ; preds = %137, %131
  %144 = load %struct.dccp_sock*, %struct.dccp_sock** %10, align 8
  %145 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @DCCP_ROLE_CLIENT, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %155

149:                                              ; preds = %143
  %150 = load %struct.dccp_hdr*, %struct.dccp_hdr** %8, align 8
  %151 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @DCCP_PKT_REQUEST, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %166, label %155

155:                                              ; preds = %149, %143
  %156 = load %struct.sock*, %struct.sock** %6, align 8
  %157 = getelementptr inbounds %struct.sock, %struct.sock* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = icmp eq i32 %158, 128
  br i1 %159, label %160, label %173

160:                                              ; preds = %155
  %161 = load %struct.dccp_hdr*, %struct.dccp_hdr** %8, align 8
  %162 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @DCCP_PKT_DATA, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %173

166:                                              ; preds = %160, %149, %137
  %167 = load %struct.sock*, %struct.sock** %6, align 8
  %168 = load %struct.dccp_skb_cb*, %struct.dccp_skb_cb** %11, align 8
  %169 = getelementptr inbounds %struct.dccp_skb_cb, %struct.dccp_skb_cb* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = load i64, i64* @DCCP_PKT_SYNC, align 8
  %172 = call i32 @dccp_send_sync(%struct.sock* %167, i32 %170, i64 %171)
  br label %271

173:                                              ; preds = %160, %155
  %174 = load %struct.dccp_hdr*, %struct.dccp_hdr** %8, align 8
  %175 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @DCCP_PKT_CLOSEREQ, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %186

179:                                              ; preds = %173
  %180 = load %struct.sock*, %struct.sock** %6, align 8
  %181 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %182 = call i64 @dccp_rcv_closereq(%struct.sock* %180, %struct.sk_buff* %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %179
  store i32 0, i32* %5, align 4
  br label %275

185:                                              ; preds = %179
  br label %271

186:                                              ; preds = %173
  %187 = load %struct.dccp_hdr*, %struct.dccp_hdr** %8, align 8
  %188 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @DCCP_PKT_CLOSE, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %199

192:                                              ; preds = %186
  %193 = load %struct.sock*, %struct.sock** %6, align 8
  %194 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %195 = call i64 @dccp_rcv_close(%struct.sock* %193, %struct.sk_buff* %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %192
  store i32 0, i32* %5, align 4
  br label %275

198:                                              ; preds = %192
  br label %271

199:                                              ; preds = %186
  br label %200

200:                                              ; preds = %199
  br label %201

201:                                              ; preds = %200
  br label %202

202:                                              ; preds = %201
  %203 = load %struct.sock*, %struct.sock** %6, align 8
  %204 = getelementptr inbounds %struct.sock, %struct.sock* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  switch i32 %205, label %225 [
    i32 129, label %206
    i32 128, label %219
    i32 130, label %219
  ]

206:                                              ; preds = %202
  %207 = load %struct.sock*, %struct.sock** %6, align 8
  %208 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %209 = load %struct.dccp_hdr*, %struct.dccp_hdr** %8, align 8
  %210 = load i32, i32* %9, align 4
  %211 = call i32 @dccp_rcv_request_sent_state_process(%struct.sock* %207, %struct.sk_buff* %208, %struct.dccp_hdr* %209, i32 %210)
  store i32 %211, i32* %13, align 4
  %212 = load i32, i32* %13, align 4
  %213 = icmp sge i32 %212, 0
  br i1 %213, label %214, label %216

214:                                              ; preds = %206
  %215 = load i32, i32* %13, align 4
  store i32 %215, i32* %5, align 4
  br label %275

216:                                              ; preds = %206
  %217 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %218 = call i32 @__kfree_skb(%struct.sk_buff* %217)
  store i32 0, i32* %5, align 4
  br label %275

219:                                              ; preds = %202, %202
  %220 = load %struct.sock*, %struct.sock** %6, align 8
  %221 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %222 = load %struct.dccp_hdr*, %struct.dccp_hdr** %8, align 8
  %223 = load i32, i32* %9, align 4
  %224 = call i32 @dccp_rcv_respond_partopen_state_process(%struct.sock* %220, %struct.sk_buff* %221, %struct.dccp_hdr* %222, i32 %223)
  store i32 %224, i32* %13, align 4
  br label %225

225:                                              ; preds = %202, %219
  %226 = load %struct.dccp_hdr*, %struct.dccp_hdr** %8, align 8
  %227 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* @DCCP_PKT_ACK, align 8
  %230 = icmp eq i64 %228, %229
  br i1 %230, label %237, label %231

231:                                              ; preds = %225
  %232 = load %struct.dccp_hdr*, %struct.dccp_hdr** %8, align 8
  %233 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = load i64, i64* @DCCP_PKT_DATAACK, align 8
  %236 = icmp eq i64 %234, %235
  br i1 %236, label %237, label %250

237:                                              ; preds = %231, %225
  %238 = load i32, i32* %12, align 4
  switch i32 %238, label %249 [
    i32 130, label %239
  ]

239:                                              ; preds = %237
  %240 = load %struct.sock*, %struct.sock** %6, align 8
  %241 = getelementptr inbounds %struct.sock, %struct.sock* %240, i32 0, i32 1
  %242 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %241, align 8
  %243 = load %struct.sock*, %struct.sock** %6, align 8
  %244 = call i32 %242(%struct.sock* %243)
  %245 = load %struct.sock*, %struct.sock** %6, align 8
  %246 = load i32, i32* @SOCK_WAKE_IO, align 4
  %247 = load i32, i32* @POLL_OUT, align 4
  %248 = call i32 @sk_wake_async(%struct.sock* %245, i32 %246, i32 %247)
  br label %249

249:                                              ; preds = %237, %239
  br label %267

250:                                              ; preds = %231
  %251 = load %struct.dccp_hdr*, %struct.dccp_hdr** %8, align 8
  %252 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = load i64, i64* @DCCP_PKT_SYNC, align 8
  %255 = icmp eq i64 %253, %254
  %256 = zext i1 %255 to i32
  %257 = call i64 @unlikely(i32 %256)
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %266

259:                                              ; preds = %250
  %260 = load %struct.sock*, %struct.sock** %6, align 8
  %261 = load %struct.dccp_skb_cb*, %struct.dccp_skb_cb** %11, align 8
  %262 = getelementptr inbounds %struct.dccp_skb_cb, %struct.dccp_skb_cb* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 8
  %264 = load i64, i64* @DCCP_PKT_SYNCACK, align 8
  %265 = call i32 @dccp_send_sync(%struct.sock* %260, i32 %263, i64 %264)
  br label %271

266:                                              ; preds = %250
  br label %267

267:                                              ; preds = %266, %249
  %268 = load i32, i32* %13, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %274, label %270

270:                                              ; preds = %267
  br label %271

271:                                              ; preds = %270, %259, %198, %185, %166, %116, %82, %51, %44
  %272 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %273 = call i32 @__kfree_skb(%struct.sk_buff* %272)
  br label %274

274:                                              ; preds = %271, %267
  store i32 0, i32* %5, align 4
  br label %275

275:                                              ; preds = %274, %216, %214, %197, %184, %127, %88, %62, %52, %43
  %276 = load i32, i32* %5, align 4
  ret i32 %276
}

declare dso_local %struct.dccp_sock* @dccp_sk(%struct.sock*) #1

declare dso_local %struct.dccp_skb_cb* @DCCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_4__* @inet_csk(%struct.sock*) #1

declare dso_local i64 @dccp_check_seqno(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i64 @dccp_parse_options(%struct.sock*, i32*, %struct.sk_buff*) #1

declare dso_local i32 @dccp_event_ack_recv(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i64 @dccp_ackvec_add(i32*, %struct.sock*, i32, i32) #1

declare dso_local i32 @dccp_deliver_input_to_ccids(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @dccp_rcv_reset(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @dccp_send_sync(%struct.sock*, i32, i64) #1

declare dso_local i64 @dccp_rcv_closereq(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i64 @dccp_rcv_close(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @dccp_rcv_request_sent_state_process(%struct.sock*, %struct.sk_buff*, %struct.dccp_hdr*, i32) #1

declare dso_local i32 @__kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @dccp_rcv_respond_partopen_state_process(%struct.sock*, %struct.sk_buff*, %struct.dccp_hdr*, i32) #1

declare dso_local i32 @sk_wake_async(%struct.sock*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
