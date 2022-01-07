; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_cong.c_tcp_cong_avoid_ai.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_cong.c_tcp_cong_avoid_ai.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_sock = type { i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_cong_avoid_ai(%struct.tcp_sock* %0, i64 %1) #0 {
  %3 = alloca %struct.tcp_sock*, align 8
  %4 = alloca i64, align 8
  store %struct.tcp_sock* %0, %struct.tcp_sock** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %6 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* %4, align 8
  %9 = icmp sge i64 %7, %8
  br i1 %9, label %10, label %26

10:                                               ; preds = %2
  %11 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %12 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %15 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp slt i64 %13, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %10
  %19 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %20 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* %20, align 8
  br label %23

23:                                               ; preds = %18, %10
  %24 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %25 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  br label %31

26:                                               ; preds = %2
  %27 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %28 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 1
  store i64 %30, i64* %28, align 8
  br label %31

31:                                               ; preds = %26, %23
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
