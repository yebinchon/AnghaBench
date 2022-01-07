; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_port.c_tipc_reject_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_port.c_tipc_reject_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tipc_msg = type { i32 }
%struct.port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@MAX_REJECT_SIZE = common dso_local global i64 0, align 8
@TIPC_CRITICAL_IMPORTANCE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"port->rej: \00", align 1
@MCAST_H_SIZE = common dso_local global i32 0, align 4
@LONG_H_SIZE = common dso_local global i32 0, align 4
@tipc_own_addr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_reject_msg(%struct.sk_buff* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.tipc_msg*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.tipc_msg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.port*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i64 %1, i64* %5, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %14)
  store %struct.tipc_msg* %15, %struct.tipc_msg** %6, align 8
  %16 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %17 = call i64 @msg_importance(%struct.tipc_msg* %16)
  store i64 %17, i64* %10, align 8
  %18 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %19 = call i64 @msg_data_sz(%struct.tipc_msg* %18)
  store i64 %19, i64* %11, align 8
  %20 = load i64, i64* %11, align 8
  %21 = load i64, i64* @MAX_REJECT_SIZE, align 8
  %22 = icmp sgt i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i64, i64* @MAX_REJECT_SIZE, align 8
  store i64 %24, i64* %11, align 8
  br label %25

25:                                               ; preds = %23, %2
  %26 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %27 = call i64 @msg_connected(%struct.tipc_msg* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = load i64, i64* %10, align 8
  %31 = load i64, i64* @TIPC_CRITICAL_IMPORTANCE, align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i64, i64* %10, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %10, align 8
  br label %36

36:                                               ; preds = %33, %29, %25
  %37 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %38 = call i32 @msg_dbg(%struct.tipc_msg* %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %39 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %40 = call i64 @msg_errcode(%struct.tipc_msg* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %36
  %43 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %44 = call i64 @msg_dest_droppable(%struct.tipc_msg* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %42, %36
  %47 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %48 = call i32 @buf_discard(%struct.sk_buff* %47)
  %49 = load i64, i64* %11, align 8
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %3, align 4
  br label %159

51:                                               ; preds = %42
  %52 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %53 = call i64 @msg_mcast(%struct.tipc_msg* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i32, i32* @MCAST_H_SIZE, align 4
  store i32 %56, i32* %9, align 4
  br label %59

57:                                               ; preds = %51
  %58 = load i32, i32* @LONG_H_SIZE, align 4
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %57, %55
  %60 = load i64, i64* %11, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %60, %62
  %64 = call %struct.sk_buff* @buf_acquire(i64 %63)
  store %struct.sk_buff* %64, %struct.sk_buff** %7, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %66 = icmp eq %struct.sk_buff* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %59
  %68 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %69 = call i32 @buf_discard(%struct.sk_buff* %68)
  %70 = load i64, i64* %11, align 8
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %3, align 4
  br label %159

72:                                               ; preds = %59
  %73 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %74 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %73)
  store %struct.tipc_msg* %74, %struct.tipc_msg** %8, align 8
  %75 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %76 = load i64, i64* %10, align 8
  %77 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %78 = call i32 @msg_type(%struct.tipc_msg* %77)
  %79 = load i32, i32* %9, align 4
  %80 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %81 = call i32 @msg_orignode(%struct.tipc_msg* %80)
  %82 = call i32 @msg_init(%struct.tipc_msg* %75, i64 %76, i32 %78, i32 %79, i32 %81)
  %83 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %84 = load i64, i64* %5, align 8
  %85 = call i32 @msg_set_errcode(%struct.tipc_msg* %83, i64 %84)
  %86 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %87 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %88 = call i32 @msg_origport(%struct.tipc_msg* %87)
  %89 = call i32 @msg_set_destport(%struct.tipc_msg* %86, i32 %88)
  %90 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %91 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %92 = call i32 @msg_destport(%struct.tipc_msg* %91)
  %93 = call i32 @msg_set_origport(%struct.tipc_msg* %90, i32 %92)
  %94 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %95 = call i64 @msg_short(%struct.tipc_msg* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %72
  %98 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %99 = load i32, i32* @tipc_own_addr, align 4
  %100 = call i32 @msg_set_orignode(%struct.tipc_msg* %98, i32 %99)
  br label %114

101:                                              ; preds = %72
  %102 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %103 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %104 = call i32 @msg_destnode(%struct.tipc_msg* %103)
  %105 = call i32 @msg_set_orignode(%struct.tipc_msg* %102, i32 %104)
  %106 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %107 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %108 = call i32 @msg_nametype(%struct.tipc_msg* %107)
  %109 = call i32 @msg_set_nametype(%struct.tipc_msg* %106, i32 %108)
  %110 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %111 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %112 = call i32 @msg_nameinst(%struct.tipc_msg* %111)
  %113 = call i32 @msg_set_nameinst(%struct.tipc_msg* %110, i32 %112)
  br label %114

114:                                              ; preds = %101, %97
  %115 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %116 = load i64, i64* %11, align 8
  %117 = load i32, i32* %9, align 4
  %118 = sext i32 %117 to i64
  %119 = add nsw i64 %116, %118
  %120 = call i32 @msg_set_size(%struct.tipc_msg* %115, i64 %119)
  %121 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %122 = load i32, i32* %9, align 4
  %123 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %124 = call i32 @msg_data(%struct.tipc_msg* %123)
  %125 = load i64, i64* %11, align 8
  %126 = call i32 @skb_copy_to_linear_data_offset(%struct.sk_buff* %121, i32 %122, i32 %124, i64 %125)
  %127 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %128 = call i64 @msg_connected(%struct.tipc_msg* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %152

130:                                              ; preds = %114
  store %struct.sk_buff* null, %struct.sk_buff** %12, align 8
  %131 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %132 = call i32 @msg_destport(%struct.tipc_msg* %131)
  %133 = call %struct.port* @tipc_port_lock(i32 %132)
  store %struct.port* %133, %struct.port** %13, align 8
  %134 = load %struct.port*, %struct.port** %13, align 8
  %135 = icmp ne %struct.port* %134, null
  br i1 %135, label %136, label %149

136:                                              ; preds = %130
  %137 = load %struct.port*, %struct.port** %13, align 8
  %138 = getelementptr inbounds %struct.port, %struct.port* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %136
  %143 = load %struct.port*, %struct.port** %13, align 8
  %144 = load i64, i64* %5, align 8
  %145 = call %struct.sk_buff* @port_build_self_abort_msg(%struct.port* %143, i64 %144)
  store %struct.sk_buff* %145, %struct.sk_buff** %12, align 8
  br label %146

146:                                              ; preds = %142, %136
  %147 = load %struct.port*, %struct.port** %13, align 8
  %148 = call i32 @tipc_port_unlock(%struct.port* %147)
  br label %149

149:                                              ; preds = %146, %130
  %150 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %151 = call i32 @tipc_net_route_msg(%struct.sk_buff* %150)
  br label %152

152:                                              ; preds = %149, %114
  %153 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %154 = call i32 @buf_discard(%struct.sk_buff* %153)
  %155 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %156 = call i32 @tipc_net_route_msg(%struct.sk_buff* %155)
  %157 = load i64, i64* %11, align 8
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %3, align 4
  br label %159

159:                                              ; preds = %152, %67, %46
  %160 = load i32, i32* %3, align 4
  ret i32 %160
}

declare dso_local %struct.tipc_msg* @buf_msg(%struct.sk_buff*) #1

declare dso_local i64 @msg_importance(%struct.tipc_msg*) #1

declare dso_local i64 @msg_data_sz(%struct.tipc_msg*) #1

declare dso_local i64 @msg_connected(%struct.tipc_msg*) #1

declare dso_local i32 @msg_dbg(%struct.tipc_msg*, i8*) #1

declare dso_local i64 @msg_errcode(%struct.tipc_msg*) #1

declare dso_local i64 @msg_dest_droppable(%struct.tipc_msg*) #1

declare dso_local i32 @buf_discard(%struct.sk_buff*) #1

declare dso_local i64 @msg_mcast(%struct.tipc_msg*) #1

declare dso_local %struct.sk_buff* @buf_acquire(i64) #1

declare dso_local i32 @msg_init(%struct.tipc_msg*, i64, i32, i32, i32) #1

declare dso_local i32 @msg_type(%struct.tipc_msg*) #1

declare dso_local i32 @msg_orignode(%struct.tipc_msg*) #1

declare dso_local i32 @msg_set_errcode(%struct.tipc_msg*, i64) #1

declare dso_local i32 @msg_set_destport(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_origport(%struct.tipc_msg*) #1

declare dso_local i32 @msg_set_origport(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_destport(%struct.tipc_msg*) #1

declare dso_local i64 @msg_short(%struct.tipc_msg*) #1

declare dso_local i32 @msg_set_orignode(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_destnode(%struct.tipc_msg*) #1

declare dso_local i32 @msg_set_nametype(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_nametype(%struct.tipc_msg*) #1

declare dso_local i32 @msg_set_nameinst(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_nameinst(%struct.tipc_msg*) #1

declare dso_local i32 @msg_set_size(%struct.tipc_msg*, i64) #1

declare dso_local i32 @skb_copy_to_linear_data_offset(%struct.sk_buff*, i32, i32, i64) #1

declare dso_local i32 @msg_data(%struct.tipc_msg*) #1

declare dso_local %struct.port* @tipc_port_lock(i32) #1

declare dso_local %struct.sk_buff* @port_build_self_abort_msg(%struct.port*, i64) #1

declare dso_local i32 @tipc_port_unlock(%struct.port*) #1

declare dso_local i32 @tipc_net_route_msg(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
