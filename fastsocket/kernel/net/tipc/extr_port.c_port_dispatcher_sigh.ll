; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_port.c_port_dispatcher_sigh.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_port.c_port_dispatcher_sigh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.sk_buff* }
%struct.port = type { %struct.TYPE_2__, %struct.user_port* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.user_port = type { i32 (i8*, i32, %struct.sk_buff.0**, i32, i32, i32, %struct.tipc_name_seq*)*, i32 (i8*, i32, %struct.sk_buff.1**, i32, i32, i32, %struct.tipc_portid*)*, i32 (i8*, i32, %struct.sk_buff.2**, i32, i32, i32)*, i32 (i8*, i32, %struct.sk_buff.3**, i32, i32, i32, %struct.tipc_portid.4*, %struct.tipc_name_seq.5*)*, i32 (i8*, i32, %struct.sk_buff.6**, i32, i32, i32, %struct.tipc_portid.7*)*, i32 (i8*, i32, %struct.sk_buff.8**, i32, i32)*, i8* }
%struct.sk_buff.0 = type opaque
%struct.tipc_name_seq = type opaque
%struct.sk_buff.1 = type opaque
%struct.tipc_portid = type opaque
%struct.sk_buff.2 = type opaque
%struct.sk_buff.3 = type opaque
%struct.tipc_portid.4 = type opaque
%struct.tipc_name_seq.5 = type opaque
%struct.sk_buff.6 = type opaque
%struct.tipc_portid.7 = type opaque
%struct.sk_buff.8 = type opaque
%struct.tipc_portid.9 = type { i32, i32 }
%struct.tipc_name_seq.10 = type { i8*, i8*, i8* }
%struct.tipc_msg = type { i32 }
%struct.sk_buff.11 = type opaque
%struct.sk_buff.12 = type opaque
%struct.tipc_portid.13 = type opaque
%struct.sk_buff.14 = type opaque
%struct.tipc_portid.15 = type opaque
%struct.tipc_name_seq.16 = type opaque
%struct.sk_buff.17 = type opaque
%struct.sk_buff.18 = type opaque
%struct.tipc_portid.19 = type opaque
%struct.sk_buff.20 = type opaque
%struct.tipc_name_seq.21 = type opaque

@queue_lock = common dso_local global i32 0, align 4
@msg_queue_head = common dso_local global %struct.sk_buff* null, align 8
@TIPC_FLOW_CONTROL_WIN = common dso_local global i32 0, align 4
@TIPC_ERR_NO_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @port_dispatcher_sigh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @port_dispatcher_sigh(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.port*, align 8
  %5 = alloca %struct.user_port*, align 8
  %6 = alloca %struct.tipc_portid.9, align 4
  %7 = alloca %struct.tipc_name_seq.10, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.tipc_msg*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32 (i8*, i32, %struct.sk_buff.11**, i32, i32)*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32 (i8*, i32, %struct.sk_buff.12**, i32, i32, i32, %struct.tipc_portid.13*)*, align 8
  %19 = alloca i32 (i8*, i32, %struct.sk_buff.14**, i32, i32, i32, %struct.tipc_portid.15*, %struct.tipc_name_seq.16*)*, align 8
  %20 = alloca i32 (i8*, i32, %struct.sk_buff.17**, i32, i32, i32)*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32 (i8*, i32, %struct.sk_buff.18**, i32, i32, i32, %struct.tipc_portid.19*)*, align 8
  %24 = alloca i32 (i8*, i32, %struct.sk_buff.20**, i32, i32, i32, %struct.tipc_name_seq.21*)*, align 8
  store i8* %0, i8** %2, align 8
  %25 = call i32 @spin_lock_bh(i32* @queue_lock)
  %26 = load %struct.sk_buff*, %struct.sk_buff** @msg_queue_head, align 8
  store %struct.sk_buff* %26, %struct.sk_buff** %3, align 8
  store %struct.sk_buff* null, %struct.sk_buff** @msg_queue_head, align 8
  %27 = call i32 @spin_unlock_bh(i32* @queue_lock)
  br label %28

28:                                               ; preds = %386, %384, %251, %1
  %29 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %30 = icmp ne %struct.sk_buff* %29, null
  br i1 %30, label %31, label %391

31:                                               ; preds = %28
  %32 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 0
  %34 = load %struct.sk_buff*, %struct.sk_buff** %33, align 8
  store %struct.sk_buff* %34, %struct.sk_buff** %12, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %36 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %35)
  store %struct.tipc_msg* %36, %struct.tipc_msg** %13, align 8
  %37 = load %struct.tipc_msg*, %struct.tipc_msg** %13, align 8
  %38 = call i32 @msg_destport(%struct.tipc_msg* %37)
  store i32 %38, i32* %14, align 4
  %39 = load %struct.tipc_msg*, %struct.tipc_msg** %13, align 8
  %40 = call i32 @msg_type(%struct.tipc_msg* %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp sgt i32 %41, 130
  br i1 %42, label %43, label %44

43:                                               ; preds = %31
  br label %386

44:                                               ; preds = %31
  %45 = load i32, i32* %14, align 4
  %46 = call %struct.port* @tipc_port_lock(i32 %45)
  store %struct.port* %46, %struct.port** %4, align 8
  %47 = load %struct.port*, %struct.port** %4, align 8
  %48 = icmp ne %struct.port* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  br label %386

50:                                               ; preds = %44
  %51 = load %struct.tipc_msg*, %struct.tipc_msg** %13, align 8
  %52 = call i32 @msg_origport(%struct.tipc_msg* %51)
  %53 = getelementptr inbounds %struct.tipc_portid.9, %struct.tipc_portid.9* %6, i32 0, i32 0
  store i32 %52, i32* %53, align 4
  %54 = load %struct.tipc_msg*, %struct.tipc_msg** %13, align 8
  %55 = call i32 @msg_orignode(%struct.tipc_msg* %54)
  %56 = getelementptr inbounds %struct.tipc_portid.9, %struct.tipc_portid.9* %6, i32 0, i32 1
  store i32 %55, i32* %56, align 4
  %57 = load %struct.port*, %struct.port** %4, align 8
  %58 = getelementptr inbounds %struct.port, %struct.port* %57, i32 0, i32 1
  %59 = load %struct.user_port*, %struct.user_port** %58, align 8
  store %struct.user_port* %59, %struct.user_port** %5, align 8
  %60 = load %struct.user_port*, %struct.user_port** %5, align 8
  %61 = getelementptr inbounds %struct.user_port, %struct.user_port* %60, i32 0, i32 6
  %62 = load i8*, i8** %61, align 8
  store i8* %62, i8** %8, align 8
  %63 = load %struct.port*, %struct.port** %4, align 8
  %64 = getelementptr inbounds %struct.port, %struct.port* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %9, align 4
  %67 = load %struct.port*, %struct.port** %4, align 8
  %68 = getelementptr inbounds %struct.port, %struct.port* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %10, align 4
  %71 = load %struct.tipc_msg*, %struct.tipc_msg** %13, align 8
  %72 = call i32 @msg_errcode(%struct.tipc_msg* %71)
  %73 = call i64 @unlikely(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %50
  br label %253

76:                                               ; preds = %50
  %77 = load i32, i32* %11, align 4
  switch i32 %77, label %245 [
    i32 131, label %78
    i32 130, label %153
    i32 129, label %188
    i32 128, label %188
  ]

78:                                               ; preds = %76
  %79 = load %struct.user_port*, %struct.user_port** %5, align 8
  %80 = getelementptr inbounds %struct.user_port, %struct.user_port* %79, i32 0, i32 5
  %81 = load i32 (i8*, i32, %struct.sk_buff.8**, i32, i32)*, i32 (i8*, i32, %struct.sk_buff.8**, i32, i32)** %80, align 8
  %82 = bitcast i32 (i8*, i32, %struct.sk_buff.8**, i32, i32)* %81 to i32 (i8*, i32, %struct.sk_buff.11**, i32, i32)*
  store i32 (i8*, i32, %struct.sk_buff.11**, i32, i32)* %82, i32 (i8*, i32, %struct.sk_buff.11**, i32, i32)** %15, align 8
  %83 = load %struct.port*, %struct.port** %4, align 8
  %84 = call i32 @port_peerport(%struct.port* %83)
  store i32 %84, i32* %16, align 4
  %85 = load %struct.port*, %struct.port** %4, align 8
  %86 = call i32 @port_peernode(%struct.port* %85)
  store i32 %86, i32* %17, align 4
  %87 = load %struct.port*, %struct.port** %4, align 8
  %88 = call i32 @tipc_port_unlock(%struct.port* %87)
  %89 = load i32 (i8*, i32, %struct.sk_buff.11**, i32, i32)*, i32 (i8*, i32, %struct.sk_buff.11**, i32, i32)** %15, align 8
  %90 = icmp ne i32 (i8*, i32, %struct.sk_buff.11**, i32, i32)* %89, null
  %91 = xor i1 %90, true
  %92 = zext i1 %91 to i32
  %93 = call i64 @unlikely(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %78
  br label %386

96:                                               ; preds = %78
  %97 = load i32, i32* %9, align 4
  %98 = icmp ne i32 %97, 0
  %99 = xor i1 %98, true
  %100 = zext i1 %99 to i32
  %101 = call i64 @unlikely(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %96
  %104 = load i32, i32* %14, align 4
  %105 = call i32 @tipc_connect2port(i32 %104, %struct.tipc_portid.9* %6)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %103
  br label %386

108:                                              ; preds = %103
  br label %121

109:                                              ; preds = %96
  %110 = load %struct.tipc_msg*, %struct.tipc_msg** %13, align 8
  %111 = call i32 @msg_origport(%struct.tipc_msg* %110)
  %112 = load i32, i32* %16, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %119, label %114

114:                                              ; preds = %109
  %115 = load %struct.tipc_msg*, %struct.tipc_msg** %13, align 8
  %116 = call i32 @msg_orignode(%struct.tipc_msg* %115)
  %117 = load i32, i32* %17, align 4
  %118 = icmp ne i32 %116, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %114, %109
  br label %386

120:                                              ; preds = %114
  br label %121

121:                                              ; preds = %120, %108
  %122 = load %struct.port*, %struct.port** %4, align 8
  %123 = getelementptr inbounds %struct.port, %struct.port* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %124, align 8
  %127 = load i32, i32* @TIPC_FLOW_CONTROL_WIN, align 4
  %128 = icmp sge i32 %126, %127
  %129 = zext i1 %128 to i32
  %130 = call i64 @unlikely(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %121
  %133 = load i32, i32* %14, align 4
  %134 = load %struct.port*, %struct.port** %4, align 8
  %135 = getelementptr inbounds %struct.port, %struct.port* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @tipc_acknowledge(i32 %133, i32 %137)
  br label %139

139:                                              ; preds = %132, %121
  %140 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %141 = load %struct.tipc_msg*, %struct.tipc_msg** %13, align 8
  %142 = call i32 @msg_hdr_sz(%struct.tipc_msg* %141)
  %143 = call i32 @skb_pull(%struct.sk_buff* %140, i32 %142)
  %144 = load i32 (i8*, i32, %struct.sk_buff.11**, i32, i32)*, i32 (i8*, i32, %struct.sk_buff.11**, i32, i32)** %15, align 8
  %145 = load i8*, i8** %8, align 8
  %146 = load i32, i32* %14, align 4
  %147 = bitcast %struct.sk_buff** %3 to %struct.sk_buff.11**
  %148 = load %struct.tipc_msg*, %struct.tipc_msg** %13, align 8
  %149 = call i32 @msg_data(%struct.tipc_msg* %148)
  %150 = load %struct.tipc_msg*, %struct.tipc_msg** %13, align 8
  %151 = call i32 @msg_data_sz(%struct.tipc_msg* %150)
  %152 = call i32 %144(i8* %145, i32 %146, %struct.sk_buff.11** %147, i32 %149, i32 %151)
  br label %245

153:                                              ; preds = %76
  %154 = load %struct.user_port*, %struct.user_port** %5, align 8
  %155 = getelementptr inbounds %struct.user_port, %struct.user_port* %154, i32 0, i32 4
  %156 = load i32 (i8*, i32, %struct.sk_buff.6**, i32, i32, i32, %struct.tipc_portid.7*)*, i32 (i8*, i32, %struct.sk_buff.6**, i32, i32, i32, %struct.tipc_portid.7*)** %155, align 8
  %157 = bitcast i32 (i8*, i32, %struct.sk_buff.6**, i32, i32, i32, %struct.tipc_portid.7*)* %156 to i32 (i8*, i32, %struct.sk_buff.12**, i32, i32, i32, %struct.tipc_portid.13*)*
  store i32 (i8*, i32, %struct.sk_buff.12**, i32, i32, i32, %struct.tipc_portid.13*)* %157, i32 (i8*, i32, %struct.sk_buff.12**, i32, i32, i32, %struct.tipc_portid.13*)** %18, align 8
  %158 = load %struct.port*, %struct.port** %4, align 8
  %159 = call i32 @tipc_port_unlock(%struct.port* %158)
  %160 = load i32 (i8*, i32, %struct.sk_buff.12**, i32, i32, i32, %struct.tipc_portid.13*)*, i32 (i8*, i32, %struct.sk_buff.12**, i32, i32, i32, %struct.tipc_portid.13*)** %18, align 8
  %161 = icmp ne i32 (i8*, i32, %struct.sk_buff.12**, i32, i32, i32, %struct.tipc_portid.13*)* %160, null
  br i1 %161, label %162, label %165

162:                                              ; preds = %153
  %163 = load i32, i32* %9, align 4
  %164 = icmp ne i32 %163, 0
  br label %165

165:                                              ; preds = %162, %153
  %166 = phi i1 [ true, %153 ], [ %164, %162 ]
  %167 = zext i1 %166 to i32
  %168 = call i64 @unlikely(i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %165
  br label %386

171:                                              ; preds = %165
  %172 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %173 = load %struct.tipc_msg*, %struct.tipc_msg** %13, align 8
  %174 = call i32 @msg_hdr_sz(%struct.tipc_msg* %173)
  %175 = call i32 @skb_pull(%struct.sk_buff* %172, i32 %174)
  %176 = load i32 (i8*, i32, %struct.sk_buff.12**, i32, i32, i32, %struct.tipc_portid.13*)*, i32 (i8*, i32, %struct.sk_buff.12**, i32, i32, i32, %struct.tipc_portid.13*)** %18, align 8
  %177 = load i8*, i8** %8, align 8
  %178 = load i32, i32* %14, align 4
  %179 = bitcast %struct.sk_buff** %3 to %struct.sk_buff.12**
  %180 = load %struct.tipc_msg*, %struct.tipc_msg** %13, align 8
  %181 = call i32 @msg_data(%struct.tipc_msg* %180)
  %182 = load %struct.tipc_msg*, %struct.tipc_msg** %13, align 8
  %183 = call i32 @msg_data_sz(%struct.tipc_msg* %182)
  %184 = load %struct.tipc_msg*, %struct.tipc_msg** %13, align 8
  %185 = call i32 @msg_importance(%struct.tipc_msg* %184)
  %186 = bitcast %struct.tipc_portid.9* %6 to %struct.tipc_portid.13*
  %187 = call i32 %176(i8* %177, i32 %178, %struct.sk_buff.12** %179, i32 %181, i32 %183, i32 %185, %struct.tipc_portid.13* %186)
  br label %245

188:                                              ; preds = %76, %76
  %189 = load %struct.user_port*, %struct.user_port** %5, align 8
  %190 = getelementptr inbounds %struct.user_port, %struct.user_port* %189, i32 0, i32 3
  %191 = load i32 (i8*, i32, %struct.sk_buff.3**, i32, i32, i32, %struct.tipc_portid.4*, %struct.tipc_name_seq.5*)*, i32 (i8*, i32, %struct.sk_buff.3**, i32, i32, i32, %struct.tipc_portid.4*, %struct.tipc_name_seq.5*)** %190, align 8
  %192 = bitcast i32 (i8*, i32, %struct.sk_buff.3**, i32, i32, i32, %struct.tipc_portid.4*, %struct.tipc_name_seq.5*)* %191 to i32 (i8*, i32, %struct.sk_buff.14**, i32, i32, i32, %struct.tipc_portid.15*, %struct.tipc_name_seq.16*)*
  store i32 (i8*, i32, %struct.sk_buff.14**, i32, i32, i32, %struct.tipc_portid.15*, %struct.tipc_name_seq.16*)* %192, i32 (i8*, i32, %struct.sk_buff.14**, i32, i32, i32, %struct.tipc_portid.15*, %struct.tipc_name_seq.16*)** %19, align 8
  %193 = load %struct.port*, %struct.port** %4, align 8
  %194 = call i32 @tipc_port_unlock(%struct.port* %193)
  %195 = load i32 (i8*, i32, %struct.sk_buff.14**, i32, i32, i32, %struct.tipc_portid.15*, %struct.tipc_name_seq.16*)*, i32 (i8*, i32, %struct.sk_buff.14**, i32, i32, i32, %struct.tipc_portid.15*, %struct.tipc_name_seq.16*)** %19, align 8
  %196 = icmp ne i32 (i8*, i32, %struct.sk_buff.14**, i32, i32, i32, %struct.tipc_portid.15*, %struct.tipc_name_seq.16*)* %195, null
  br i1 %196, label %197, label %204

197:                                              ; preds = %188
  %198 = load i32, i32* %9, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %204, label %200

200:                                              ; preds = %197
  %201 = load i32, i32* %10, align 4
  %202 = icmp ne i32 %201, 0
  %203 = xor i1 %202, true
  br label %204

204:                                              ; preds = %200, %197, %188
  %205 = phi i1 [ true, %197 ], [ true, %188 ], [ %203, %200 ]
  %206 = zext i1 %205 to i32
  %207 = call i64 @unlikely(i32 %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %204
  br label %386

210:                                              ; preds = %204
  %211 = load %struct.tipc_msg*, %struct.tipc_msg** %13, align 8
  %212 = call i8* @msg_nametype(%struct.tipc_msg* %211)
  %213 = getelementptr inbounds %struct.tipc_name_seq.10, %struct.tipc_name_seq.10* %7, i32 0, i32 2
  store i8* %212, i8** %213, align 8
  %214 = load %struct.tipc_msg*, %struct.tipc_msg** %13, align 8
  %215 = call i8* @msg_nameinst(%struct.tipc_msg* %214)
  %216 = getelementptr inbounds %struct.tipc_name_seq.10, %struct.tipc_name_seq.10* %7, i32 0, i32 0
  store i8* %215, i8** %216, align 8
  %217 = load i32, i32* %11, align 4
  %218 = icmp eq i32 %217, 128
  br i1 %218, label %219, label %222

219:                                              ; preds = %210
  %220 = getelementptr inbounds %struct.tipc_name_seq.10, %struct.tipc_name_seq.10* %7, i32 0, i32 0
  %221 = load i8*, i8** %220, align 8
  br label %225

222:                                              ; preds = %210
  %223 = load %struct.tipc_msg*, %struct.tipc_msg** %13, align 8
  %224 = call i8* @msg_nameupper(%struct.tipc_msg* %223)
  br label %225

225:                                              ; preds = %222, %219
  %226 = phi i8* [ %221, %219 ], [ %224, %222 ]
  %227 = getelementptr inbounds %struct.tipc_name_seq.10, %struct.tipc_name_seq.10* %7, i32 0, i32 1
  store i8* %226, i8** %227, align 8
  %228 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %229 = load %struct.tipc_msg*, %struct.tipc_msg** %13, align 8
  %230 = call i32 @msg_hdr_sz(%struct.tipc_msg* %229)
  %231 = call i32 @skb_pull(%struct.sk_buff* %228, i32 %230)
  %232 = load i32 (i8*, i32, %struct.sk_buff.14**, i32, i32, i32, %struct.tipc_portid.15*, %struct.tipc_name_seq.16*)*, i32 (i8*, i32, %struct.sk_buff.14**, i32, i32, i32, %struct.tipc_portid.15*, %struct.tipc_name_seq.16*)** %19, align 8
  %233 = load i8*, i8** %8, align 8
  %234 = load i32, i32* %14, align 4
  %235 = bitcast %struct.sk_buff** %3 to %struct.sk_buff.14**
  %236 = load %struct.tipc_msg*, %struct.tipc_msg** %13, align 8
  %237 = call i32 @msg_data(%struct.tipc_msg* %236)
  %238 = load %struct.tipc_msg*, %struct.tipc_msg** %13, align 8
  %239 = call i32 @msg_data_sz(%struct.tipc_msg* %238)
  %240 = load %struct.tipc_msg*, %struct.tipc_msg** %13, align 8
  %241 = call i32 @msg_importance(%struct.tipc_msg* %240)
  %242 = bitcast %struct.tipc_portid.9* %6 to %struct.tipc_portid.15*
  %243 = bitcast %struct.tipc_name_seq.10* %7 to %struct.tipc_name_seq.16*
  %244 = call i32 %232(i8* %233, i32 %234, %struct.sk_buff.14** %235, i32 %237, i32 %239, i32 %241, %struct.tipc_portid.15* %242, %struct.tipc_name_seq.16* %243)
  br label %245

245:                                              ; preds = %76, %225, %171, %139
  %246 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %247 = icmp ne %struct.sk_buff* %246, null
  br i1 %247, label %248, label %251

248:                                              ; preds = %245
  %249 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %250 = call i32 @buf_discard(%struct.sk_buff* %249)
  br label %251

251:                                              ; preds = %248, %245
  %252 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  store %struct.sk_buff* %252, %struct.sk_buff** %3, align 8
  br label %28

253:                                              ; preds = %75
  %254 = load i32, i32* %11, align 4
  switch i32 %254, label %378 [
    i32 131, label %255
    i32 130, label %301
    i32 129, label %331
    i32 128, label %331
  ]

255:                                              ; preds = %253
  %256 = load %struct.user_port*, %struct.user_port** %5, align 8
  %257 = getelementptr inbounds %struct.user_port, %struct.user_port* %256, i32 0, i32 2
  %258 = load i32 (i8*, i32, %struct.sk_buff.2**, i32, i32, i32)*, i32 (i8*, i32, %struct.sk_buff.2**, i32, i32, i32)** %257, align 8
  %259 = bitcast i32 (i8*, i32, %struct.sk_buff.2**, i32, i32, i32)* %258 to i32 (i8*, i32, %struct.sk_buff.17**, i32, i32, i32)*
  store i32 (i8*, i32, %struct.sk_buff.17**, i32, i32, i32)* %259, i32 (i8*, i32, %struct.sk_buff.17**, i32, i32, i32)** %20, align 8
  %260 = load %struct.port*, %struct.port** %4, align 8
  %261 = call i32 @port_peerport(%struct.port* %260)
  store i32 %261, i32* %21, align 4
  %262 = load %struct.port*, %struct.port** %4, align 8
  %263 = call i32 @port_peernode(%struct.port* %262)
  store i32 %263, i32* %22, align 4
  %264 = load %struct.port*, %struct.port** %4, align 8
  %265 = call i32 @tipc_port_unlock(%struct.port* %264)
  %266 = load i32 (i8*, i32, %struct.sk_buff.17**, i32, i32, i32)*, i32 (i8*, i32, %struct.sk_buff.17**, i32, i32, i32)** %20, align 8
  %267 = icmp ne i32 (i8*, i32, %struct.sk_buff.17**, i32, i32, i32)* %266, null
  br i1 %267, label %268, label %271

268:                                              ; preds = %255
  %269 = load i32, i32* %9, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %272, label %271

271:                                              ; preds = %268, %255
  br label %378

272:                                              ; preds = %268
  %273 = load %struct.tipc_msg*, %struct.tipc_msg** %13, align 8
  %274 = call i32 @msg_origport(%struct.tipc_msg* %273)
  %275 = load i32, i32* %21, align 4
  %276 = icmp ne i32 %274, %275
  br i1 %276, label %282, label %277

277:                                              ; preds = %272
  %278 = load %struct.tipc_msg*, %struct.tipc_msg** %13, align 8
  %279 = call i32 @msg_orignode(%struct.tipc_msg* %278)
  %280 = load i32, i32* %22, align 4
  %281 = icmp ne i32 %279, %280
  br i1 %281, label %282, label %283

282:                                              ; preds = %277, %272
  br label %378

283:                                              ; preds = %277
  %284 = load i32, i32* %14, align 4
  %285 = call i32 @tipc_disconnect(i32 %284)
  %286 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %287 = load %struct.tipc_msg*, %struct.tipc_msg** %13, align 8
  %288 = call i32 @msg_hdr_sz(%struct.tipc_msg* %287)
  %289 = call i32 @skb_pull(%struct.sk_buff* %286, i32 %288)
  %290 = load i32 (i8*, i32, %struct.sk_buff.17**, i32, i32, i32)*, i32 (i8*, i32, %struct.sk_buff.17**, i32, i32, i32)** %20, align 8
  %291 = load i8*, i8** %8, align 8
  %292 = load i32, i32* %14, align 4
  %293 = bitcast %struct.sk_buff** %3 to %struct.sk_buff.17**
  %294 = load %struct.tipc_msg*, %struct.tipc_msg** %13, align 8
  %295 = call i32 @msg_data(%struct.tipc_msg* %294)
  %296 = load %struct.tipc_msg*, %struct.tipc_msg** %13, align 8
  %297 = call i32 @msg_data_sz(%struct.tipc_msg* %296)
  %298 = load %struct.tipc_msg*, %struct.tipc_msg** %13, align 8
  %299 = call i32 @msg_errcode(%struct.tipc_msg* %298)
  %300 = call i32 %290(i8* %291, i32 %292, %struct.sk_buff.17** %293, i32 %295, i32 %297, i32 %299)
  br label %378

301:                                              ; preds = %253
  %302 = load %struct.user_port*, %struct.user_port** %5, align 8
  %303 = getelementptr inbounds %struct.user_port, %struct.user_port* %302, i32 0, i32 1
  %304 = load i32 (i8*, i32, %struct.sk_buff.1**, i32, i32, i32, %struct.tipc_portid*)*, i32 (i8*, i32, %struct.sk_buff.1**, i32, i32, i32, %struct.tipc_portid*)** %303, align 8
  %305 = bitcast i32 (i8*, i32, %struct.sk_buff.1**, i32, i32, i32, %struct.tipc_portid*)* %304 to i32 (i8*, i32, %struct.sk_buff.18**, i32, i32, i32, %struct.tipc_portid.19*)*
  store i32 (i8*, i32, %struct.sk_buff.18**, i32, i32, i32, %struct.tipc_portid.19*)* %305, i32 (i8*, i32, %struct.sk_buff.18**, i32, i32, i32, %struct.tipc_portid.19*)** %23, align 8
  %306 = load %struct.port*, %struct.port** %4, align 8
  %307 = call i32 @tipc_port_unlock(%struct.port* %306)
  %308 = load i32 (i8*, i32, %struct.sk_buff.18**, i32, i32, i32, %struct.tipc_portid.19*)*, i32 (i8*, i32, %struct.sk_buff.18**, i32, i32, i32, %struct.tipc_portid.19*)** %23, align 8
  %309 = icmp ne i32 (i8*, i32, %struct.sk_buff.18**, i32, i32, i32, %struct.tipc_portid.19*)* %308, null
  br i1 %309, label %310, label %313

310:                                              ; preds = %301
  %311 = load i32, i32* %9, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %314

313:                                              ; preds = %310, %301
  br label %378

314:                                              ; preds = %310
  %315 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %316 = load %struct.tipc_msg*, %struct.tipc_msg** %13, align 8
  %317 = call i32 @msg_hdr_sz(%struct.tipc_msg* %316)
  %318 = call i32 @skb_pull(%struct.sk_buff* %315, i32 %317)
  %319 = load i32 (i8*, i32, %struct.sk_buff.18**, i32, i32, i32, %struct.tipc_portid.19*)*, i32 (i8*, i32, %struct.sk_buff.18**, i32, i32, i32, %struct.tipc_portid.19*)** %23, align 8
  %320 = load i8*, i8** %8, align 8
  %321 = load i32, i32* %14, align 4
  %322 = bitcast %struct.sk_buff** %3 to %struct.sk_buff.18**
  %323 = load %struct.tipc_msg*, %struct.tipc_msg** %13, align 8
  %324 = call i32 @msg_data(%struct.tipc_msg* %323)
  %325 = load %struct.tipc_msg*, %struct.tipc_msg** %13, align 8
  %326 = call i32 @msg_data_sz(%struct.tipc_msg* %325)
  %327 = load %struct.tipc_msg*, %struct.tipc_msg** %13, align 8
  %328 = call i32 @msg_errcode(%struct.tipc_msg* %327)
  %329 = bitcast %struct.tipc_portid.9* %6 to %struct.tipc_portid.19*
  %330 = call i32 %319(i8* %320, i32 %321, %struct.sk_buff.18** %322, i32 %324, i32 %326, i32 %328, %struct.tipc_portid.19* %329)
  br label %378

331:                                              ; preds = %253, %253
  %332 = load %struct.user_port*, %struct.user_port** %5, align 8
  %333 = getelementptr inbounds %struct.user_port, %struct.user_port* %332, i32 0, i32 0
  %334 = load i32 (i8*, i32, %struct.sk_buff.0**, i32, i32, i32, %struct.tipc_name_seq*)*, i32 (i8*, i32, %struct.sk_buff.0**, i32, i32, i32, %struct.tipc_name_seq*)** %333, align 8
  %335 = bitcast i32 (i8*, i32, %struct.sk_buff.0**, i32, i32, i32, %struct.tipc_name_seq*)* %334 to i32 (i8*, i32, %struct.sk_buff.20**, i32, i32, i32, %struct.tipc_name_seq.21*)*
  store i32 (i8*, i32, %struct.sk_buff.20**, i32, i32, i32, %struct.tipc_name_seq.21*)* %335, i32 (i8*, i32, %struct.sk_buff.20**, i32, i32, i32, %struct.tipc_name_seq.21*)** %24, align 8
  %336 = load %struct.port*, %struct.port** %4, align 8
  %337 = call i32 @tipc_port_unlock(%struct.port* %336)
  %338 = load i32 (i8*, i32, %struct.sk_buff.20**, i32, i32, i32, %struct.tipc_name_seq.21*)*, i32 (i8*, i32, %struct.sk_buff.20**, i32, i32, i32, %struct.tipc_name_seq.21*)** %24, align 8
  %339 = icmp ne i32 (i8*, i32, %struct.sk_buff.20**, i32, i32, i32, %struct.tipc_name_seq.21*)* %338, null
  br i1 %339, label %340, label %343

340:                                              ; preds = %331
  %341 = load i32, i32* %9, align 4
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %344

343:                                              ; preds = %340, %331
  br label %378

344:                                              ; preds = %340
  %345 = load %struct.tipc_msg*, %struct.tipc_msg** %13, align 8
  %346 = call i8* @msg_nametype(%struct.tipc_msg* %345)
  %347 = getelementptr inbounds %struct.tipc_name_seq.10, %struct.tipc_name_seq.10* %7, i32 0, i32 2
  store i8* %346, i8** %347, align 8
  %348 = load %struct.tipc_msg*, %struct.tipc_msg** %13, align 8
  %349 = call i8* @msg_nameinst(%struct.tipc_msg* %348)
  %350 = getelementptr inbounds %struct.tipc_name_seq.10, %struct.tipc_name_seq.10* %7, i32 0, i32 0
  store i8* %349, i8** %350, align 8
  %351 = load i32, i32* %11, align 4
  %352 = icmp eq i32 %351, 128
  br i1 %352, label %353, label %356

353:                                              ; preds = %344
  %354 = getelementptr inbounds %struct.tipc_name_seq.10, %struct.tipc_name_seq.10* %7, i32 0, i32 0
  %355 = load i8*, i8** %354, align 8
  br label %359

356:                                              ; preds = %344
  %357 = load %struct.tipc_msg*, %struct.tipc_msg** %13, align 8
  %358 = call i8* @msg_nameupper(%struct.tipc_msg* %357)
  br label %359

359:                                              ; preds = %356, %353
  %360 = phi i8* [ %355, %353 ], [ %358, %356 ]
  %361 = getelementptr inbounds %struct.tipc_name_seq.10, %struct.tipc_name_seq.10* %7, i32 0, i32 1
  store i8* %360, i8** %361, align 8
  %362 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %363 = load %struct.tipc_msg*, %struct.tipc_msg** %13, align 8
  %364 = call i32 @msg_hdr_sz(%struct.tipc_msg* %363)
  %365 = call i32 @skb_pull(%struct.sk_buff* %362, i32 %364)
  %366 = load i32 (i8*, i32, %struct.sk_buff.20**, i32, i32, i32, %struct.tipc_name_seq.21*)*, i32 (i8*, i32, %struct.sk_buff.20**, i32, i32, i32, %struct.tipc_name_seq.21*)** %24, align 8
  %367 = load i8*, i8** %8, align 8
  %368 = load i32, i32* %14, align 4
  %369 = bitcast %struct.sk_buff** %3 to %struct.sk_buff.20**
  %370 = load %struct.tipc_msg*, %struct.tipc_msg** %13, align 8
  %371 = call i32 @msg_data(%struct.tipc_msg* %370)
  %372 = load %struct.tipc_msg*, %struct.tipc_msg** %13, align 8
  %373 = call i32 @msg_data_sz(%struct.tipc_msg* %372)
  %374 = load %struct.tipc_msg*, %struct.tipc_msg** %13, align 8
  %375 = call i32 @msg_errcode(%struct.tipc_msg* %374)
  %376 = bitcast %struct.tipc_name_seq.10* %7 to %struct.tipc_name_seq.21*
  %377 = call i32 %366(i8* %367, i32 %368, %struct.sk_buff.20** %369, i32 %371, i32 %373, i32 %375, %struct.tipc_name_seq.21* %376)
  br label %378

378:                                              ; preds = %253, %359, %343, %314, %313, %283, %282, %271
  %379 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %380 = icmp ne %struct.sk_buff* %379, null
  br i1 %380, label %381, label %384

381:                                              ; preds = %378
  %382 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %383 = call i32 @buf_discard(%struct.sk_buff* %382)
  br label %384

384:                                              ; preds = %381, %378
  %385 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  store %struct.sk_buff* %385, %struct.sk_buff** %3, align 8
  br label %28

386:                                              ; preds = %209, %170, %119, %107, %95, %49, %43
  %387 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %388 = load i32, i32* @TIPC_ERR_NO_PORT, align 4
  %389 = call i32 @tipc_reject_msg(%struct.sk_buff* %387, i32 %388)
  %390 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  store %struct.sk_buff* %390, %struct.sk_buff** %3, align 8
  br label %28

391:                                              ; preds = %28
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local %struct.tipc_msg* @buf_msg(%struct.sk_buff*) #1

declare dso_local i32 @msg_destport(%struct.tipc_msg*) #1

declare dso_local i32 @msg_type(%struct.tipc_msg*) #1

declare dso_local %struct.port* @tipc_port_lock(i32) #1

declare dso_local i32 @msg_origport(%struct.tipc_msg*) #1

declare dso_local i32 @msg_orignode(%struct.tipc_msg*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @msg_errcode(%struct.tipc_msg*) #1

declare dso_local i32 @port_peerport(%struct.port*) #1

declare dso_local i32 @port_peernode(%struct.port*) #1

declare dso_local i32 @tipc_port_unlock(%struct.port*) #1

declare dso_local i32 @tipc_connect2port(i32, %struct.tipc_portid.9*) #1

declare dso_local i32 @tipc_acknowledge(i32, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @msg_hdr_sz(%struct.tipc_msg*) #1

declare dso_local i32 @msg_data(%struct.tipc_msg*) #1

declare dso_local i32 @msg_data_sz(%struct.tipc_msg*) #1

declare dso_local i32 @msg_importance(%struct.tipc_msg*) #1

declare dso_local i8* @msg_nametype(%struct.tipc_msg*) #1

declare dso_local i8* @msg_nameinst(%struct.tipc_msg*) #1

declare dso_local i8* @msg_nameupper(%struct.tipc_msg*) #1

declare dso_local i32 @buf_discard(%struct.sk_buff*) #1

declare dso_local i32 @tipc_disconnect(i32) #1

declare dso_local i32 @tipc_reject_msg(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
