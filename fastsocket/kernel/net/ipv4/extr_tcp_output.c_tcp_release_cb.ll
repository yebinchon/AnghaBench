; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_output.c_tcp_release_cb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_output.c_tcp_release_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { i32 }

@TSQ_OWNED = common dso_local global i32 0, align 4
@TCPF_ESTABLISHED = common dso_local global i32 0, align 4
@TCPF_FIN_WAIT1 = common dso_local global i32 0, align 4
@TCPF_CLOSING = common dso_local global i32 0, align 4
@TCPF_CLOSE_WAIT = common dso_local global i32 0, align 4
@TCPF_LAST_ACK = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_release_cb(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.tcp_sock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load %struct.sock*, %struct.sock** %2, align 8
  %5 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %4)
  store %struct.tcp_sock* %5, %struct.tcp_sock** %3, align 8
  %6 = load i32, i32* @TSQ_OWNED, align 4
  %7 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %8 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %7, i32 0, i32 0
  %9 = call i64 @test_and_clear_bit(i32 %6, i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %34

11:                                               ; preds = %1
  %12 = load %struct.sock*, %struct.sock** %2, align 8
  %13 = getelementptr inbounds %struct.sock, %struct.sock* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = shl i32 1, %14
  %16 = load i32, i32* @TCPF_ESTABLISHED, align 4
  %17 = load i32, i32* @TCPF_FIN_WAIT1, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @TCPF_CLOSING, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @TCPF_CLOSE_WAIT, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @TCPF_LAST_ACK, align 4
  %24 = or i32 %22, %23
  %25 = and i32 %15, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %11
  %28 = load %struct.sock*, %struct.sock** %2, align 8
  %29 = load %struct.sock*, %struct.sock** %2, align 8
  %30 = call i32 @tcp_current_mss(%struct.sock* %29)
  %31 = load i32, i32* @GFP_ATOMIC, align 4
  %32 = call i32 @tcp_write_xmit(%struct.sock* %28, i32 %30, i32 0, i32 0, i32 %31)
  br label %33

33:                                               ; preds = %27, %11
  br label %34

34:                                               ; preds = %33, %1
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @tcp_write_xmit(%struct.sock*, i32, i32, i32, i32) #1

declare dso_local i32 @tcp_current_mss(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
