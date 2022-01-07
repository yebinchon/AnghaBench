; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_mip6.c_mip6_report_rl_allow.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_mip6.c_mip6_report_rl_allow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }
%struct.timeval = type { i64, i64 }
%struct.in6_addr = type { i32 }

@mip6_report_rl = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.timeval*, %struct.in6_addr*, %struct.in6_addr*, i32)* @mip6_report_rl_allow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mip6_report_rl_allow(%struct.timeval* %0, %struct.in6_addr* %1, %struct.in6_addr* %2, i32 %3) #0 {
  %5 = alloca %struct.timeval*, align 8
  %6 = alloca %struct.in6_addr*, align 8
  %7 = alloca %struct.in6_addr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.timeval* %0, %struct.timeval** %5, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %6, align 8
  store %struct.in6_addr* %2, %struct.in6_addr** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = call i32 @spin_lock_bh(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mip6_report_rl, i32 0, i32 1))
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mip6_report_rl, i32 0, i32 4, i32 0), align 8
  %12 = load %struct.timeval*, %struct.timeval** %5, align 8
  %13 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %11, %14
  br i1 %15, label %34, label %16

16:                                               ; preds = %4
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mip6_report_rl, i32 0, i32 4, i32 1), align 8
  %18 = load %struct.timeval*, %struct.timeval** %5, align 8
  %19 = getelementptr inbounds %struct.timeval, %struct.timeval* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %17, %20
  br i1 %21, label %34, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mip6_report_rl, i32 0, i32 0), align 8
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %34, label %26

26:                                               ; preds = %22
  %27 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %28 = call i32 @ipv6_addr_equal(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mip6_report_rl, i32 0, i32 3), %struct.in6_addr* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %32 = call i32 @ipv6_addr_equal(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mip6_report_rl, i32 0, i32 2), %struct.in6_addr* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %30, %26, %22, %16, %4
  %35 = load %struct.timeval*, %struct.timeval** %5, align 8
  %36 = getelementptr inbounds %struct.timeval, %struct.timeval* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mip6_report_rl, i32 0, i32 4, i32 0), align 8
  %38 = load %struct.timeval*, %struct.timeval** %5, align 8
  %39 = getelementptr inbounds %struct.timeval, %struct.timeval* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mip6_report_rl, i32 0, i32 4, i32 1), align 8
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mip6_report_rl, i32 0, i32 0), align 8
  %42 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %43 = call i32 @ipv6_addr_copy(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mip6_report_rl, i32 0, i32 3), %struct.in6_addr* %42)
  %44 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %45 = call i32 @ipv6_addr_copy(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mip6_report_rl, i32 0, i32 2), %struct.in6_addr* %44)
  store i32 1, i32* %9, align 4
  br label %46

46:                                               ; preds = %34, %30
  %47 = call i32 @spin_unlock_bh(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mip6_report_rl, i32 0, i32 1))
  %48 = load i32, i32* %9, align 4
  ret i32 %48
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @ipv6_addr_equal(i32*, %struct.in6_addr*) #1

declare dso_local i32 @ipv6_addr_copy(i32*, %struct.in6_addr*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
