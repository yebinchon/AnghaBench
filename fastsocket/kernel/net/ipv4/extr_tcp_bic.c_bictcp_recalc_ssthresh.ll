; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_bic.c_bictcp_recalc_ssthresh.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_bic.c_bictcp_recalc_ssthresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { i32 }
%struct.bictcp = type { i32, i32, i64 }

@fast_convergence = common dso_local global i64 0, align 8
@BICTCP_BETA_SCALE = common dso_local global i32 0, align 4
@beta = common dso_local global i32 0, align 4
@low_window = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*)* @bictcp_recalc_ssthresh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bictcp_recalc_ssthresh(%struct.sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.tcp_sock*, align 8
  %5 = alloca %struct.bictcp*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  %6 = load %struct.sock*, %struct.sock** %3, align 8
  %7 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %6)
  store %struct.tcp_sock* %7, %struct.tcp_sock** %4, align 8
  %8 = load %struct.sock*, %struct.sock** %3, align 8
  %9 = call %struct.bictcp* @inet_csk_ca(%struct.sock* %8)
  store %struct.bictcp* %9, %struct.bictcp** %5, align 8
  %10 = load %struct.bictcp*, %struct.bictcp** %5, align 8
  %11 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %10, i32 0, i32 2
  store i64 0, i64* %11, align 8
  %12 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %13 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.bictcp*, %struct.bictcp** %5, align 8
  %16 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %35

19:                                               ; preds = %1
  %20 = load i64, i64* @fast_convergence, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %19
  %23 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %24 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @BICTCP_BETA_SCALE, align 4
  %27 = load i32, i32* @beta, align 4
  %28 = add nsw i32 %26, %27
  %29 = mul nsw i32 %25, %28
  %30 = load i32, i32* @BICTCP_BETA_SCALE, align 4
  %31 = mul nsw i32 2, %30
  %32 = sdiv i32 %29, %31
  %33 = load %struct.bictcp*, %struct.bictcp** %5, align 8
  %34 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  br label %41

35:                                               ; preds = %19, %1
  %36 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %37 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.bictcp*, %struct.bictcp** %5, align 8
  %40 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  br label %41

41:                                               ; preds = %35, %22
  %42 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %43 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.bictcp*, %struct.bictcp** %5, align 8
  %46 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %48 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @low_window, align 4
  %51 = icmp sle i32 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %41
  %53 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %54 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = ashr i32 %55, 1
  %57 = call i32 @max(i32 %56, i32 2)
  store i32 %57, i32* %2, align 4
  br label %67

58:                                               ; preds = %41
  %59 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %60 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @beta, align 4
  %63 = mul nsw i32 %61, %62
  %64 = load i32, i32* @BICTCP_BETA_SCALE, align 4
  %65 = sdiv i32 %63, %64
  %66 = call i32 @max(i32 %65, i32 2)
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %58, %52
  %68 = load i32, i32* %2, align 4
  ret i32 %68
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
