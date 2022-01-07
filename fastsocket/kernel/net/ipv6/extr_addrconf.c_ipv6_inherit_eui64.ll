; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c_ipv6_inherit_eui64.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c_ipv6_inherit_eui64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet6_dev = type { i32, %struct.inet6_ifaddr* }
%struct.inet6_ifaddr = type { i64, i32, %struct.TYPE_2__, %struct.inet6_ifaddr* }
%struct.TYPE_2__ = type { i64 }

@IFA_LINK = common dso_local global i64 0, align 8
@IFA_F_TENTATIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inet6_dev*)* @ipv6_inherit_eui64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipv6_inherit_eui64(i32* %0, %struct.inet6_dev* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.inet6_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.inet6_ifaddr*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.inet6_dev* %1, %struct.inet6_dev** %4, align 8
  store i32 -1, i32* %5, align 4
  %7 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %8 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %7, i32 0, i32 0
  %9 = call i32 @read_lock_bh(i32* %8)
  %10 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %11 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %10, i32 0, i32 1
  %12 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %11, align 8
  store %struct.inet6_ifaddr* %12, %struct.inet6_ifaddr** %6, align 8
  br label %13

13:                                               ; preds = %38, %2
  %14 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %6, align 8
  %15 = icmp ne %struct.inet6_ifaddr* %14, null
  br i1 %15, label %16, label %42

16:                                               ; preds = %13
  %17 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %6, align 8
  %18 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @IFA_LINK, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %16
  %23 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %6, align 8
  %24 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @IFA_F_TENTATIVE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %22
  %30 = load i32*, i32** %3, align 8
  %31 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %6, align 8
  %32 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 8
  %36 = call i32 @memcpy(i32* %30, i64 %35, i32 8)
  store i32 0, i32* %5, align 4
  br label %42

37:                                               ; preds = %22, %16
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %6, align 8
  %40 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %39, i32 0, i32 3
  %41 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %40, align 8
  store %struct.inet6_ifaddr* %41, %struct.inet6_ifaddr** %6, align 8
  br label %13

42:                                               ; preds = %29, %13
  %43 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %44 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %43, i32 0, i32 0
  %45 = call i32 @read_unlock_bh(i32* %44)
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i32 @memcpy(i32*, i64, i32) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
