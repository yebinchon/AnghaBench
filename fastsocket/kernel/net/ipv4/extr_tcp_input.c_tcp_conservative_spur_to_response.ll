; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_conservative_spur_to_response.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_conservative_spur_to_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_sock = type { i64, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_sock*)* @tcp_conservative_spur_to_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_conservative_spur_to_response(%struct.tcp_sock* %0) #0 {
  %2 = alloca %struct.tcp_sock*, align 8
  store %struct.tcp_sock* %0, %struct.tcp_sock** %2, align 8
  %3 = load %struct.tcp_sock*, %struct.tcp_sock** %2, align 8
  %4 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %3, i32 0, i32 3
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.tcp_sock*, %struct.tcp_sock** %2, align 8
  %7 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @min(i32 %5, i32 %8)
  %10 = load %struct.tcp_sock*, %struct.tcp_sock** %2, align 8
  %11 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %10, i32 0, i32 3
  store i32 %9, i32* %11, align 4
  %12 = load %struct.tcp_sock*, %struct.tcp_sock** %2, align 8
  %13 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %12, i32 0, i32 1
  store i64 0, i64* %13, align 8
  %14 = load %struct.tcp_sock*, %struct.tcp_sock** %2, align 8
  %15 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %14, i32 0, i32 0
  store i64 0, i64* %15, align 8
  %16 = load %struct.tcp_sock*, %struct.tcp_sock** %2, align 8
  %17 = call i32 @TCP_ECN_queue_cwr(%struct.tcp_sock* %16)
  %18 = load %struct.tcp_sock*, %struct.tcp_sock** %2, align 8
  %19 = call i32 @tcp_moderate_cwnd(%struct.tcp_sock* %18)
  ret void
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @TCP_ECN_queue_cwr(%struct.tcp_sock*) #1

declare dso_local i32 @tcp_moderate_cwnd(%struct.tcp_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
