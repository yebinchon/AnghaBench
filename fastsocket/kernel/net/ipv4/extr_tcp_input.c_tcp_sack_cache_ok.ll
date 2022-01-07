; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_sack_cache_ok.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_sack_cache_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_sock = type { %struct.tcp_sack_block* }
%struct.tcp_sack_block = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcp_sock*, %struct.tcp_sack_block*)* @tcp_sack_cache_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_sack_cache_ok(%struct.tcp_sock* %0, %struct.tcp_sack_block* %1) #0 {
  %3 = alloca %struct.tcp_sock*, align 8
  %4 = alloca %struct.tcp_sack_block*, align 8
  store %struct.tcp_sock* %0, %struct.tcp_sock** %3, align 8
  store %struct.tcp_sack_block* %1, %struct.tcp_sack_block** %4, align 8
  %5 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %4, align 8
  %6 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %7 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %6, i32 0, i32 0
  %8 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %7, align 8
  %9 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %10 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %9, i32 0, i32 0
  %11 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %10, align 8
  %12 = call i32 @ARRAY_SIZE(%struct.tcp_sack_block* %11)
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %8, i64 %13
  %15 = icmp ult %struct.tcp_sack_block* %5, %14
  %16 = zext i1 %15 to i32
  ret i32 %16
}

declare dso_local i32 @ARRAY_SIZE(%struct.tcp_sack_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
