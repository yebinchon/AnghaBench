; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_port.c_tipc_send_buf2port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_port.c_tipc_send_buf2port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_portid = type { i32, i32 }
%struct.sk_buff = type { i32 }

@tipc_own_addr = common dso_local global i32 0, align 4
@TIPC_PORT_IMPORTANCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_send_buf2port(i32 %0, %struct.tipc_portid* %1, %struct.sk_buff* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tipc_portid*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tipc_portid, align 4
  store i32 %0, i32* %5, align 4
  store %struct.tipc_portid* %1, %struct.tipc_portid** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = getelementptr inbounds %struct.tipc_portid, %struct.tipc_portid* %9, i32 0, i32 1
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* @tipc_own_addr, align 4
  %13 = getelementptr inbounds %struct.tipc_portid, %struct.tipc_portid* %9, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.tipc_portid*, %struct.tipc_portid** %6, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @TIPC_PORT_IMPORTANCE, align 4
  %19 = call i32 @tipc_forward_buf2port(i32 %14, %struct.tipc_portid* %15, %struct.sk_buff* %16, i32 %17, %struct.tipc_portid* %9, i32 %18)
  ret i32 %19
}

declare dso_local i32 @tipc_forward_buf2port(i32, %struct.tipc_portid*, %struct.sk_buff*, i32, %struct.tipc_portid*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
