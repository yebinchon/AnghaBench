; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_update_scoreboard.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_update_scoreboard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i32)* @tcp_update_scoreboard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_update_scoreboard(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tcp_sock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.sock*, %struct.sock** %3, align 8
  %9 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %8)
  store %struct.tcp_sock* %9, %struct.tcp_sock** %5, align 8
  %10 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %11 = call i64 @tcp_is_reno(%struct.tcp_sock* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.sock*, %struct.sock** %3, align 8
  %15 = call i32 @tcp_mark_head_lost(%struct.sock* %14, i32 1)
  br label %53

16:                                               ; preds = %2
  %17 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %18 = call i64 @tcp_is_fack(%struct.tcp_sock* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %16
  %21 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %22 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %25 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %23, %26
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp sle i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  store i32 1, i32* %6, align 4
  br label %31

31:                                               ; preds = %30, %20
  %32 = load %struct.sock*, %struct.sock** %3, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @tcp_mark_head_lost(%struct.sock* %32, i32 %33)
  br label %52

35:                                               ; preds = %16
  %36 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %37 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %40 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %38, %41
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %35
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %46, %35
  %49 = load %struct.sock*, %struct.sock** %3, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @tcp_mark_head_lost(%struct.sock* %49, i32 %50)
  br label %52

52:                                               ; preds = %48, %31
  br label %53

53:                                               ; preds = %52, %13
  %54 = load %struct.sock*, %struct.sock** %3, align 8
  %55 = call i32 @tcp_timeout_skbs(%struct.sock* %54)
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i64 @tcp_is_reno(%struct.tcp_sock*) #1

declare dso_local i32 @tcp_mark_head_lost(%struct.sock*, i32) #1

declare dso_local i64 @tcp_is_fack(%struct.tcp_sock*) #1

declare dso_local i32 @tcp_timeout_skbs(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
