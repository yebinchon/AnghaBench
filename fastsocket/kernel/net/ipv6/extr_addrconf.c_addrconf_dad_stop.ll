; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c_addrconf_dad_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c_addrconf_dad_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet6_ifaddr = type { i32, i32, %struct.inet6_ifaddr* }

@IFA_F_PERMANENT = common dso_local global i32 0, align 4
@IFA_F_TENTATIVE = common dso_local global i32 0, align 4
@IFA_F_DADFAILED = common dso_local global i32 0, align 4
@IFA_F_TEMPORARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inet6_ifaddr*, i32)* @addrconf_dad_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addrconf_dad_stop(%struct.inet6_ifaddr* %0, i32 %1) #0 {
  %3 = alloca %struct.inet6_ifaddr*, align 8
  %4 = alloca i32, align 4
  store %struct.inet6_ifaddr* %0, %struct.inet6_ifaddr** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %6 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @IFA_F_PERMANENT, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %36

11:                                               ; preds = %2
  %12 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %13 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %12, i32 0, i32 1
  %14 = call i32 @spin_lock_bh(i32* %13)
  %15 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %16 = call i32 @addrconf_del_timer(%struct.inet6_ifaddr* %15)
  %17 = load i32, i32* @IFA_F_TENTATIVE, align 4
  %18 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %19 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 8
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %11
  %25 = load i32, i32* @IFA_F_DADFAILED, align 4
  %26 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %27 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 8
  br label %30

30:                                               ; preds = %24, %11
  %31 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %32 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %31, i32 0, i32 1
  %33 = call i32 @spin_unlock_bh(i32* %32)
  %34 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %35 = call i32 @in6_ifa_put(%struct.inet6_ifaddr* %34)
  br label %39

36:                                               ; preds = %2
  %37 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %38 = call i32 @ipv6_del_addr(%struct.inet6_ifaddr* %37)
  br label %39

39:                                               ; preds = %36, %30
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @addrconf_del_timer(%struct.inet6_ifaddr*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @in6_ifa_put(%struct.inet6_ifaddr*) #1

declare dso_local i32 @ipv6_del_addr(%struct.inet6_ifaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
