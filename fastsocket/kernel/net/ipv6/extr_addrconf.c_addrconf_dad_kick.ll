; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c_addrconf_dad_kick.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c_addrconf_dad_kick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet6_ifaddr = type { i32, i32, %struct.inet6_dev* }
%struct.inet6_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@IFA_F_OPTIMISTIC = common dso_local global i32 0, align 4
@AC_DAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inet6_ifaddr*)* @addrconf_dad_kick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addrconf_dad_kick(%struct.inet6_ifaddr* %0) #0 {
  %2 = alloca %struct.inet6_ifaddr*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.inet6_dev*, align 8
  store %struct.inet6_ifaddr* %0, %struct.inet6_ifaddr** %2, align 8
  %5 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %2, align 8
  %6 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %5, i32 0, i32 2
  %7 = load %struct.inet6_dev*, %struct.inet6_dev** %6, align 8
  store %struct.inet6_dev* %7, %struct.inet6_dev** %4, align 8
  %8 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %2, align 8
  %9 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @IFA_F_OPTIMISTIC, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i64 0, i64* %3, align 8
  br label %28

15:                                               ; preds = %1
  %16 = call i32 (...) @net_random()
  %17 = sext i32 %16 to i64
  %18 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %19 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  br label %25

24:                                               ; preds = %15
  br label %25

25:                                               ; preds = %24, %23
  %26 = phi i64 [ %21, %23 ], [ 1, %24 ]
  %27 = srem i64 %17, %26
  store i64 %27, i64* %3, align 8
  br label %28

28:                                               ; preds = %25, %14
  %29 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %30 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %2, align 8
  %34 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %2, align 8
  %36 = load i32, i32* @AC_DAD, align 4
  %37 = load i64, i64* %3, align 8
  %38 = call i32 @addrconf_mod_timer(%struct.inet6_ifaddr* %35, i32 %36, i64 %37)
  ret void
}

declare dso_local i32 @net_random(...) #1

declare dso_local i32 @addrconf_mod_timer(%struct.inet6_ifaddr*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
