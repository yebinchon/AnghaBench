; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_lp.c_tcp_lp_owd_calculator.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_lp.c_tcp_lp_owd_calculator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.lp = type { i32, i32 }

@LP_VALID_RHZ = common dso_local global i32 0, align 4
@LP_RESOL = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@LP_VALID_OWD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*)* @tcp_lp_owd_calculator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_lp_owd_calculator(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.tcp_sock*, align 8
  %4 = alloca %struct.lp*, align 8
  %5 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %2, align 8
  %6 = load %struct.sock*, %struct.sock** %2, align 8
  %7 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %6)
  store %struct.tcp_sock* %7, %struct.tcp_sock** %3, align 8
  %8 = load %struct.sock*, %struct.sock** %2, align 8
  %9 = call %struct.lp* @inet_csk_ca(%struct.sock* %8)
  store %struct.lp* %9, %struct.lp** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.sock*, %struct.sock** %2, align 8
  %11 = call i32 @tcp_lp_remote_hz_estimator(%struct.sock* %10)
  %12 = load %struct.lp*, %struct.lp** %4, align 8
  %13 = getelementptr inbounds %struct.lp, %struct.lp* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.lp*, %struct.lp** %4, align 8
  %15 = getelementptr inbounds %struct.lp, %struct.lp* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @LP_VALID_RHZ, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %46

20:                                               ; preds = %1
  %21 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %22 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @LP_RESOL, align 4
  %26 = load %struct.lp*, %struct.lp** %4, align 8
  %27 = getelementptr inbounds %struct.lp, %struct.lp* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sdiv i32 %25, %28
  %30 = mul nsw i32 %24, %29
  %31 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %32 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @LP_RESOL, align 4
  %36 = load i32, i32* @HZ, align 4
  %37 = sdiv i32 %35, %36
  %38 = mul nsw i32 %34, %37
  %39 = sub nsw i32 %30, %38
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %20
  %43 = load i32, i32* %5, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %42, %20
  br label %46

46:                                               ; preds = %45, %1
  %47 = load i32, i32* %5, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load i32, i32* @LP_VALID_OWD, align 4
  %51 = load %struct.lp*, %struct.lp** %4, align 8
  %52 = getelementptr inbounds %struct.lp, %struct.lp* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  br label %62

55:                                               ; preds = %46
  %56 = load i32, i32* @LP_VALID_OWD, align 4
  %57 = xor i32 %56, -1
  %58 = load %struct.lp*, %struct.lp** %4, align 8
  %59 = getelementptr inbounds %struct.lp, %struct.lp* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, %57
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %55, %49
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.lp* @inet_csk_ca(%struct.sock*) #1

declare dso_local i32 @tcp_lp_remote_hz_estimator(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
