; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_maybe_skipping_dsack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_maybe_skipping_dsack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.sock = type { i32 }
%struct.tcp_sack_block = type { i32, i32 }
%struct.tcp_sacktag_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.sk_buff*, %struct.sock*, %struct.tcp_sack_block*, %struct.tcp_sacktag_state*, i32)* @tcp_maybe_skipping_dsack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @tcp_maybe_skipping_dsack(%struct.sk_buff* %0, %struct.sock* %1, %struct.tcp_sack_block* %2, %struct.tcp_sacktag_state* %3, i32 %4) #0 {
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.tcp_sack_block*, align 8
  %10 = alloca %struct.tcp_sacktag_state*, align 8
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store %struct.sock* %1, %struct.sock** %8, align 8
  store %struct.tcp_sack_block* %2, %struct.tcp_sack_block** %9, align 8
  store %struct.tcp_sacktag_state* %3, %struct.tcp_sacktag_state** %10, align 8
  store i32 %4, i32* %11, align 4
  %12 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %9, align 8
  %13 = icmp eq %struct.tcp_sack_block* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %5
  %15 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %15, %struct.sk_buff** %6, align 8
  br label %43

16:                                               ; preds = %5
  %17 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %9, align 8
  %18 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %11, align 4
  %21 = call i64 @before(i32 %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %16
  %24 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %25 = load %struct.sock*, %struct.sock** %8, align 8
  %26 = load %struct.tcp_sacktag_state*, %struct.tcp_sacktag_state** %10, align 8
  %27 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %9, align 8
  %28 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.sk_buff* @tcp_sacktag_skip(%struct.sk_buff* %24, %struct.sock* %25, %struct.tcp_sacktag_state* %26, i32 %29)
  store %struct.sk_buff* %30, %struct.sk_buff** %7, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %32 = load %struct.sock*, %struct.sock** %8, align 8
  %33 = load %struct.tcp_sacktag_state*, %struct.tcp_sacktag_state** %10, align 8
  %34 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %9, align 8
  %35 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %9, align 8
  %38 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.sk_buff* @tcp_sacktag_walk(%struct.sk_buff* %31, %struct.sock* %32, i32* null, %struct.tcp_sacktag_state* %33, i32 %36, i32 %39, i32 1)
  store %struct.sk_buff* %40, %struct.sk_buff** %7, align 8
  br label %41

41:                                               ; preds = %23, %16
  %42 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %42, %struct.sk_buff** %6, align 8
  br label %43

43:                                               ; preds = %41, %14
  %44 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  ret %struct.sk_buff* %44
}

declare dso_local i64 @before(i32, i32) #1

declare dso_local %struct.sk_buff* @tcp_sacktag_skip(%struct.sk_buff*, %struct.sock*, %struct.tcp_sacktag_state*, i32) #1

declare dso_local %struct.sk_buff* @tcp_sacktag_walk(%struct.sk_buff*, %struct.sock*, i32*, %struct.tcp_sacktag_state*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
