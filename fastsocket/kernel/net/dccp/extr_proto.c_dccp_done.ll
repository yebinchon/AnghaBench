; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_proto.c_dccp_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_proto.c_dccp_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 (%struct.sock*)*, i32 }

@DCCP_CLOSED = common dso_local global i32 0, align 4
@SHUTDOWN_MASK = common dso_local global i32 0, align 4
@SOCK_DEAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dccp_done(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %3 = load %struct.sock*, %struct.sock** %2, align 8
  %4 = load i32, i32* @DCCP_CLOSED, align 4
  %5 = call i32 @dccp_set_state(%struct.sock* %3, i32 %4)
  %6 = load %struct.sock*, %struct.sock** %2, align 8
  %7 = call i32 @dccp_clear_xmit_timers(%struct.sock* %6)
  %8 = load i32, i32* @SHUTDOWN_MASK, align 4
  %9 = load %struct.sock*, %struct.sock** %2, align 8
  %10 = getelementptr inbounds %struct.sock, %struct.sock* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 8
  %11 = load %struct.sock*, %struct.sock** %2, align 8
  %12 = load i32, i32* @SOCK_DEAD, align 4
  %13 = call i32 @sock_flag(%struct.sock* %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load %struct.sock*, %struct.sock** %2, align 8
  %17 = getelementptr inbounds %struct.sock, %struct.sock* %16, i32 0, i32 0
  %18 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %17, align 8
  %19 = load %struct.sock*, %struct.sock** %2, align 8
  %20 = call i32 %18(%struct.sock* %19)
  br label %24

21:                                               ; preds = %1
  %22 = load %struct.sock*, %struct.sock** %2, align 8
  %23 = call i32 @inet_csk_destroy_sock(%struct.sock* %22)
  br label %24

24:                                               ; preds = %21, %15
  ret void
}

declare dso_local i32 @dccp_set_state(%struct.sock*, i32) #1

declare dso_local i32 @dccp_clear_xmit_timers(%struct.sock*) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @inet_csk_destroy_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
