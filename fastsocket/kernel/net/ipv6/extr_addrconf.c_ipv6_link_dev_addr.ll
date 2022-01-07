; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c_ipv6_link_dev_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c_ipv6_link_dev_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet6_dev = type { %struct.inet6_ifaddr* }
%struct.inet6_ifaddr = type { %struct.inet6_ifaddr*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inet6_dev*, %struct.inet6_ifaddr*)* @ipv6_link_dev_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipv6_link_dev_addr(%struct.inet6_dev* %0, %struct.inet6_ifaddr* %1) #0 {
  %3 = alloca %struct.inet6_dev*, align 8
  %4 = alloca %struct.inet6_ifaddr*, align 8
  %5 = alloca %struct.inet6_ifaddr*, align 8
  %6 = alloca %struct.inet6_ifaddr**, align 8
  %7 = alloca i32, align 4
  store %struct.inet6_dev* %0, %struct.inet6_dev** %3, align 8
  store %struct.inet6_ifaddr* %1, %struct.inet6_ifaddr** %4, align 8
  %8 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %9 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %8, i32 0, i32 1
  %10 = call i32 @ipv6_addr_src_scope(i32* %9)
  store i32 %10, i32* %7, align 4
  %11 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %12 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %11, i32 0, i32 0
  store %struct.inet6_ifaddr** %12, %struct.inet6_ifaddr*** %6, align 8
  br label %13

13:                                               ; preds = %25, %2
  %14 = load %struct.inet6_ifaddr**, %struct.inet6_ifaddr*** %6, align 8
  %15 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %14, align 8
  store %struct.inet6_ifaddr* %15, %struct.inet6_ifaddr** %5, align 8
  %16 = icmp ne %struct.inet6_ifaddr* %15, null
  br i1 %16, label %17, label %28

17:                                               ; preds = %13
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %5, align 8
  %20 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %19, i32 0, i32 1
  %21 = call i32 @ipv6_addr_src_scope(i32* %20)
  %22 = icmp sge i32 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %28

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %24
  %26 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %5, align 8
  %27 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %26, i32 0, i32 0
  store %struct.inet6_ifaddr** %27, %struct.inet6_ifaddr*** %6, align 8
  br label %13

28:                                               ; preds = %23, %13
  %29 = load %struct.inet6_ifaddr**, %struct.inet6_ifaddr*** %6, align 8
  %30 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %29, align 8
  %31 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %32 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %31, i32 0, i32 0
  store %struct.inet6_ifaddr* %30, %struct.inet6_ifaddr** %32, align 8
  %33 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %34 = load %struct.inet6_ifaddr**, %struct.inet6_ifaddr*** %6, align 8
  store %struct.inet6_ifaddr* %33, %struct.inet6_ifaddr** %34, align 8
  ret void
}

declare dso_local i32 @ipv6_addr_src_scope(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
