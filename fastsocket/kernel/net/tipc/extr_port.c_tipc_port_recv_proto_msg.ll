; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_port.c_tipc_port_recv_proto_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_port.c_tipc_port_recv_proto_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tipc_msg = type { i32 }
%struct.port = type { i64, i32, %struct.TYPE_2__, i32 (%struct.TYPE_2__*)*, i32 }
%struct.TYPE_2__ = type { i64, i64, i64 }

@TIPC_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"PORT<RECV<:\00", align 1
@TIPC_ERR_NO_PORT = common dso_local global i64 0, align 8
@CONN_ACK = common dso_local global i64 0, align 8
@tipc_own_addr = common dso_local global i32 0, align 4
@TIPC_HIGH_IMPORTANCE = common dso_local global i32 0, align 4
@TIPC_CONN_MSG = common dso_local global i32 0, align 4
@CONN_PROBE = common dso_local global i64 0, align 8
@CONN_MANAGER = common dso_local global i32 0, align 4
@CONN_PROBE_REPLY = common dso_local global i32 0, align 4
@CONFIRMED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_port_recv_proto_msg(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.tipc_msg*, align 8
  %4 = alloca %struct.port*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %12 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %11)
  store %struct.tipc_msg* %12, %struct.tipc_msg** %3, align 8
  %13 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %14 = call i32 @msg_destport(%struct.tipc_msg* %13)
  %15 = call %struct.port* @tipc_port_lock(i32 %14)
  store %struct.port* %15, %struct.port** %4, align 8
  %16 = load i64, i64* @TIPC_OK, align 8
  store i64 %16, i64* %5, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %7, align 8
  %17 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %18 = call i32 @msg_dbg(%struct.tipc_msg* %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.port*, %struct.port** %4, align 8
  %20 = icmp ne %struct.port* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %1
  %22 = load i64, i64* @TIPC_ERR_NO_PORT, align 8
  store i64 %22, i64* %5, align 8
  br label %128

23:                                               ; preds = %1
  %24 = load %struct.port*, %struct.port** %4, align 8
  %25 = getelementptr inbounds %struct.port, %struct.port* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %118

29:                                               ; preds = %23
  %30 = load %struct.port*, %struct.port** %4, align 8
  %31 = call i64 @port_peernode(%struct.port* %30)
  %32 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %33 = call i64 @msg_orignode(%struct.tipc_msg* %32)
  %34 = icmp ne i64 %31, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i64, i64* @TIPC_ERR_NO_PORT, align 8
  store i64 %36, i64* %5, align 8
  br label %37

37:                                               ; preds = %35, %29
  %38 = load %struct.port*, %struct.port** %4, align 8
  %39 = call i64 @port_peerport(%struct.port* %38)
  %40 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %41 = call i64 @msg_origport(%struct.tipc_msg* %40)
  %42 = icmp ne i64 %39, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i64, i64* @TIPC_ERR_NO_PORT, align 8
  store i64 %44, i64* %5, align 8
  br label %45

45:                                               ; preds = %43, %37
  %46 = load i64, i64* %5, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %68, label %48

48:                                               ; preds = %45
  %49 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %50 = call i64 @msg_routed(%struct.tipc_msg* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %68

52:                                               ; preds = %48
  %53 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %54 = call i64 @msg_transp_seqno(%struct.tipc_msg* %53)
  store i64 %54, i64* %8, align 8
  %55 = load %struct.port*, %struct.port** %4, align 8
  %56 = getelementptr inbounds %struct.port, %struct.port* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %56, align 8
  store i64 %58, i64* %9, align 8
  %59 = load i64, i64* %8, align 8
  %60 = load i64, i64* %9, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %52
  %63 = load i64, i64* @TIPC_ERR_NO_PORT, align 8
  store i64 %63, i64* %5, align 8
  %64 = load %struct.port*, %struct.port** %4, align 8
  %65 = load i64, i64* %5, align 8
  %66 = call %struct.sk_buff* @port_build_self_abort_msg(%struct.port* %64, i64 %65)
  store %struct.sk_buff* %66, %struct.sk_buff** %7, align 8
  br label %67

67:                                               ; preds = %62, %52
  br label %68

68:                                               ; preds = %67, %48, %45
  %69 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %70 = call i64 @msg_type(%struct.tipc_msg* %69)
  %71 = load i64, i64* @CONN_ACK, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %117

73:                                               ; preds = %68
  %74 = load %struct.port*, %struct.port** %4, align 8
  %75 = call i64 @tipc_port_congested(%struct.port* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %73
  %78 = load %struct.port*, %struct.port** %4, align 8
  %79 = getelementptr inbounds %struct.port, %struct.port* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %77
  %84 = load %struct.port*, %struct.port** %4, align 8
  %85 = getelementptr inbounds %struct.port, %struct.port* %84, i32 0, i32 3
  %86 = load i32 (%struct.TYPE_2__*)*, i32 (%struct.TYPE_2__*)** %85, align 8
  %87 = icmp ne i32 (%struct.TYPE_2__*)* %86, null
  br label %88

88:                                               ; preds = %83, %77, %73
  %89 = phi i1 [ false, %77 ], [ false, %73 ], [ %87, %83 ]
  %90 = zext i1 %89 to i32
  store i32 %90, i32* %10, align 4
  %91 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %92 = call i64 @msg_msgcnt(%struct.tipc_msg* %91)
  %93 = load %struct.port*, %struct.port** %4, align 8
  %94 = getelementptr inbounds %struct.port, %struct.port* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %96, %92
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %94, align 8
  %99 = load %struct.port*, %struct.port** %4, align 8
  %100 = call i64 @tipc_port_congested(%struct.port* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %88
  br label %168

103:                                              ; preds = %88
  %104 = load %struct.port*, %struct.port** %4, align 8
  %105 = getelementptr inbounds %struct.port, %struct.port* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 1
  store i64 0, i64* %106, align 8
  %107 = load i32, i32* %10, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %103
  br label %168

110:                                              ; preds = %103
  %111 = load %struct.port*, %struct.port** %4, align 8
  %112 = getelementptr inbounds %struct.port, %struct.port* %111, i32 0, i32 3
  %113 = load i32 (%struct.TYPE_2__*)*, i32 (%struct.TYPE_2__*)** %112, align 8
  %114 = load %struct.port*, %struct.port** %4, align 8
  %115 = getelementptr inbounds %struct.port, %struct.port* %114, i32 0, i32 2
  %116 = call i32 %113(%struct.TYPE_2__* %115)
  br label %168

117:                                              ; preds = %68
  br label %127

118:                                              ; preds = %23
  %119 = load %struct.port*, %struct.port** %4, align 8
  %120 = getelementptr inbounds %struct.port, %struct.port* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %118
  %125 = load i64, i64* @TIPC_ERR_NO_PORT, align 8
  store i64 %125, i64* %5, align 8
  br label %126

126:                                              ; preds = %124, %118
  br label %127

127:                                              ; preds = %126, %117
  br label %128

128:                                              ; preds = %127, %21
  %129 = load i64, i64* %5, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %143

131:                                              ; preds = %128
  %132 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %133 = call i64 @msg_origport(%struct.tipc_msg* %132)
  %134 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %135 = call i64 @msg_orignode(%struct.tipc_msg* %134)
  %136 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %137 = call i32 @msg_destport(%struct.tipc_msg* %136)
  %138 = load i32, i32* @tipc_own_addr, align 4
  %139 = load i32, i32* @TIPC_HIGH_IMPORTANCE, align 4
  %140 = load i32, i32* @TIPC_CONN_MSG, align 4
  %141 = load i64, i64* %5, align 8
  %142 = call %struct.sk_buff* @port_build_proto_msg(i64 %133, i64 %135, i32 %137, i32 %138, i32 %139, i32 %140, i64 %141, i32 0, i32 0)
  store %struct.sk_buff* %142, %struct.sk_buff** %6, align 8
  br label %168

143:                                              ; preds = %128
  %144 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %145 = call i64 @msg_type(%struct.tipc_msg* %144)
  %146 = load i64, i64* @CONN_PROBE, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %162

148:                                              ; preds = %143
  %149 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %150 = call i64 @msg_origport(%struct.tipc_msg* %149)
  %151 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %152 = call i64 @msg_orignode(%struct.tipc_msg* %151)
  %153 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %154 = call i32 @msg_destport(%struct.tipc_msg* %153)
  %155 = load i32, i32* @tipc_own_addr, align 4
  %156 = load i32, i32* @CONN_MANAGER, align 4
  %157 = load i32, i32* @CONN_PROBE_REPLY, align 4
  %158 = load i64, i64* @TIPC_OK, align 8
  %159 = load %struct.port*, %struct.port** %4, align 8
  %160 = call i32 @port_out_seqno(%struct.port* %159)
  %161 = call %struct.sk_buff* @port_build_proto_msg(i64 %150, i64 %152, i32 %154, i32 %155, i32 %156, i32 %157, i64 %158, i32 %160, i32 0)
  store %struct.sk_buff* %161, %struct.sk_buff** %6, align 8
  br label %162

162:                                              ; preds = %148, %143
  %163 = load i32, i32* @CONFIRMED, align 4
  %164 = load %struct.port*, %struct.port** %4, align 8
  %165 = getelementptr inbounds %struct.port, %struct.port* %164, i32 0, i32 1
  store i32 %163, i32* %165, align 8
  %166 = load %struct.port*, %struct.port** %4, align 8
  %167 = call i32 @port_incr_out_seqno(%struct.port* %166)
  br label %168

168:                                              ; preds = %162, %131, %110, %109, %102
  %169 = load %struct.port*, %struct.port** %4, align 8
  %170 = icmp ne %struct.port* %169, null
  br i1 %170, label %171, label %174

171:                                              ; preds = %168
  %172 = load %struct.port*, %struct.port** %4, align 8
  %173 = call i32 @tipc_port_unlock(%struct.port* %172)
  br label %174

174:                                              ; preds = %171, %168
  %175 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %176 = call i32 @tipc_net_route_msg(%struct.sk_buff* %175)
  %177 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %178 = call i32 @tipc_net_route_msg(%struct.sk_buff* %177)
  %179 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %180 = call i32 @buf_discard(%struct.sk_buff* %179)
  ret void
}

declare dso_local %struct.tipc_msg* @buf_msg(%struct.sk_buff*) #1

declare dso_local %struct.port* @tipc_port_lock(i32) #1

declare dso_local i32 @msg_destport(%struct.tipc_msg*) #1

declare dso_local i32 @msg_dbg(%struct.tipc_msg*, i8*) #1

declare dso_local i64 @port_peernode(%struct.port*) #1

declare dso_local i64 @msg_orignode(%struct.tipc_msg*) #1

declare dso_local i64 @port_peerport(%struct.port*) #1

declare dso_local i64 @msg_origport(%struct.tipc_msg*) #1

declare dso_local i64 @msg_routed(%struct.tipc_msg*) #1

declare dso_local i64 @msg_transp_seqno(%struct.tipc_msg*) #1

declare dso_local %struct.sk_buff* @port_build_self_abort_msg(%struct.port*, i64) #1

declare dso_local i64 @msg_type(%struct.tipc_msg*) #1

declare dso_local i64 @tipc_port_congested(%struct.port*) #1

declare dso_local i64 @msg_msgcnt(%struct.tipc_msg*) #1

declare dso_local %struct.sk_buff* @port_build_proto_msg(i64, i64, i32, i32, i32, i32, i64, i32, i32) #1

declare dso_local i32 @port_out_seqno(%struct.port*) #1

declare dso_local i32 @port_incr_out_seqno(%struct.port*) #1

declare dso_local i32 @tipc_port_unlock(%struct.port*) #1

declare dso_local i32 @tipc_net_route_msg(%struct.sk_buff*) #1

declare dso_local i32 @buf_discard(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
