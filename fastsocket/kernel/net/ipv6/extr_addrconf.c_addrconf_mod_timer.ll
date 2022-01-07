; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c_addrconf_mod_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c_addrconf_mod_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet6_ifaddr = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }

@addrconf_dad_timer = common dso_local global i32 0, align 4
@addrconf_rs_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inet6_ifaddr*, i32, i64)* @addrconf_mod_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addrconf_mod_timer(%struct.inet6_ifaddr* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.inet6_ifaddr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.inet6_ifaddr* %0, %struct.inet6_ifaddr** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %7 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %8 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %7, i32 0, i32 0
  %9 = call i32 @del_timer(%struct.TYPE_3__* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %13 = call i32 @in6_ifa_hold(%struct.inet6_ifaddr* %12)
  br label %14

14:                                               ; preds = %11, %3
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %26 [
    i32 129, label %16
    i32 128, label %21
  ]

16:                                               ; preds = %14
  %17 = load i32, i32* @addrconf_dad_timer, align 4
  %18 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %19 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  store i32 %17, i32* %20, align 8
  br label %27

21:                                               ; preds = %14
  %22 = load i32, i32* @addrconf_rs_timer, align 4
  %23 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %24 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  store i32 %22, i32* %25, align 8
  br label %27

26:                                               ; preds = %14
  br label %27

27:                                               ; preds = %26, %21, %16
  %28 = load i64, i64* @jiffies, align 8
  %29 = load i64, i64* %6, align 8
  %30 = add i64 %28, %29
  %31 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %32 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i64 %30, i64* %33, align 8
  %34 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %35 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %34, i32 0, i32 0
  %36 = call i32 @add_timer(%struct.TYPE_3__* %35)
  ret void
}

declare dso_local i32 @del_timer(%struct.TYPE_3__*) #1

declare dso_local i32 @in6_ifa_hold(%struct.inet6_ifaddr*) #1

declare dso_local i32 @add_timer(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
