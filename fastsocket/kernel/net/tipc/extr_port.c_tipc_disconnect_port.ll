; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_port.c_tipc_disconnect_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_port.c_tipc_disconnect_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_port = type { i64 }
%struct.port = type { i32 }

@ENOTCONN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_disconnect_port(%struct.tipc_port* %0) #0 {
  %2 = alloca %struct.tipc_port*, align 8
  %3 = alloca i32, align 4
  store %struct.tipc_port* %0, %struct.tipc_port** %2, align 8
  %4 = load %struct.tipc_port*, %struct.tipc_port** %2, align 8
  %5 = getelementptr inbounds %struct.tipc_port, %struct.tipc_port* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load %struct.tipc_port*, %struct.tipc_port** %2, align 8
  %10 = getelementptr inbounds %struct.tipc_port, %struct.tipc_port* %9, i32 0, i32 0
  store i64 0, i64* %10, align 8
  %11 = load %struct.tipc_port*, %struct.tipc_port** %2, align 8
  %12 = bitcast %struct.tipc_port* %11 to %struct.port*
  %13 = getelementptr inbounds %struct.port, %struct.port* %12, i32 0, i32 0
  %14 = call i32 @tipc_nodesub_unsubscribe(i32* %13)
  store i32 0, i32* %3, align 4
  br label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOTCONN, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %15, %8
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

declare dso_local i32 @tipc_nodesub_unsubscribe(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
