; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_rcv_rtt_measure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_rcv_rtt_measure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_sock = type { %struct.TYPE_2__, i64, i64 }
%struct.TYPE_2__ = type { i64, i64 }

@jiffies = common dso_local global i64 0, align 8
@tcp_time_stamp = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_sock*)* @tcp_rcv_rtt_measure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_rcv_rtt_measure(%struct.tcp_sock* %0) #0 {
  %2 = alloca %struct.tcp_sock*, align 8
  store %struct.tcp_sock* %0, %struct.tcp_sock** %2, align 8
  %3 = load %struct.tcp_sock*, %struct.tcp_sock** %2, align 8
  %4 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %29

9:                                                ; preds = %1
  %10 = load %struct.tcp_sock*, %struct.tcp_sock** %2, align 8
  %11 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.tcp_sock*, %struct.tcp_sock** %2, align 8
  %14 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = call i64 @before(i64 %12, i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %9
  br label %44

20:                                               ; preds = %9
  %21 = load %struct.tcp_sock*, %struct.tcp_sock** %2, align 8
  %22 = load i64, i64* @jiffies, align 8
  %23 = load %struct.tcp_sock*, %struct.tcp_sock** %2, align 8
  %24 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = sub nsw i64 %22, %26
  %28 = call i32 @tcp_rcv_rtt_update(%struct.tcp_sock* %21, i64 %27, i32 1)
  br label %29

29:                                               ; preds = %20, %8
  %30 = load %struct.tcp_sock*, %struct.tcp_sock** %2, align 8
  %31 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.tcp_sock*, %struct.tcp_sock** %2, align 8
  %34 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %32, %35
  %37 = load %struct.tcp_sock*, %struct.tcp_sock** %2, align 8
  %38 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  store i64 %36, i64* %39, align 8
  %40 = load i64, i64* @tcp_time_stamp, align 8
  %41 = load %struct.tcp_sock*, %struct.tcp_sock** %2, align 8
  %42 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i64 %40, i64* %43, align 8
  br label %44

44:                                               ; preds = %29, %19
  ret void
}

declare dso_local i64 @before(i64, i64) #1

declare dso_local i32 @tcp_rcv_rtt_update(%struct.tcp_sock*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
