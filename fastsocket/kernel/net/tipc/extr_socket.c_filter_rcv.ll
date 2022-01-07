; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_socket.c_filter_rcv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_socket.c_filter_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32, %struct.socket* }
%struct.socket = type { i64 }
%struct.sk_buff = type { i32 }
%struct.tipc_msg = type { i32 }
%struct.TYPE_2__ = type { i32 }

@SS_READY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"dispatch filter 1\0A\00", align 1
@TIPC_ERR_NO_PORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"dispatch filter 2\0A\00", align 1
@SS_CONNECTED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"dispatch filter 3\0A\00", align 1
@SS_CONNECTING = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"dispatch filter 4\0A\00", align 1
@SS_LISTENING = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"dispatch filter 5\0A\00", align 1
@SS_DISCONNECTING = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [19 x i8] c"dispatch filter 6\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"dispatch filter 7\0A\00", align 1
@tipc_queue_size = common dso_local global i32 0, align 4
@OVERLOAD_LIMIT_BASE = common dso_local global i32 0, align 4
@TIPC_ERR_OVERLOAD = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"<DISP<: \00", align 1
@TIPC_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*)* @filter_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_rcv(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.tipc_msg*, align 8
  %8 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load %struct.sock*, %struct.sock** %4, align 8
  %10 = getelementptr inbounds %struct.sock, %struct.sock* %9, i32 0, i32 2
  %11 = load %struct.socket*, %struct.socket** %10, align 8
  store %struct.socket* %11, %struct.socket** %6, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %12)
  store %struct.tipc_msg* %13, %struct.tipc_msg** %7, align 8
  %14 = load %struct.socket*, %struct.socket** %6, align 8
  %15 = getelementptr inbounds %struct.socket, %struct.socket* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SS_READY, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %2
  %20 = load %struct.tipc_msg*, %struct.tipc_msg** %7, align 8
  %21 = call i64 @msg_connected(%struct.tipc_msg* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load %struct.tipc_msg*, %struct.tipc_msg** %7, align 8
  %25 = call i32 @msg_dbg(%struct.tipc_msg* %24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @TIPC_ERR_NO_PORT, align 4
  store i32 %26, i32* %3, align 4
  br label %202

27:                                               ; preds = %19
  br label %116

28:                                               ; preds = %2
  %29 = load %struct.tipc_msg*, %struct.tipc_msg** %7, align 8
  %30 = call i64 @msg_mcast(%struct.tipc_msg* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load %struct.tipc_msg*, %struct.tipc_msg** %7, align 8
  %34 = call i32 @msg_dbg(%struct.tipc_msg* %33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @TIPC_ERR_NO_PORT, align 4
  store i32 %35, i32* %3, align 4
  br label %202

36:                                               ; preds = %28
  %37 = load %struct.socket*, %struct.socket** %6, align 8
  %38 = getelementptr inbounds %struct.socket, %struct.socket* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SS_CONNECTED, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %36
  %43 = load %struct.tipc_msg*, %struct.tipc_msg** %7, align 8
  %44 = call i64 @msg_connected(%struct.tipc_msg* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = load %struct.tipc_msg*, %struct.tipc_msg** %7, align 8
  %48 = call i32 @msg_dbg(%struct.tipc_msg* %47, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %49 = load i32, i32* @TIPC_ERR_NO_PORT, align 4
  store i32 %49, i32* %3, align 4
  br label %202

50:                                               ; preds = %42
  br label %115

51:                                               ; preds = %36
  %52 = load %struct.socket*, %struct.socket** %6, align 8
  %53 = getelementptr inbounds %struct.socket, %struct.socket* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @SS_CONNECTING, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %70

57:                                               ; preds = %51
  %58 = load %struct.tipc_msg*, %struct.tipc_msg** %7, align 8
  %59 = call i64 @msg_connected(%struct.tipc_msg* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %69, label %61

61:                                               ; preds = %57
  %62 = load %struct.tipc_msg*, %struct.tipc_msg** %7, align 8
  %63 = call i64 @msg_errcode(%struct.tipc_msg* %62)
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load %struct.tipc_msg*, %struct.tipc_msg** %7, align 8
  %67 = call i32 @msg_dbg(%struct.tipc_msg* %66, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %68 = load i32, i32* @TIPC_ERR_NO_PORT, align 4
  store i32 %68, i32* %3, align 4
  br label %202

69:                                               ; preds = %61, %57
  br label %114

70:                                               ; preds = %51
  %71 = load %struct.socket*, %struct.socket** %6, align 8
  %72 = getelementptr inbounds %struct.socket, %struct.socket* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @SS_LISTENING, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %89

76:                                               ; preds = %70
  %77 = load %struct.tipc_msg*, %struct.tipc_msg** %7, align 8
  %78 = call i64 @msg_connected(%struct.tipc_msg* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %76
  %81 = load %struct.tipc_msg*, %struct.tipc_msg** %7, align 8
  %82 = call i64 @msg_errcode(%struct.tipc_msg* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %80, %76
  %85 = load %struct.tipc_msg*, %struct.tipc_msg** %7, align 8
  %86 = call i32 @msg_dbg(%struct.tipc_msg* %85, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %87 = load i32, i32* @TIPC_ERR_NO_PORT, align 4
  store i32 %87, i32* %3, align 4
  br label %202

88:                                               ; preds = %80
  br label %113

89:                                               ; preds = %70
  %90 = load %struct.socket*, %struct.socket** %6, align 8
  %91 = getelementptr inbounds %struct.socket, %struct.socket* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @SS_DISCONNECTING, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %89
  %96 = load %struct.tipc_msg*, %struct.tipc_msg** %7, align 8
  %97 = call i32 @msg_dbg(%struct.tipc_msg* %96, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %98 = load i32, i32* @TIPC_ERR_NO_PORT, align 4
  store i32 %98, i32* %3, align 4
  br label %202

99:                                               ; preds = %89
  %100 = load %struct.tipc_msg*, %struct.tipc_msg** %7, align 8
  %101 = call i64 @msg_connected(%struct.tipc_msg* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %99
  %104 = load %struct.tipc_msg*, %struct.tipc_msg** %7, align 8
  %105 = call i64 @msg_errcode(%struct.tipc_msg* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %103, %99
  %108 = load %struct.tipc_msg*, %struct.tipc_msg** %7, align 8
  %109 = call i32 @msg_dbg(%struct.tipc_msg* %108, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %110 = load i32, i32* @TIPC_ERR_NO_PORT, align 4
  store i32 %110, i32* %3, align 4
  br label %202

111:                                              ; preds = %103
  br label %112

112:                                              ; preds = %111
  br label %113

113:                                              ; preds = %112, %88
  br label %114

114:                                              ; preds = %113, %69
  br label %115

115:                                              ; preds = %114, %50
  br label %116

116:                                              ; preds = %115, %27
  %117 = call i64 @atomic_read(i32* @tipc_queue_size)
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %8, align 4
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* @OVERLOAD_LIMIT_BASE, align 4
  %121 = icmp sge i32 %119, %120
  %122 = zext i1 %121 to i32
  %123 = call i64 @unlikely(i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %116
  %126 = load %struct.tipc_msg*, %struct.tipc_msg** %7, align 8
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* @OVERLOAD_LIMIT_BASE, align 4
  %129 = call i64 @rx_queue_full(%struct.tipc_msg* %126, i32 %127, i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %125
  %132 = load i32, i32* @TIPC_ERR_OVERLOAD, align 4
  store i32 %132, i32* %3, align 4
  br label %202

133:                                              ; preds = %125
  br label %134

134:                                              ; preds = %133, %116
  %135 = load %struct.sock*, %struct.sock** %4, align 8
  %136 = getelementptr inbounds %struct.sock, %struct.sock* %135, i32 0, i32 1
  %137 = call i32 @skb_queue_len(i32* %136)
  store i32 %137, i32* %8, align 4
  %138 = load i32, i32* %8, align 4
  %139 = load i32, i32* @OVERLOAD_LIMIT_BASE, align 4
  %140 = sdiv i32 %139, 2
  %141 = icmp sge i32 %138, %140
  %142 = zext i1 %141 to i32
  %143 = call i64 @unlikely(i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %155

145:                                              ; preds = %134
  %146 = load %struct.tipc_msg*, %struct.tipc_msg** %7, align 8
  %147 = load i32, i32* %8, align 4
  %148 = load i32, i32* @OVERLOAD_LIMIT_BASE, align 4
  %149 = sdiv i32 %148, 2
  %150 = call i64 @rx_queue_full(%struct.tipc_msg* %146, i32 %147, i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %145
  %153 = load i32, i32* @TIPC_ERR_OVERLOAD, align 4
  store i32 %153, i32* %3, align 4
  br label %202

154:                                              ; preds = %145
  br label %155

155:                                              ; preds = %154, %134
  %156 = load %struct.tipc_msg*, %struct.tipc_msg** %7, align 8
  %157 = call i32 @msg_dbg(%struct.tipc_msg* %156, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %158 = load %struct.tipc_msg*, %struct.tipc_msg** %7, align 8
  %159 = call i32 @msg_data(%struct.tipc_msg* %158)
  %160 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %161 = call %struct.TYPE_2__* @TIPC_SKB_CB(%struct.sk_buff* %160)
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 0
  store i32 %159, i32* %162, align 4
  %163 = call i32 @atomic_inc(i32* @tipc_queue_size)
  %164 = load %struct.sock*, %struct.sock** %4, align 8
  %165 = getelementptr inbounds %struct.sock, %struct.sock* %164, i32 0, i32 1
  %166 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %167 = call i32 @__skb_queue_tail(i32* %165, %struct.sk_buff* %166)
  %168 = load %struct.tipc_msg*, %struct.tipc_msg** %7, align 8
  %169 = call i64 @msg_errcode(%struct.tipc_msg* %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %177

171:                                              ; preds = %155
  %172 = load %struct.socket*, %struct.socket** %6, align 8
  %173 = getelementptr inbounds %struct.socket, %struct.socket* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @SS_CONNECTED, align 8
  %176 = icmp eq i64 %174, %175
  br label %177

177:                                              ; preds = %171, %155
  %178 = phi i1 [ false, %155 ], [ %176, %171 ]
  %179 = zext i1 %178 to i32
  %180 = call i64 @unlikely(i32 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %189

182:                                              ; preds = %177
  %183 = load i64, i64* @SS_DISCONNECTING, align 8
  %184 = load %struct.socket*, %struct.socket** %6, align 8
  %185 = getelementptr inbounds %struct.socket, %struct.socket* %184, i32 0, i32 0
  store i64 %183, i64* %185, align 8
  %186 = load %struct.sock*, %struct.sock** %4, align 8
  %187 = call i32 @tipc_sk_port(%struct.sock* %186)
  %188 = call i32 @tipc_disconnect_port(i32 %187)
  br label %189

189:                                              ; preds = %182, %177
  %190 = load %struct.sock*, %struct.sock** %4, align 8
  %191 = getelementptr inbounds %struct.sock, %struct.sock* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = call i64 @waitqueue_active(i32 %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %200

195:                                              ; preds = %189
  %196 = load %struct.sock*, %struct.sock** %4, align 8
  %197 = getelementptr inbounds %struct.sock, %struct.sock* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = call i32 @wake_up_interruptible(i32 %198)
  br label %200

200:                                              ; preds = %195, %189
  %201 = load i32, i32* @TIPC_OK, align 4
  store i32 %201, i32* %3, align 4
  br label %202

202:                                              ; preds = %200, %152, %131, %107, %95, %84, %65, %46, %32, %23
  %203 = load i32, i32* %3, align 4
  ret i32 %203
}

declare dso_local %struct.tipc_msg* @buf_msg(%struct.sk_buff*) #1

declare dso_local i64 @msg_connected(%struct.tipc_msg*) #1

declare dso_local i32 @msg_dbg(%struct.tipc_msg*, i8*) #1

declare dso_local i64 @msg_mcast(%struct.tipc_msg*) #1

declare dso_local i64 @msg_errcode(%struct.tipc_msg*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @rx_queue_full(%struct.tipc_msg*, i32, i32) #1

declare dso_local i32 @skb_queue_len(i32*) #1

declare dso_local i32 @msg_data(%struct.tipc_msg*) #1

declare dso_local %struct.TYPE_2__* @TIPC_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @__skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @tipc_disconnect_port(i32) #1

declare dso_local i32 @tipc_sk_port(%struct.sock*) #1

declare dso_local i64 @waitqueue_active(i32) #1

declare dso_local i32 @wake_up_interruptible(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
