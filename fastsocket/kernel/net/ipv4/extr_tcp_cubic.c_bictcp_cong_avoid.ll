; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_cubic.c_bictcp_cong_avoid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_cubic.c_bictcp_cong_avoid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { i64, i64 }
%struct.bictcp = type { i32, i32 }

@hystart = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i32, i32)* @bictcp_cong_avoid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bictcp_cong_avoid(%struct.sock* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tcp_sock*, align 8
  %8 = alloca %struct.bictcp*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.sock*, %struct.sock** %4, align 8
  %10 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %9)
  store %struct.tcp_sock* %10, %struct.tcp_sock** %7, align 8
  %11 = load %struct.sock*, %struct.sock** %4, align 8
  %12 = call %struct.bictcp* @inet_csk_ca(%struct.sock* %11)
  store %struct.bictcp* %12, %struct.bictcp** %8, align 8
  %13 = load %struct.sock*, %struct.sock** %4, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @tcp_is_cwnd_limited(%struct.sock* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  br label %53

18:                                               ; preds = %3
  %19 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %20 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %23 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp sle i64 %21, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %18
  %27 = load i64, i64* @hystart, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %26
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.bictcp*, %struct.bictcp** %8, align 8
  %32 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @after(i32 %30, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load %struct.sock*, %struct.sock** %4, align 8
  %38 = call i32 @bictcp_hystart_reset(%struct.sock* %37)
  br label %39

39:                                               ; preds = %36, %29, %26
  %40 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %41 = call i32 @tcp_slow_start(%struct.tcp_sock* %40)
  br label %53

42:                                               ; preds = %18
  %43 = load %struct.bictcp*, %struct.bictcp** %8, align 8
  %44 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %45 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @bictcp_update(%struct.bictcp* %43, i64 %46)
  %48 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %49 = load %struct.bictcp*, %struct.bictcp** %8, align 8
  %50 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @tcp_cong_avoid_ai(%struct.tcp_sock* %48, i32 %51)
  br label %53

53:                                               ; preds = %17, %42, %39
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.bictcp* @inet_csk_ca(%struct.sock*) #1

declare dso_local i32 @tcp_is_cwnd_limited(%struct.sock*, i32) #1

declare dso_local i64 @after(i32, i32) #1

declare dso_local i32 @bictcp_hystart_reset(%struct.sock*) #1

declare dso_local i32 @tcp_slow_start(%struct.tcp_sock*) #1

declare dso_local i32 @bictcp_update(%struct.bictcp*, i64) #1

declare dso_local i32 @tcp_cong_avoid_ai(%struct.tcp_sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
