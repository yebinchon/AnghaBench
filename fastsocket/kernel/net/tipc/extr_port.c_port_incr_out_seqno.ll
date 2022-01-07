; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_port.c_port_incr_out_seqno.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_port.c_port_incr_out_seqno.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.tipc_msg }
%struct.tipc_msg = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.port*)* @port_incr_out_seqno to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @port_incr_out_seqno(%struct.port* %0) #0 {
  %2 = alloca %struct.port*, align 8
  %3 = alloca %struct.tipc_msg*, align 8
  store %struct.port* %0, %struct.port** %2, align 8
  %4 = load %struct.port*, %struct.port** %2, align 8
  %5 = getelementptr inbounds %struct.port, %struct.port* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  store %struct.tipc_msg* %6, %struct.tipc_msg** %3, align 8
  %7 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %8 = call i32 @msg_routed(%struct.tipc_msg* %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i64 @likely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %21

15:                                               ; preds = %1
  %16 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %17 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %18 = call i64 @msg_transp_seqno(%struct.tipc_msg* %17)
  %19 = add nsw i64 %18, 1
  %20 = call i32 @msg_set_transp_seqno(%struct.tipc_msg* %16, i64 %19)
  br label %21

21:                                               ; preds = %15, %14
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @msg_routed(%struct.tipc_msg*) #1

declare dso_local i32 @msg_set_transp_seqno(%struct.tipc_msg*, i64) #1

declare dso_local i64 @msg_transp_seqno(%struct.tipc_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
