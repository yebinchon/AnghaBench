; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c_addrconf_dad_run.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c_addrconf_dad_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet6_dev = type { i32, %struct.inet6_ifaddr* }
%struct.inet6_ifaddr = type { i32, i64, i32, %struct.inet6_ifaddr* }

@IFA_F_TENTATIVE = common dso_local global i32 0, align 4
@INET6_IFADDR_STATE_DAD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inet6_dev*)* @addrconf_dad_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addrconf_dad_run(%struct.inet6_dev* %0) #0 {
  %2 = alloca %struct.inet6_dev*, align 8
  %3 = alloca %struct.inet6_ifaddr*, align 8
  store %struct.inet6_dev* %0, %struct.inet6_dev** %2, align 8
  %4 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %5 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %4, i32 0, i32 0
  %6 = call i32 @read_lock_bh(i32* %5)
  %7 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %8 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %7, i32 0, i32 1
  %9 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %8, align 8
  store %struct.inet6_ifaddr* %9, %struct.inet6_ifaddr** %3, align 8
  br label %10

10:                                               ; preds = %36, %1
  %11 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %12 = icmp ne %struct.inet6_ifaddr* %11, null
  br i1 %12, label %13, label %40

13:                                               ; preds = %10
  %14 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %15 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %14, i32 0, i32 2
  %16 = call i32 @spin_lock_bh(i32* %15)
  %17 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %18 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @IFA_F_TENTATIVE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %13
  %24 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %25 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @INET6_IFADDR_STATE_DAD, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %31 = call i32 @addrconf_dad_kick(%struct.inet6_ifaddr* %30)
  br label %32

32:                                               ; preds = %29, %23, %13
  %33 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %34 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %33, i32 0, i32 2
  %35 = call i32 @spin_unlock_bh(i32* %34)
  br label %36

36:                                               ; preds = %32
  %37 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %38 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %37, i32 0, i32 3
  %39 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %38, align 8
  store %struct.inet6_ifaddr* %39, %struct.inet6_ifaddr** %3, align 8
  br label %10

40:                                               ; preds = %10
  %41 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %42 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %41, i32 0, i32 0
  %43 = call i32 @read_unlock_bh(i32* %42)
  ret void
}

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @addrconf_dad_kick(%struct.inet6_ifaddr*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
