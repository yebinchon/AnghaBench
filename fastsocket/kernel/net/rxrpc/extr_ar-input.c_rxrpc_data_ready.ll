; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-input.c_rxrpc_data_ready.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-input.c_rxrpc_data_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { %struct.rxrpc_local* }
%struct.rxrpc_local = type { i32, i32, i32 }
%struct.rxrpc_connection = type { i32 }
%struct.rxrpc_transport = type { i32 }
%struct.rxrpc_skb_priv = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64, i64, i64, i64, i64 }
%struct.rxrpc_peer = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"%p, %d\00", align 1
@rxrpc_local_lock = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c" [local dead]\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"UDP socket error %d\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"recv skb %p\00", align 1
@init_net = common dso_local global i32 0, align 4
@UDP_MIB_INERRORS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c" [CSUM failed]\00", align 1
@UDP_MIB_INDATAGRAMS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"Rx UDP packet from %08x:%04hu\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Rx RxRPC %s ep=%x call=%x:%x\00", align 1
@RXRPC_CLIENT_INITIATED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"ToServer\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"ToClient\00", align 1
@RXRPC_N_PACKET_TYPES = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [22 x i8] c"Rx Bad Packet Type %u\00", align 1
@RXRPC_PACKET_TYPE_DATA = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [13 x i8] c"CONN %p {%d}\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"can't route call\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"first packet\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c" [incoming]\00", align 1
@RX_INVALID_OPERATION = common dso_local global i32 0, align 4
@RX_CALL_DEAD = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [7 x i8] c"reject\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c" [no call]\00", align 1
@RX_PROTOCOL_ERROR = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [10 x i8] c" [badmsg]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rxrpc_data_ready(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rxrpc_connection*, align 8
  %6 = alloca %struct.rxrpc_transport*, align 8
  %7 = alloca %struct.rxrpc_skb_priv*, align 8
  %8 = alloca %struct.rxrpc_local*, align 8
  %9 = alloca %struct.rxrpc_peer*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.sock*, %struct.sock** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @_enter(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.sock* %12, i32 %13)
  %15 = call i32 (...) @irqs_disabled()
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @ASSERT(i32 %18)
  %20 = call i32 @read_lock_bh(i32* @rxrpc_local_lock)
  %21 = load %struct.sock*, %struct.sock** %3, align 8
  %22 = getelementptr inbounds %struct.sock, %struct.sock* %21, i32 0, i32 0
  %23 = load %struct.rxrpc_local*, %struct.rxrpc_local** %22, align 8
  store %struct.rxrpc_local* %23, %struct.rxrpc_local** %8, align 8
  %24 = load %struct.rxrpc_local*, %struct.rxrpc_local** %8, align 8
  %25 = icmp ne %struct.rxrpc_local* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %2
  %27 = load %struct.rxrpc_local*, %struct.rxrpc_local** %8, align 8
  %28 = getelementptr inbounds %struct.rxrpc_local, %struct.rxrpc_local* %27, i32 0, i32 2
  %29 = call i64 @atomic_read(i32* %28)
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load %struct.rxrpc_local*, %struct.rxrpc_local** %8, align 8
  %33 = call i32 @rxrpc_get_local(%struct.rxrpc_local* %32)
  br label %35

34:                                               ; preds = %26, %2
  store %struct.rxrpc_local* null, %struct.rxrpc_local** %8, align 8
  br label %35

35:                                               ; preds = %34, %31
  %36 = call i32 @read_unlock_bh(i32* @rxrpc_local_lock)
  %37 = load %struct.rxrpc_local*, %struct.rxrpc_local** %8, align 8
  %38 = icmp ne %struct.rxrpc_local* %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = call i32 @_leave(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %288

41:                                               ; preds = %35
  %42 = load %struct.sock*, %struct.sock** %3, align 8
  %43 = call %struct.sk_buff* @skb_recv_datagram(%struct.sock* %42, i32 0, i32 1, i32* %11)
  store %struct.sk_buff* %43, %struct.sk_buff** %10, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %45 = icmp ne %struct.sk_buff* %44, null
  br i1 %45, label %57, label %46

46:                                               ; preds = %41
  %47 = load %struct.rxrpc_local*, %struct.rxrpc_local** %8, align 8
  %48 = call i32 @rxrpc_put_local(%struct.rxrpc_local* %47)
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @EAGAIN, align 4
  %51 = sub nsw i32 0, %50
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %288

54:                                               ; preds = %46
  %55 = load i32, i32* %11, align 4
  %56 = call i32 (i8*, ...) @_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  br label %288

57:                                               ; preds = %41
  %58 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %59 = call i32 @rxrpc_new_skb(%struct.sk_buff* %58)
  %60 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %61 = call i32 (i8*, ...) @_net(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), %struct.sk_buff* %60)
  %62 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %63 = call i64 @skb_checksum_complete(%struct.sk_buff* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %57
  %66 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %67 = call i32 @rxrpc_free_skb(%struct.sk_buff* %66)
  %68 = load %struct.rxrpc_local*, %struct.rxrpc_local** %8, align 8
  %69 = call i32 @rxrpc_put_local(%struct.rxrpc_local* %68)
  %70 = load i32, i32* @UDP_MIB_INERRORS, align 4
  %71 = call i32 @UDP_INC_STATS_BH(i32* @init_net, i32 %70, i32 0)
  %72 = call i32 @_leave(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %288

73:                                               ; preds = %57
  %74 = load i32, i32* @UDP_MIB_INDATAGRAMS, align 4
  %75 = call i32 @UDP_INC_STATS_BH(i32* @init_net, i32 %74, i32 0)
  %76 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %77 = call i32 @skb_orphan(%struct.sk_buff* %76)
  %78 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %79 = call %struct.rxrpc_skb_priv* @rxrpc_skb(%struct.sk_buff* %78)
  store %struct.rxrpc_skb_priv* %79, %struct.rxrpc_skb_priv** %7, align 8
  %80 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %7, align 8
  %81 = call i32 @memset(%struct.rxrpc_skb_priv* %80, i32 0, i32 48)
  %82 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %83 = call %struct.TYPE_7__* @ip_hdr(%struct.sk_buff* %82)
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @ntohl(i64 %85)
  %87 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %88 = call %struct.TYPE_5__* @udp_hdr(%struct.sk_buff* %87)
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @ntohs(i32 %90)
  %92 = call i32 (i8*, ...) @_net(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %86, i32 %91)
  %93 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %94 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %7, align 8
  %95 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %94, i32 0, i32 0
  %96 = call i64 @skb_copy_bits(%struct.sk_buff* %93, i32 4, %struct.TYPE_6__* %95, i32 48)
  %97 = icmp slt i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %73
  br label %278

99:                                               ; preds = %73
  %100 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %101 = call i32 @pskb_pull(%struct.sk_buff* %100, i32 52)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %99
  %104 = call i32 (...) @BUG()
  br label %105

105:                                              ; preds = %103, %99
  %106 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %7, align 8
  %107 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @RXRPC_CLIENT_INITIATED, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  %113 = zext i1 %112 to i64
  %114 = select i1 %112, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0)
  %115 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %7, align 8
  %116 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @ntohl(i64 %118)
  %120 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %7, align 8
  %121 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @ntohl(i64 %123)
  %125 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %7, align 8
  %126 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = call i32 @ntohl(i64 %128)
  %130 = call i32 (i8*, ...) @_net(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i8* %114, i32 %119, i32 %124, i32 %129)
  %131 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %7, align 8
  %132 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 4
  %134 = load i64, i64* %133, align 8
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %143, label %136

136:                                              ; preds = %105
  %137 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %7, align 8
  %138 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 4
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @RXRPC_N_PACKET_TYPES, align 8
  %142 = icmp sge i64 %140, %141
  br i1 %142, label %143, label %149

143:                                              ; preds = %136, %105
  %144 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %7, align 8
  %145 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 4
  %147 = load i64, i64* %146, align 8
  %148 = call i32 @_proto(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i64 %147)
  br label %278

149:                                              ; preds = %136
  %150 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %7, align 8
  %151 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 4
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @RXRPC_PACKET_TYPE_DATA, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %169

156:                                              ; preds = %149
  %157 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %7, align 8
  %158 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 3
  %160 = load i64, i64* %159, align 8
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %168, label %162

162:                                              ; preds = %156
  %163 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %7, align 8
  %164 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 5
  %166 = load i64, i64* %165, align 8
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %162, %156
  br label %278

169:                                              ; preds = %162, %149
  %170 = load %struct.rxrpc_local*, %struct.rxrpc_local** %8, align 8
  %171 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %172 = call %struct.TYPE_7__* @ip_hdr(%struct.sk_buff* %171)
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %176 = call %struct.TYPE_5__* @udp_hdr(%struct.sk_buff* %175)
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call %struct.rxrpc_peer* @rxrpc_find_peer(%struct.rxrpc_local* %170, i64 %174, i32 %178)
  store %struct.rxrpc_peer* %179, %struct.rxrpc_peer** %9, align 8
  %180 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %9, align 8
  %181 = call i64 @IS_ERR(%struct.rxrpc_peer* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %169
  br label %227

184:                                              ; preds = %169
  %185 = load %struct.rxrpc_local*, %struct.rxrpc_local** %8, align 8
  %186 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %9, align 8
  %187 = call %struct.rxrpc_transport* @rxrpc_find_transport(%struct.rxrpc_local* %185, %struct.rxrpc_peer* %186)
  store %struct.rxrpc_transport* %187, %struct.rxrpc_transport** %6, align 8
  %188 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %9, align 8
  %189 = call i32 @rxrpc_put_peer(%struct.rxrpc_peer* %188)
  %190 = load %struct.rxrpc_transport*, %struct.rxrpc_transport** %6, align 8
  %191 = icmp ne %struct.rxrpc_transport* %190, null
  br i1 %191, label %193, label %192

192:                                              ; preds = %184
  br label %227

193:                                              ; preds = %184
  %194 = load %struct.rxrpc_transport*, %struct.rxrpc_transport** %6, align 8
  %195 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %7, align 8
  %196 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %195, i32 0, i32 0
  %197 = call %struct.rxrpc_connection* @rxrpc_find_connection(%struct.rxrpc_transport* %194, %struct.TYPE_6__* %196)
  store %struct.rxrpc_connection* %197, %struct.rxrpc_connection** %5, align 8
  %198 = load %struct.rxrpc_transport*, %struct.rxrpc_transport** %6, align 8
  %199 = call i32 @rxrpc_put_transport(%struct.rxrpc_transport* %198)
  %200 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %201 = icmp ne %struct.rxrpc_connection* %200, null
  br i1 %201, label %203, label %202

202:                                              ; preds = %193
  br label %227

203:                                              ; preds = %193
  %204 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %205 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %206 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = call i32 (i8*, ...) @_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), %struct.rxrpc_connection* %204, i32 %207)
  %209 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %7, align 8
  %210 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 3
  %212 = load i64, i64* %211, align 8
  %213 = icmp eq i64 %212, 0
  br i1 %213, label %214, label %218

214:                                              ; preds = %203
  %215 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %216 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %217 = call i32 @rxrpc_post_packet_to_conn(%struct.rxrpc_connection* %215, %struct.sk_buff* %216)
  br label %222

218:                                              ; preds = %203
  %219 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %220 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %221 = call i32 @rxrpc_post_packet_to_call(%struct.rxrpc_connection* %219, %struct.sk_buff* %220)
  br label %222

222:                                              ; preds = %218, %214
  %223 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %224 = call i32 @rxrpc_put_connection(%struct.rxrpc_connection* %223)
  %225 = load %struct.rxrpc_local*, %struct.rxrpc_local** %8, align 8
  %226 = call i32 @rxrpc_put_local(%struct.rxrpc_local* %225)
  br label %288

227:                                              ; preds = %202, %192, %183
  %228 = call i32 (i8*, ...) @_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  %229 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %7, align 8
  %230 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = load i32, i32* @RXRPC_CLIENT_INITIATED, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %266

236:                                              ; preds = %227
  %237 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %7, align 8
  %238 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i32 0, i32 4
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* @RXRPC_PACKET_TYPE_DATA, align 8
  %242 = icmp eq i64 %240, %241
  br i1 %242, label %243, label %266

243:                                              ; preds = %236
  %244 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %7, align 8
  %245 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 5
  %247 = load i64, i64* %246, align 8
  %248 = call i64 @cpu_to_be32(i32 1)
  %249 = icmp eq i64 %247, %248
  br i1 %249, label %250, label %262

250:                                              ; preds = %243
  %251 = call i32 (i8*, ...) @_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  %252 = load %struct.rxrpc_local*, %struct.rxrpc_local** %8, align 8
  %253 = getelementptr inbounds %struct.rxrpc_local, %struct.rxrpc_local* %252, i32 0, i32 1
  %254 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %255 = call i32 @skb_queue_tail(i32* %253, %struct.sk_buff* %254)
  %256 = load %struct.rxrpc_local*, %struct.rxrpc_local** %8, align 8
  %257 = getelementptr inbounds %struct.rxrpc_local, %struct.rxrpc_local* %256, i32 0, i32 0
  %258 = call i32 @rxrpc_queue_work(i32* %257)
  %259 = load %struct.rxrpc_local*, %struct.rxrpc_local** %8, align 8
  %260 = call i32 @rxrpc_put_local(%struct.rxrpc_local* %259)
  %261 = call i32 @_leave(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0))
  br label %288

262:                                              ; preds = %243
  %263 = load i32, i32* @RX_INVALID_OPERATION, align 4
  %264 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %265 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %264, i32 0, i32 0
  store i32 %263, i32* %265, align 4
  br label %270

266:                                              ; preds = %236, %227
  %267 = load i32, i32* @RX_CALL_DEAD, align 4
  %268 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %269 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %268, i32 0, i32 0
  store i32 %267, i32* %269, align 4
  br label %270

270:                                              ; preds = %266, %262
  %271 = call i32 (i8*, ...) @_debug(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0))
  %272 = load %struct.rxrpc_local*, %struct.rxrpc_local** %8, align 8
  %273 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %274 = call i32 @rxrpc_reject_packet(%struct.rxrpc_local* %272, %struct.sk_buff* %273)
  %275 = load %struct.rxrpc_local*, %struct.rxrpc_local** %8, align 8
  %276 = call i32 @rxrpc_put_local(%struct.rxrpc_local* %275)
  %277 = call i32 @_leave(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0))
  br label %288

278:                                              ; preds = %168, %143, %98
  %279 = load i32, i32* @RX_PROTOCOL_ERROR, align 4
  %280 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %281 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %280, i32 0, i32 0
  store i32 %279, i32* %281, align 4
  %282 = load %struct.rxrpc_local*, %struct.rxrpc_local** %8, align 8
  %283 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %284 = call i32 @rxrpc_reject_packet(%struct.rxrpc_local* %282, %struct.sk_buff* %283)
  %285 = load %struct.rxrpc_local*, %struct.rxrpc_local** %8, align 8
  %286 = call i32 @rxrpc_put_local(%struct.rxrpc_local* %285)
  %287 = call i32 @_leave(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0))
  br label %288

288:                                              ; preds = %278, %270, %250, %222, %65, %54, %53, %39
  ret void
}

declare dso_local i32 @_enter(i8*, %struct.sock*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @irqs_disabled(...) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @rxrpc_get_local(%struct.rxrpc_local*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

declare dso_local i32 @_leave(i8*) #1

declare dso_local %struct.sk_buff* @skb_recv_datagram(%struct.sock*, i32, i32, i32*) #1

declare dso_local i32 @rxrpc_put_local(%struct.rxrpc_local*) #1

declare dso_local i32 @_debug(i8*, ...) #1

declare dso_local i32 @rxrpc_new_skb(%struct.sk_buff*) #1

declare dso_local i32 @_net(i8*, ...) #1

declare dso_local i64 @skb_checksum_complete(%struct.sk_buff*) #1

declare dso_local i32 @rxrpc_free_skb(%struct.sk_buff*) #1

declare dso_local i32 @UDP_INC_STATS_BH(i32*, i32, i32) #1

declare dso_local i32 @skb_orphan(%struct.sk_buff*) #1

declare dso_local %struct.rxrpc_skb_priv* @rxrpc_skb(%struct.sk_buff*) #1

declare dso_local i32 @memset(%struct.rxrpc_skb_priv*, i32, i32) #1

declare dso_local i32 @ntohl(i64) #1

declare dso_local %struct.TYPE_7__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local %struct.TYPE_5__* @udp_hdr(%struct.sk_buff*) #1

declare dso_local i64 @skb_copy_bits(%struct.sk_buff*, i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @pskb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @_proto(i8*, i64) #1

declare dso_local %struct.rxrpc_peer* @rxrpc_find_peer(%struct.rxrpc_local*, i64, i32) #1

declare dso_local i64 @IS_ERR(%struct.rxrpc_peer*) #1

declare dso_local %struct.rxrpc_transport* @rxrpc_find_transport(%struct.rxrpc_local*, %struct.rxrpc_peer*) #1

declare dso_local i32 @rxrpc_put_peer(%struct.rxrpc_peer*) #1

declare dso_local %struct.rxrpc_connection* @rxrpc_find_connection(%struct.rxrpc_transport*, %struct.TYPE_6__*) #1

declare dso_local i32 @rxrpc_put_transport(%struct.rxrpc_transport*) #1

declare dso_local i32 @rxrpc_post_packet_to_conn(%struct.rxrpc_connection*, %struct.sk_buff*) #1

declare dso_local i32 @rxrpc_post_packet_to_call(%struct.rxrpc_connection*, %struct.sk_buff*) #1

declare dso_local i32 @rxrpc_put_connection(%struct.rxrpc_connection*) #1

declare dso_local i64 @cpu_to_be32(i32) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @rxrpc_queue_work(i32*) #1

declare dso_local i32 @rxrpc_reject_packet(%struct.rxrpc_local*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
