; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_cong.c_tcp_is_cwnd_limited.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_cong.c_tcp_is_cwnd_limited.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@sysctl_tcp_tso_win_divisor = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcp_is_cwnd_limited(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tcp_sock*, align 8
  %7 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.sock*, %struct.sock** %4, align 8
  %9 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %8)
  store %struct.tcp_sock* %9, %struct.tcp_sock** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %12 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp sge i32 %10, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %57

16:                                               ; preds = %2
  %17 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %18 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %5, align 4
  %21 = sub nsw i32 %19, %20
  store i32 %21, i32* %7, align 4
  %22 = load %struct.sock*, %struct.sock** %4, align 8
  %23 = call i64 @sk_can_gso(%struct.sock* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %51

25:                                               ; preds = %16
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @sysctl_tcp_tso_win_divisor, align 4
  %28 = mul nsw i32 %26, %27
  %29 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %30 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %51

33:                                               ; preds = %25
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %36 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = mul nsw i32 %34, %37
  %39 = load %struct.sock*, %struct.sock** %4, align 8
  %40 = getelementptr inbounds %struct.sock, %struct.sock* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %33
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.sock*, %struct.sock** %4, align 8
  %46 = call %struct.TYPE_2__* @sk_extended(%struct.sock* %45)
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %44, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  store i32 1, i32* %3, align 4
  br label %57

51:                                               ; preds = %43, %33, %25, %16
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %54 = call i32 @tcp_max_burst(%struct.tcp_sock* %53)
  %55 = icmp sle i32 %52, %54
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %51, %50, %15
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i64 @sk_can_gso(%struct.sock*) #1

declare dso_local %struct.TYPE_2__* @sk_extended(%struct.sock*) #1

declare dso_local i32 @tcp_max_burst(%struct.tcp_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
