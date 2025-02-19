; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_port.c_port_build_proto_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_port.c_port_build_proto_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tipc_msg = type { i32 }

@LONG_H_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"PORT>SEND>:\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (i32, i32, i32, i32, i32, i32, i32, i32, i32)* @port_build_proto_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @port_build_proto_msg(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.sk_buff*, align 8
  %20 = alloca %struct.tipc_msg*, align 8
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %21 = load i32, i32* @LONG_H_SIZE, align 4
  %22 = call %struct.sk_buff* @buf_acquire(i32 %21)
  store %struct.sk_buff* %22, %struct.sk_buff** %19, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %24 = icmp ne %struct.sk_buff* %23, null
  br i1 %24, label %25, label %54

25:                                               ; preds = %9
  %26 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %27 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %26)
  store %struct.tipc_msg* %27, %struct.tipc_msg** %20, align 8
  %28 = load %struct.tipc_msg*, %struct.tipc_msg** %20, align 8
  %29 = load i32, i32* %14, align 4
  %30 = load i32, i32* %15, align 4
  %31 = load i32, i32* @LONG_H_SIZE, align 4
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @msg_init(%struct.tipc_msg* %28, i32 %29, i32 %30, i32 %31, i32 %32)
  %34 = load %struct.tipc_msg*, %struct.tipc_msg** %20, align 8
  %35 = load i32, i32* %16, align 4
  %36 = call i32 @msg_set_errcode(%struct.tipc_msg* %34, i32 %35)
  %37 = load %struct.tipc_msg*, %struct.tipc_msg** %20, align 8
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @msg_set_destport(%struct.tipc_msg* %37, i32 %38)
  %40 = load %struct.tipc_msg*, %struct.tipc_msg** %20, align 8
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @msg_set_origport(%struct.tipc_msg* %40, i32 %41)
  %43 = load %struct.tipc_msg*, %struct.tipc_msg** %20, align 8
  %44 = load i32, i32* %13, align 4
  %45 = call i32 @msg_set_orignode(%struct.tipc_msg* %43, i32 %44)
  %46 = load %struct.tipc_msg*, %struct.tipc_msg** %20, align 8
  %47 = load i32, i32* %17, align 4
  %48 = call i32 @msg_set_transp_seqno(%struct.tipc_msg* %46, i32 %47)
  %49 = load %struct.tipc_msg*, %struct.tipc_msg** %20, align 8
  %50 = load i32, i32* %18, align 4
  %51 = call i32 @msg_set_msgcnt(%struct.tipc_msg* %49, i32 %50)
  %52 = load %struct.tipc_msg*, %struct.tipc_msg** %20, align 8
  %53 = call i32 @msg_dbg(%struct.tipc_msg* %52, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %54

54:                                               ; preds = %25, %9
  %55 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  ret %struct.sk_buff* %55
}

declare dso_local %struct.sk_buff* @buf_acquire(i32) #1

declare dso_local %struct.tipc_msg* @buf_msg(%struct.sk_buff*) #1

declare dso_local i32 @msg_init(%struct.tipc_msg*, i32, i32, i32, i32) #1

declare dso_local i32 @msg_set_errcode(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_destport(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_origport(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_orignode(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_transp_seqno(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_msgcnt(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_dbg(%struct.tipc_msg*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
