; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_port.c_tipc_peer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_port.c_tipc_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_portid = type { i32, i32 }
%struct.port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_peer(i32 %0, %struct.tipc_portid* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.tipc_portid*, align 8
  %6 = alloca %struct.port*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.tipc_portid* %1, %struct.tipc_portid** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.port* @tipc_port_lock(i32 %8)
  store %struct.port* %9, %struct.port** %6, align 8
  %10 = load %struct.port*, %struct.port** %6, align 8
  %11 = icmp ne %struct.port* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %37

15:                                               ; preds = %2
  %16 = load %struct.port*, %struct.port** %6, align 8
  %17 = getelementptr inbounds %struct.port, %struct.port* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %15
  %22 = load %struct.port*, %struct.port** %6, align 8
  %23 = call i32 @port_peerport(%struct.port* %22)
  %24 = load %struct.tipc_portid*, %struct.tipc_portid** %5, align 8
  %25 = getelementptr inbounds %struct.tipc_portid, %struct.tipc_portid* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.port*, %struct.port** %6, align 8
  %27 = call i32 @port_peernode(%struct.port* %26)
  %28 = load %struct.tipc_portid*, %struct.tipc_portid** %5, align 8
  %29 = getelementptr inbounds %struct.tipc_portid, %struct.tipc_portid* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  store i32 0, i32* %7, align 4
  br label %33

30:                                               ; preds = %15
  %31 = load i32, i32* @ENOTCONN, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %30, %21
  %34 = load %struct.port*, %struct.port** %6, align 8
  %35 = call i32 @tipc_port_unlock(%struct.port* %34)
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %33, %12
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.port* @tipc_port_lock(i32) #1

declare dso_local i32 @port_peerport(%struct.port*) #1

declare dso_local i32 @port_peernode(%struct.port*) #1

declare dso_local i32 @tipc_port_unlock(%struct.port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
