; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c_addrconf_dad_end.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c_addrconf_dad_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet6_ifaddr = type { i64 }

@ENOENT = common dso_local global i32 0, align 4
@ifa_state_lock = common dso_local global i32 0, align 4
@INET6_IFADDR_STATE_DAD = common dso_local global i64 0, align 8
@INET6_IFADDR_STATE_POSTDAD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inet6_ifaddr*)* @addrconf_dad_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addrconf_dad_end(%struct.inet6_ifaddr* %0) #0 {
  %2 = alloca %struct.inet6_ifaddr*, align 8
  %3 = alloca i32, align 4
  store %struct.inet6_ifaddr* %0, %struct.inet6_ifaddr** %2, align 8
  %4 = load i32, i32* @ENOENT, align 4
  %5 = sub nsw i32 0, %4
  store i32 %5, i32* %3, align 4
  %6 = call i32 @spin_lock(i32* @ifa_state_lock)
  %7 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %2, align 8
  %8 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @INET6_IFADDR_STATE_DAD, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i64, i64* @INET6_IFADDR_STATE_POSTDAD, align 8
  %14 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %2, align 8
  %15 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %12, %1
  %17 = call i32 @spin_unlock(i32* @ifa_state_lock)
  %18 = load i32, i32* %3, align 4
  ret i32 %18
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
