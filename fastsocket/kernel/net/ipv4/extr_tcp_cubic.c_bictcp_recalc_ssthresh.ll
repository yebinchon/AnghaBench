; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_cubic.c_bictcp_recalc_ssthresh.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_cubic.c_bictcp_recalc_ssthresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { i32 }
%struct.bictcp = type { i32, i32, i64 }

@fast_convergence = common dso_local global i64 0, align 8
@BICTCP_BETA_SCALE = common dso_local global i32 0, align 4
@beta = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*)* @bictcp_recalc_ssthresh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bictcp_recalc_ssthresh(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.tcp_sock*, align 8
  %4 = alloca %struct.bictcp*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %5 = load %struct.sock*, %struct.sock** %2, align 8
  %6 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %5)
  store %struct.tcp_sock* %6, %struct.tcp_sock** %3, align 8
  %7 = load %struct.sock*, %struct.sock** %2, align 8
  %8 = call %struct.bictcp* @inet_csk_ca(%struct.sock* %7)
  store %struct.bictcp* %8, %struct.bictcp** %4, align 8
  %9 = load %struct.bictcp*, %struct.bictcp** %4, align 8
  %10 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %9, i32 0, i32 2
  store i64 0, i64* %10, align 8
  %11 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %12 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.bictcp*, %struct.bictcp** %4, align 8
  %15 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %1
  %19 = load i64, i64* @fast_convergence, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %18
  %22 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %23 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @BICTCP_BETA_SCALE, align 4
  %26 = load i32, i32* @beta, align 4
  %27 = add nsw i32 %25, %26
  %28 = mul nsw i32 %24, %27
  %29 = load i32, i32* @BICTCP_BETA_SCALE, align 4
  %30 = mul nsw i32 2, %29
  %31 = sdiv i32 %28, %30
  %32 = load %struct.bictcp*, %struct.bictcp** %4, align 8
  %33 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  br label %40

34:                                               ; preds = %18, %1
  %35 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %36 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.bictcp*, %struct.bictcp** %4, align 8
  %39 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  br label %40

40:                                               ; preds = %34, %21
  %41 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %42 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.bictcp*, %struct.bictcp** %4, align 8
  %45 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %47 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @beta, align 4
  %50 = mul nsw i32 %48, %49
  %51 = load i32, i32* @BICTCP_BETA_SCALE, align 4
  %52 = sdiv i32 %50, %51
  %53 = call i32 @max(i32 %52, i32 2)
  ret i32 %53
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.bictcp* @inet_csk_ca(%struct.sock*) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
