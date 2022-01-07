; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_bcast.c_tipc_bclink_recv_pkt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_bcast.c_tipc_bclink_recv_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.tipc_node* }
%struct.tipc_node = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i64, i64, i32, %struct.sk_buff*, i32, i32 }
%struct.sk_buff = type { %struct.sk_buff* }
%struct.tipc_msg = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"<BC<<<\00", align 1
@tipc_net_id = common dso_local global i64 0, align 8
@BCAST_PROTOCOL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"<BCNACK<<<\00", align 1
@tipc_own_addr = common dso_local global i64 0, align 8
@bc_lock = common dso_local global i32 0, align 4
@bcl = common dso_local global %struct.TYPE_8__* null, align 8
@MSG_BUNDLER = common dso_local global i64 0, align 8
@MSG_FRAGMENTER = common dso_local global i64 0, align 8
@TIPC_BCAST_LOSS_RATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_bclink_recv_pkt(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.tipc_msg*, align 8
  %4 = alloca %struct.tipc_node*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %11 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %10)
  store %struct.tipc_msg* %11, %struct.tipc_msg** %3, align 8
  %12 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %13 = call i32 @msg_prevnode(%struct.tipc_msg* %12)
  %14 = call %struct.tipc_node* @tipc_node_find(i32 %13)
  store %struct.tipc_node* %14, %struct.tipc_node** %4, align 8
  %15 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %16 = call i32 @msg_dbg(%struct.tipc_msg* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.tipc_node*, %struct.tipc_node** %4, align 8
  %18 = icmp ne %struct.tipc_node* %17, null
  br i1 %18, label %19, label %34

19:                                               ; preds = %1
  %20 = load %struct.tipc_node*, %struct.tipc_node** %4, align 8
  %21 = call i32 @tipc_node_is_up(%struct.tipc_node* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %19
  %24 = load %struct.tipc_node*, %struct.tipc_node** %4, align 8
  %25 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %31 = call i64 @msg_mc_netid(%struct.tipc_msg* %30)
  %32 = load i64, i64* @tipc_net_id, align 8
  %33 = icmp ne i64 %31, %32
  br label %34

34:                                               ; preds = %29, %23, %19, %1
  %35 = phi i1 [ true, %23 ], [ true, %19 ], [ true, %1 ], [ %33, %29 ]
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %41 = call i32 @buf_discard(%struct.sk_buff* %40)
  br label %329

42:                                               ; preds = %34
  %43 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %44 = call i64 @msg_user(%struct.tipc_msg* %43)
  %45 = load i64, i64* @BCAST_PROTOCOL, align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %100

50:                                               ; preds = %42
  %51 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %52 = call i32 @msg_dbg(%struct.tipc_msg* %51, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %53 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %54 = call i64 @msg_destnode(%struct.tipc_msg* %53)
  %55 = load i64, i64* @tipc_own_addr, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %87

57:                                               ; preds = %50
  %58 = load %struct.tipc_node*, %struct.tipc_node** %4, align 8
  %59 = call i32 @tipc_node_lock(%struct.tipc_node* %58)
  %60 = load %struct.tipc_node*, %struct.tipc_node** %4, align 8
  %61 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %62 = call i32 @msg_bcast_ack(%struct.tipc_msg* %61)
  %63 = call i32 @tipc_bclink_acknowledge(%struct.tipc_node* %60, i32 %62)
  %64 = load %struct.tipc_node*, %struct.tipc_node** %4, align 8
  %65 = call i32 @tipc_node_unlock(%struct.tipc_node* %64)
  %66 = call i32 @spin_lock_bh(i32* @bc_lock)
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** @bcl, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 8
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 8
  %72 = load %struct.tipc_node*, %struct.tipc_node** %4, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** @bcl, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  store %struct.tipc_node* %72, %struct.tipc_node** %76, align 8
  %77 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %78 = call i32 @msg_bcgap_after(%struct.tipc_msg* %77)
  %79 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %80 = call i32 @msg_bcgap_to(%struct.tipc_msg* %79)
  %81 = call i32 @bclink_retransmit_pkt(i32 %78, i32 %80)
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** @bcl, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  store %struct.tipc_node* null, %struct.tipc_node** %85, align 8
  %86 = call i32 @spin_unlock_bh(i32* @bc_lock)
  br label %97

87:                                               ; preds = %50
  %88 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %89 = call i64 @msg_destnode(%struct.tipc_msg* %88)
  %90 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %91 = call i32 @msg_bcast_tag(%struct.tipc_msg* %90)
  %92 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %93 = call i32 @msg_bcgap_after(%struct.tipc_msg* %92)
  %94 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %95 = call i32 @msg_bcgap_to(%struct.tipc_msg* %94)
  %96 = call i32 @tipc_bclink_peek_nack(i64 %89, i32 %91, i32 %93, i32 %95)
  br label %97

97:                                               ; preds = %87, %57
  %98 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %99 = call i32 @buf_discard(%struct.sk_buff* %98)
  br label %329

100:                                              ; preds = %42
  %101 = load %struct.tipc_node*, %struct.tipc_node** %4, align 8
  %102 = call i32 @tipc_node_lock(%struct.tipc_node* %101)
  br label %103

103:                                              ; preds = %225, %100
  %104 = load %struct.tipc_node*, %struct.tipc_node** %4, align 8
  %105 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 5
  %107 = load %struct.sk_buff*, %struct.sk_buff** %106, align 8
  store %struct.sk_buff* %107, %struct.sk_buff** %7, align 8
  %108 = load %struct.tipc_node*, %struct.tipc_node** %4, align 8
  %109 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = add nsw i64 %111, 1
  %113 = call i64 @mod(i64 %112)
  store i64 %113, i64* %5, align 8
  %114 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %115 = call i64 @msg_seqno(%struct.tipc_msg* %114)
  store i64 %115, i64* %6, align 8
  %116 = load i64, i64* %6, align 8
  %117 = load i64, i64* %5, align 8
  %118 = icmp eq i64 %116, %117
  %119 = zext i1 %118 to i32
  %120 = call i64 @likely(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %238

122:                                              ; preds = %103
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** @bcl, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 7
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %125, align 4
  %128 = load %struct.tipc_node*, %struct.tipc_node** %4, align 8
  %129 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = add nsw i64 %131, 1
  store i64 %132, i64* %130, align 8
  %133 = load %struct.tipc_node*, %struct.tipc_node** %4, align 8
  %134 = call i32 @bclink_set_gap(%struct.tipc_node* %133)
  %135 = load i64, i64* %6, align 8
  %136 = call i32 @bclink_ack_allowed(i64 %135)
  %137 = call i64 @unlikely(i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %147

139:                                              ; preds = %122
  %140 = load %struct.tipc_node*, %struct.tipc_node** %4, align 8
  %141 = call i32 @bclink_send_ack(%struct.tipc_node* %140)
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** @bcl, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 6
  %145 = load i32, i32* %144, align 8
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %144, align 8
  br label %147

147:                                              ; preds = %139, %122
  %148 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %149 = call i32 @msg_isdata(%struct.tipc_msg* %148)
  %150 = call i64 @likely(i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %147
  %153 = load %struct.tipc_node*, %struct.tipc_node** %4, align 8
  %154 = call i32 @tipc_node_unlock(%struct.tipc_node* %153)
  %155 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %156 = call i32 @tipc_port_recv_mcast(%struct.sk_buff* %155, i32* null)
  br label %215

157:                                              ; preds = %147
  %158 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %159 = call i64 @msg_user(%struct.tipc_msg* %158)
  %160 = load i64, i64* @MSG_BUNDLER, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %181

162:                                              ; preds = %157
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** @bcl, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 5
  %166 = load i32, i32* %165, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %165, align 4
  %168 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %169 = call i64 @msg_msgcnt(%struct.tipc_msg* %168)
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** @bcl, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 4
  %173 = load i32, i32* %172, align 8
  %174 = sext i32 %173 to i64
  %175 = add nsw i64 %174, %169
  %176 = trunc i64 %175 to i32
  store i32 %176, i32* %172, align 8
  %177 = load %struct.tipc_node*, %struct.tipc_node** %4, align 8
  %178 = call i32 @tipc_node_unlock(%struct.tipc_node* %177)
  %179 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %180 = call i32 @tipc_link_recv_bundle(%struct.sk_buff* %179)
  br label %214

181:                                              ; preds = %157
  %182 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %183 = call i64 @msg_user(%struct.tipc_msg* %182)
  %184 = load i64, i64* @MSG_FRAGMENTER, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %208

186:                                              ; preds = %181
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** @bcl, align 8
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %189, align 4
  %192 = load %struct.tipc_node*, %struct.tipc_node** %4, align 8
  %193 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 6
  %195 = call i64 @tipc_link_recv_fragment(i32* %194, %struct.sk_buff** %2, %struct.tipc_msg** %3)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %203

197:                                              ; preds = %186
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** @bcl, align 8
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %200, align 8
  br label %203

203:                                              ; preds = %197, %186
  %204 = load %struct.tipc_node*, %struct.tipc_node** %4, align 8
  %205 = call i32 @tipc_node_unlock(%struct.tipc_node* %204)
  %206 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %207 = call i32 @tipc_net_route_msg(%struct.sk_buff* %206)
  br label %213

208:                                              ; preds = %181
  %209 = load %struct.tipc_node*, %struct.tipc_node** %4, align 8
  %210 = call i32 @tipc_node_unlock(%struct.tipc_node* %209)
  %211 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %212 = call i32 @tipc_net_route_msg(%struct.sk_buff* %211)
  br label %213

213:                                              ; preds = %208, %203
  br label %214

214:                                              ; preds = %213, %162
  br label %215

215:                                              ; preds = %214, %152
  %216 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %217 = icmp ne %struct.sk_buff* %216, null
  br i1 %217, label %218, label %237

218:                                              ; preds = %215
  %219 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %220 = call i64 @buf_seqno(%struct.sk_buff* %219)
  %221 = load i64, i64* %5, align 8
  %222 = add nsw i64 %221, 1
  %223 = call i64 @mod(i64 %222)
  %224 = icmp eq i64 %220, %223
  br i1 %224, label %225, label %237

225:                                              ; preds = %218
  %226 = load %struct.tipc_node*, %struct.tipc_node** %4, align 8
  %227 = call i32 @tipc_node_lock(%struct.tipc_node* %226)
  %228 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %228, %struct.sk_buff** %2, align 8
  %229 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %230 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %229)
  store %struct.tipc_msg* %230, %struct.tipc_msg** %3, align 8
  %231 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %232 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %231, i32 0, i32 0
  %233 = load %struct.sk_buff*, %struct.sk_buff** %232, align 8
  %234 = load %struct.tipc_node*, %struct.tipc_node** %4, align 8
  %235 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i32 0, i32 5
  store %struct.sk_buff* %233, %struct.sk_buff** %236, align 8
  br label %103

237:                                              ; preds = %218, %215
  br label %329

238:                                              ; preds = %103
  %239 = load i64, i64* %5, align 8
  %240 = load i64, i64* %6, align 8
  %241 = call i64 @less(i64 %239, i64 %240)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %317

243:                                              ; preds = %238
  %244 = load %struct.tipc_node*, %struct.tipc_node** %4, align 8
  %245 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 1
  %247 = load i64, i64* %246, align 8
  store i64 %247, i64* %8, align 8
  %248 = load %struct.tipc_node*, %struct.tipc_node** %4, align 8
  %249 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 2
  %251 = load i64, i64* %250, align 8
  store i64 %251, i64* %9, align 8
  %252 = load %struct.tipc_node*, %struct.tipc_node** %4, align 8
  %253 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %253, i32 0, i32 5
  %255 = load %struct.tipc_node*, %struct.tipc_node** %4, align 8
  %256 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %256, i32 0, i32 4
  %258 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %259 = call i64 @tipc_link_defer_pkt(%struct.sk_buff** %254, i32* %257, %struct.sk_buff* %258)
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %299

261:                                              ; preds = %243
  %262 = load %struct.tipc_node*, %struct.tipc_node** %4, align 8
  %263 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %263, i32 0, i32 3
  %265 = load i64, i64* %264, align 8
  %266 = add nsw i64 %265, 1
  store i64 %266, i64* %264, align 8
  %267 = load %struct.TYPE_8__*, %struct.TYPE_8__** @bcl, align 8
  %268 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %269, align 4
  %272 = load i64, i64* %6, align 8
  %273 = load i64, i64* %8, align 8
  %274 = add nsw i64 %273, 1
  %275 = call i64 @mod(i64 %274)
  %276 = icmp eq i64 %272, %275
  br i1 %276, label %277, label %282

277:                                              ; preds = %261
  %278 = load i64, i64* %6, align 8
  %279 = load %struct.tipc_node*, %struct.tipc_node** %4, align 8
  %280 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %280, i32 0, i32 1
  store i64 %278, i64* %281, align 8
  br label %298

282:                                              ; preds = %261
  %283 = load i64, i64* %8, align 8
  %284 = load i64, i64* %6, align 8
  %285 = call i64 @less(i64 %283, i64 %284)
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %297

287:                                              ; preds = %282
  %288 = load i64, i64* %6, align 8
  %289 = load i64, i64* %9, align 8
  %290 = call i64 @less(i64 %288, i64 %289)
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %297

292:                                              ; preds = %287
  %293 = load i64, i64* %6, align 8
  %294 = load %struct.tipc_node*, %struct.tipc_node** %4, align 8
  %295 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %295, i32 0, i32 2
  store i64 %293, i64* %296, align 8
  br label %297

297:                                              ; preds = %292, %287, %282
  br label %298

298:                                              ; preds = %297, %277
  br label %299

299:                                              ; preds = %298, %243
  %300 = load %struct.tipc_node*, %struct.tipc_node** %4, align 8
  %301 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %300, i32 0, i32 0
  %302 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %301, i32 0, i32 3
  %303 = load i64, i64* %302, align 8
  %304 = call i32 @bclink_ack_allowed(i64 %303)
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %316

306:                                              ; preds = %299
  %307 = load i64, i64* %9, align 8
  %308 = load i64, i64* %8, align 8
  %309 = icmp ne i64 %307, %308
  br i1 %309, label %310, label %313

310:                                              ; preds = %306
  %311 = load %struct.tipc_node*, %struct.tipc_node** %4, align 8
  %312 = call i32 @bclink_send_nack(%struct.tipc_node* %311)
  br label %313

313:                                              ; preds = %310, %306
  %314 = load %struct.tipc_node*, %struct.tipc_node** %4, align 8
  %315 = call i32 @bclink_set_gap(%struct.tipc_node* %314)
  br label %316

316:                                              ; preds = %313, %299
  br label %325

317:                                              ; preds = %238
  %318 = load %struct.TYPE_8__*, %struct.TYPE_8__** @bcl, align 8
  %319 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %320, align 8
  %323 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %324 = call i32 @buf_discard(%struct.sk_buff* %323)
  br label %325

325:                                              ; preds = %317, %316
  br label %326

326:                                              ; preds = %325
  %327 = load %struct.tipc_node*, %struct.tipc_node** %4, align 8
  %328 = call i32 @tipc_node_unlock(%struct.tipc_node* %327)
  br label %329

329:                                              ; preds = %326, %237, %97, %39
  ret void
}

declare dso_local %struct.tipc_msg* @buf_msg(%struct.sk_buff*) #1

declare dso_local %struct.tipc_node* @tipc_node_find(i32) #1

declare dso_local i32 @msg_prevnode(%struct.tipc_msg*) #1

declare dso_local i32 @msg_dbg(%struct.tipc_msg*, i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @tipc_node_is_up(%struct.tipc_node*) #1

declare dso_local i64 @msg_mc_netid(%struct.tipc_msg*) #1

declare dso_local i32 @buf_discard(%struct.sk_buff*) #1

declare dso_local i64 @msg_user(%struct.tipc_msg*) #1

declare dso_local i64 @msg_destnode(%struct.tipc_msg*) #1

declare dso_local i32 @tipc_node_lock(%struct.tipc_node*) #1

declare dso_local i32 @tipc_bclink_acknowledge(%struct.tipc_node*, i32) #1

declare dso_local i32 @msg_bcast_ack(%struct.tipc_msg*) #1

declare dso_local i32 @tipc_node_unlock(%struct.tipc_node*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @bclink_retransmit_pkt(i32, i32) #1

declare dso_local i32 @msg_bcgap_after(%struct.tipc_msg*) #1

declare dso_local i32 @msg_bcgap_to(%struct.tipc_msg*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @tipc_bclink_peek_nack(i64, i32, i32, i32) #1

declare dso_local i32 @msg_bcast_tag(%struct.tipc_msg*) #1

declare dso_local i64 @mod(i64) #1

declare dso_local i64 @msg_seqno(%struct.tipc_msg*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @bclink_set_gap(%struct.tipc_node*) #1

declare dso_local i32 @bclink_ack_allowed(i64) #1

declare dso_local i32 @bclink_send_ack(%struct.tipc_node*) #1

declare dso_local i32 @msg_isdata(%struct.tipc_msg*) #1

declare dso_local i32 @tipc_port_recv_mcast(%struct.sk_buff*, i32*) #1

declare dso_local i64 @msg_msgcnt(%struct.tipc_msg*) #1

declare dso_local i32 @tipc_link_recv_bundle(%struct.sk_buff*) #1

declare dso_local i64 @tipc_link_recv_fragment(i32*, %struct.sk_buff**, %struct.tipc_msg**) #1

declare dso_local i32 @tipc_net_route_msg(%struct.sk_buff*) #1

declare dso_local i64 @buf_seqno(%struct.sk_buff*) #1

declare dso_local i64 @less(i64, i64) #1

declare dso_local i64 @tipc_link_defer_pkt(%struct.sk_buff**, i32*, %struct.sk_buff*) #1

declare dso_local i32 @bclink_send_nack(%struct.tipc_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
