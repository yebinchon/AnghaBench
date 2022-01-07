; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_port.c_tipc_port_reject_sections.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_port.c_tipc_port_reject_sections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port = type { i32 }
%struct.tipc_msg = type { i32 }
%struct.iovec = type { i32 }
%struct.sk_buff = type { i32 }

@MAX_MSG_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_port_reject_sections(%struct.port* %0, %struct.tipc_msg* %1, %struct.iovec* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.port*, align 8
  %8 = alloca %struct.tipc_msg*, align 8
  %9 = alloca %struct.iovec*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i32, align 4
  store %struct.port* %0, %struct.port** %7, align 8
  store %struct.tipc_msg* %1, %struct.tipc_msg** %8, align 8
  store %struct.iovec* %2, %struct.iovec** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %15 = load %struct.iovec*, %struct.iovec** %9, align 8
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* @MAX_MSG_SIZE, align 4
  %18 = load %struct.port*, %struct.port** %7, align 8
  %19 = getelementptr inbounds %struct.port, %struct.port* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @msg_build(%struct.tipc_msg* %14, %struct.iovec* %15, i32 %16, i32 %17, i32 %23, %struct.sk_buff** %12)
  store i32 %24, i32* %13, align 4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %26 = icmp ne %struct.sk_buff* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %5
  %28 = load i32, i32* %13, align 4
  store i32 %28, i32* %6, align 4
  br label %33

29:                                               ; preds = %5
  %30 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @tipc_reject_msg(%struct.sk_buff* %30, i32 %31)
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %29, %27
  %34 = load i32, i32* %6, align 4
  ret i32 %34
}

declare dso_local i32 @msg_build(%struct.tipc_msg*, %struct.iovec*, i32, i32, i32, %struct.sk_buff**) #1

declare dso_local i32 @tipc_reject_msg(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
