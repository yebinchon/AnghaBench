; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_cong.c_tcp_reno_cong_avoid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_cong.c_tcp_reno_cong_avoid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { i32, i32, i32, i32, i32 }

@sysctl_tcp_abc = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_reno_cong_avoid(%struct.sock* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tcp_sock*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.sock*, %struct.sock** %4, align 8
  %9 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %8)
  store %struct.tcp_sock* %9, %struct.tcp_sock** %7, align 8
  %10 = load %struct.sock*, %struct.sock** %4, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @tcp_is_cwnd_limited(%struct.sock* %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %74

15:                                               ; preds = %3
  %16 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %17 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %20 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp sle i32 %18, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %15
  %24 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %25 = call i32 @tcp_slow_start(%struct.tcp_sock* %24)
  br label %74

26:                                               ; preds = %15
  %27 = load i64, i64* @sysctl_tcp_abc, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %67

29:                                               ; preds = %26
  %30 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %31 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %34 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %37 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 %35, %38
  %40 = icmp sge i32 %32, %39
  br i1 %40, label %41, label %66

41:                                               ; preds = %29
  %42 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %43 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %46 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = mul nsw i32 %44, %47
  %49 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %50 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = sub nsw i32 %51, %48
  store i32 %52, i32* %50, align 4
  %53 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %54 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %57 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %41
  %61 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %62 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %60, %41
  br label %66

66:                                               ; preds = %65, %29
  br label %73

67:                                               ; preds = %26
  %68 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %69 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %70 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @tcp_cong_avoid_ai(%struct.tcp_sock* %68, i32 %71)
  br label %73

73:                                               ; preds = %67, %66
  br label %74

74:                                               ; preds = %14, %73, %23
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i32 @tcp_is_cwnd_limited(%struct.sock*, i32) #1

declare dso_local i32 @tcp_slow_start(%struct.tcp_sock*) #1

declare dso_local i32 @tcp_cong_avoid_ai(%struct.tcp_sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
