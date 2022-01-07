; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_socket.c_recv_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_socket.c_recv_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32 }
%struct.socket = type { i64, %struct.sock* }
%struct.sock = type { i32, i32* }
%struct.msghdr = type { i32, i64, %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.tipc_port = type { i64, i32 }
%struct.sk_buff = type { i32 }
%struct.tipc_msg = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SS_UNCONNECTED = common dso_local global i64 0, align 8
@ENOTCONN = common dso_local global i32 0, align 4
@SS_DISCONNECTING = common dso_local global i64 0, align 8
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@SS_CONNECTING = common dso_local global i64 0, align 8
@MSG_TRUNC = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@SS_READY = common dso_local global i64 0, align 8
@TIPC_CONN_SHUTDOWN = common dso_local global i64 0, align 8
@ECONNRESET = common dso_local global i32 0, align 4
@MSG_PEEK = common dso_local global i32 0, align 4
@TIPC_FLOW_CONTROL_WIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.socket*, %struct.msghdr*, i64, i32)* @recv_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recv_msg(%struct.kiocb* %0, %struct.socket* %1, %struct.msghdr* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.kiocb*, align 8
  %8 = alloca %struct.socket*, align 8
  %9 = alloca %struct.msghdr*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sock*, align 8
  %13 = alloca %struct.tipc_port*, align 8
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca %struct.tipc_msg*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.kiocb* %0, %struct.kiocb** %7, align 8
  store %struct.socket* %1, %struct.socket** %8, align 8
  store %struct.msghdr* %2, %struct.msghdr** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load %struct.socket*, %struct.socket** %8, align 8
  %20 = getelementptr inbounds %struct.socket, %struct.socket* %19, i32 0, i32 1
  %21 = load %struct.sock*, %struct.sock** %20, align 8
  store %struct.sock* %21, %struct.sock** %12, align 8
  %22 = load %struct.sock*, %struct.sock** %12, align 8
  %23 = call %struct.tipc_port* @tipc_sk_port(%struct.sock* %22)
  store %struct.tipc_port* %23, %struct.tipc_port** %13, align 8
  %24 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %25 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 1
  br i1 %27, label %28, label %31

28:                                               ; preds = %5
  %29 = load i32, i32* @EOPNOTSUPP, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %248

31:                                               ; preds = %5
  %32 = load i64, i64* %10, align 8
  %33 = icmp ne i64 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %248

41:                                               ; preds = %31
  %42 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %43 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %42, i32 0, i32 4
  store i64 0, i64* %43, align 8
  %44 = load %struct.sock*, %struct.sock** %12, align 8
  %45 = call i32 @lock_sock(%struct.sock* %44)
  %46 = load %struct.socket*, %struct.socket** %8, align 8
  %47 = getelementptr inbounds %struct.socket, %struct.socket* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @SS_UNCONNECTED, align 8
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %41
  %55 = load i32, i32* @ENOTCONN, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %18, align 4
  br label %244

57:                                               ; preds = %41
  br label %58

58:                                               ; preds = %140, %57
  br label %59

59:                                               ; preds = %107, %58
  %60 = load %struct.sock*, %struct.sock** %12, align 8
  %61 = getelementptr inbounds %struct.sock, %struct.sock* %60, i32 0, i32 0
  %62 = call i64 @skb_queue_empty(i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %108

64:                                               ; preds = %59
  %65 = load %struct.socket*, %struct.socket** %8, align 8
  %66 = getelementptr inbounds %struct.socket, %struct.socket* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @SS_DISCONNECTING, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load i32, i32* @ENOTCONN, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %18, align 4
  br label %244

73:                                               ; preds = %64
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* @MSG_DONTWAIT, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load i32, i32* @EWOULDBLOCK, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %18, align 4
  br label %244

81:                                               ; preds = %73
  %82 = load %struct.sock*, %struct.sock** %12, align 8
  %83 = call i32 @release_sock(%struct.sock* %82)
  %84 = load %struct.sock*, %struct.sock** %12, align 8
  %85 = getelementptr inbounds %struct.sock, %struct.sock* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.sock*, %struct.sock** %12, align 8
  %89 = getelementptr inbounds %struct.sock, %struct.sock* %88, i32 0, i32 0
  %90 = call i64 @skb_queue_empty(i32* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %81
  %93 = load %struct.socket*, %struct.socket** %8, align 8
  %94 = getelementptr inbounds %struct.socket, %struct.socket* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @SS_DISCONNECTING, align 8
  %97 = icmp eq i64 %95, %96
  br label %98

98:                                               ; preds = %92, %81
  %99 = phi i1 [ true, %81 ], [ %97, %92 ]
  %100 = zext i1 %99 to i32
  %101 = call i32 @wait_event_interruptible(i32 %87, i32 %100)
  store i32 %101, i32* %18, align 4
  %102 = load %struct.sock*, %struct.sock** %12, align 8
  %103 = call i32 @lock_sock(%struct.sock* %102)
  %104 = load i32, i32* %18, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %98
  br label %244

107:                                              ; preds = %98
  br label %59

108:                                              ; preds = %59
  %109 = load %struct.sock*, %struct.sock** %12, align 8
  %110 = getelementptr inbounds %struct.sock, %struct.sock* %109, i32 0, i32 0
  %111 = call %struct.sk_buff* @skb_peek(i32* %110)
  store %struct.sk_buff* %111, %struct.sk_buff** %14, align 8
  %112 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %113 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %112)
  store %struct.tipc_msg* %113, %struct.tipc_msg** %15, align 8
  %114 = load %struct.tipc_msg*, %struct.tipc_msg** %15, align 8
  %115 = call i32 @msg_data_sz(%struct.tipc_msg* %114)
  store i32 %115, i32* %16, align 4
  %116 = load %struct.tipc_msg*, %struct.tipc_msg** %15, align 8
  %117 = call i64 @msg_errcode(%struct.tipc_msg* %116)
  store i64 %117, i64* %17, align 8
  %118 = load %struct.socket*, %struct.socket** %8, align 8
  %119 = getelementptr inbounds %struct.socket, %struct.socket* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @SS_CONNECTING, align 8
  %122 = icmp eq i64 %120, %121
  %123 = zext i1 %122 to i32
  %124 = call i64 @unlikely(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %134

126:                                              ; preds = %108
  %127 = load %struct.socket*, %struct.socket** %8, align 8
  %128 = load %struct.tipc_msg*, %struct.tipc_msg** %15, align 8
  %129 = call i32 @auto_connect(%struct.socket* %127, %struct.tipc_msg* %128)
  store i32 %129, i32* %18, align 4
  %130 = load i32, i32* %18, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %126
  br label %244

133:                                              ; preds = %126
  br label %134

134:                                              ; preds = %133, %108
  %135 = load i32, i32* %16, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %143, label %137

137:                                              ; preds = %134
  %138 = load i64, i64* %17, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %137
  %141 = load %struct.sock*, %struct.sock** %12, align 8
  %142 = call i32 @advance_rx_queue(%struct.sock* %141)
  br label %58

143:                                              ; preds = %137, %134
  %144 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %145 = load %struct.tipc_msg*, %struct.tipc_msg** %15, align 8
  %146 = call i32 @set_orig_addr(%struct.msghdr* %144, %struct.tipc_msg* %145)
  %147 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %148 = load %struct.tipc_msg*, %struct.tipc_msg** %15, align 8
  %149 = load %struct.tipc_port*, %struct.tipc_port** %13, align 8
  %150 = call i32 @anc_data_recv(%struct.msghdr* %147, %struct.tipc_msg* %148, %struct.tipc_port* %149)
  store i32 %150, i32* %18, align 4
  %151 = load i32, i32* %18, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %143
  br label %244

154:                                              ; preds = %143
  %155 = load i64, i64* %17, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %190, label %157

157:                                              ; preds = %154
  %158 = load i64, i64* %10, align 8
  %159 = load i32, i32* %16, align 4
  %160 = zext i32 %159 to i64
  %161 = icmp ult i64 %158, %160
  %162 = zext i1 %161 to i32
  %163 = call i64 @unlikely(i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %173

165:                                              ; preds = %157
  %166 = load i64, i64* %10, align 8
  %167 = trunc i64 %166 to i32
  store i32 %167, i32* %16, align 4
  %168 = load i32, i32* @MSG_TRUNC, align 4
  %169 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %170 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 8
  %172 = or i32 %171, %168
  store i32 %172, i32* %170, align 8
  br label %173

173:                                              ; preds = %165, %157
  %174 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %175 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %174, i32 0, i32 2
  %176 = load %struct.TYPE_2__*, %struct.TYPE_2__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.tipc_msg*, %struct.tipc_msg** %15, align 8
  %180 = call i32 @msg_data(%struct.tipc_msg* %179)
  %181 = load i32, i32* %16, align 4
  %182 = call i32 @copy_to_user(i32 %178, i32 %180, i32 %181)
  %183 = call i64 @unlikely(i32 %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %173
  %186 = load i32, i32* @EFAULT, align 4
  %187 = sub nsw i32 0, %186
  store i32 %187, i32* %18, align 4
  br label %244

188:                                              ; preds = %173
  %189 = load i32, i32* %16, align 4
  store i32 %189, i32* %18, align 4
  br label %210

190:                                              ; preds = %154
  %191 = load %struct.socket*, %struct.socket** %8, align 8
  %192 = getelementptr inbounds %struct.socket, %struct.socket* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @SS_READY, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %205, label %196

196:                                              ; preds = %190
  %197 = load i64, i64* %17, align 8
  %198 = load i64, i64* @TIPC_CONN_SHUTDOWN, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %205, label %200

200:                                              ; preds = %196
  %201 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %202 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %200, %196, %190
  store i32 0, i32* %18, align 4
  br label %209

206:                                              ; preds = %200
  %207 = load i32, i32* @ECONNRESET, align 4
  %208 = sub nsw i32 0, %207
  store i32 %208, i32* %18, align 4
  br label %209

209:                                              ; preds = %206, %205
  br label %210

210:                                              ; preds = %209, %188
  %211 = load i32, i32* %11, align 4
  %212 = load i32, i32* @MSG_PEEK, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  %215 = xor i1 %214, true
  %216 = zext i1 %215 to i32
  %217 = call i64 @likely(i32 %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %243

219:                                              ; preds = %210
  %220 = load %struct.socket*, %struct.socket** %8, align 8
  %221 = getelementptr inbounds %struct.socket, %struct.socket* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @SS_READY, align 8
  %224 = icmp ne i64 %222, %223
  br i1 %224, label %225, label %240

225:                                              ; preds = %219
  %226 = load %struct.tipc_port*, %struct.tipc_port** %13, align 8
  %227 = getelementptr inbounds %struct.tipc_port, %struct.tipc_port* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = add nsw i64 %228, 1
  store i64 %229, i64* %227, align 8
  %230 = load i64, i64* @TIPC_FLOW_CONTROL_WIN, align 8
  %231 = icmp sge i64 %229, %230
  br i1 %231, label %232, label %240

232:                                              ; preds = %225
  %233 = load %struct.tipc_port*, %struct.tipc_port** %13, align 8
  %234 = getelementptr inbounds %struct.tipc_port, %struct.tipc_port* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 8
  %236 = load %struct.tipc_port*, %struct.tipc_port** %13, align 8
  %237 = getelementptr inbounds %struct.tipc_port, %struct.tipc_port* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = call i32 @tipc_acknowledge(i32 %235, i64 %238)
  br label %240

240:                                              ; preds = %232, %225, %219
  %241 = load %struct.sock*, %struct.sock** %12, align 8
  %242 = call i32 @advance_rx_queue(%struct.sock* %241)
  br label %243

243:                                              ; preds = %240, %210
  br label %244

244:                                              ; preds = %243, %185, %153, %132, %106, %78, %70, %54
  %245 = load %struct.sock*, %struct.sock** %12, align 8
  %246 = call i32 @release_sock(%struct.sock* %245)
  %247 = load i32, i32* %18, align 4
  store i32 %247, i32* %6, align 4
  br label %248

248:                                              ; preds = %244, %38, %28
  %249 = load i32, i32* %6, align 4
  ret i32 %249
}

declare dso_local %struct.tipc_port* @tipc_sk_port(%struct.sock*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i64 @skb_queue_empty(i32*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local %struct.sk_buff* @skb_peek(i32*) #1

declare dso_local %struct.tipc_msg* @buf_msg(%struct.sk_buff*) #1

declare dso_local i32 @msg_data_sz(%struct.tipc_msg*) #1

declare dso_local i64 @msg_errcode(%struct.tipc_msg*) #1

declare dso_local i32 @auto_connect(%struct.socket*, %struct.tipc_msg*) #1

declare dso_local i32 @advance_rx_queue(%struct.sock*) #1

declare dso_local i32 @set_orig_addr(%struct.msghdr*, %struct.tipc_msg*) #1

declare dso_local i32 @anc_data_recv(%struct.msghdr*, %struct.tipc_msg*, %struct.tipc_port*) #1

declare dso_local i32 @copy_to_user(i32, i32, i32) #1

declare dso_local i32 @msg_data(%struct.tipc_msg*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @tipc_acknowledge(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
