; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_route.c_rtmsg_to_fib6_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_route.c_rtmsg_to_fib6_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.in6_rtmsg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fib6_config = type { i32, i32, i32, %struct.TYPE_2__, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.net* }

@RT6_TABLE_MAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net*, %struct.in6_rtmsg*, %struct.fib6_config*)* @rtmsg_to_fib6_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtmsg_to_fib6_config(%struct.net* %0, %struct.in6_rtmsg* %1, %struct.fib6_config* %2) #0 {
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.in6_rtmsg*, align 8
  %6 = alloca %struct.fib6_config*, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.in6_rtmsg* %1, %struct.in6_rtmsg** %5, align 8
  store %struct.fib6_config* %2, %struct.fib6_config** %6, align 8
  %7 = load %struct.fib6_config*, %struct.fib6_config** %6, align 8
  %8 = call i32 @memset(%struct.fib6_config* %7, i32 0, i32 56)
  %9 = load i32, i32* @RT6_TABLE_MAIN, align 4
  %10 = load %struct.fib6_config*, %struct.fib6_config** %6, align 8
  %11 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %10, i32 0, i32 10
  store i32 %9, i32* %11, align 8
  %12 = load %struct.in6_rtmsg*, %struct.in6_rtmsg** %5, align 8
  %13 = getelementptr inbounds %struct.in6_rtmsg, %struct.in6_rtmsg* %12, i32 0, i32 8
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.fib6_config*, %struct.fib6_config** %6, align 8
  %16 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %15, i32 0, i32 9
  store i32 %14, i32* %16, align 4
  %17 = load %struct.in6_rtmsg*, %struct.in6_rtmsg** %5, align 8
  %18 = getelementptr inbounds %struct.in6_rtmsg, %struct.in6_rtmsg* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.fib6_config*, %struct.fib6_config** %6, align 8
  %21 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %20, i32 0, i32 8
  store i32 %19, i32* %21, align 8
  %22 = load %struct.in6_rtmsg*, %struct.in6_rtmsg** %5, align 8
  %23 = getelementptr inbounds %struct.in6_rtmsg, %struct.in6_rtmsg* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.fib6_config*, %struct.fib6_config** %6, align 8
  %26 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %25, i32 0, i32 7
  store i32 %24, i32* %26, align 4
  %27 = load %struct.in6_rtmsg*, %struct.in6_rtmsg** %5, align 8
  %28 = getelementptr inbounds %struct.in6_rtmsg, %struct.in6_rtmsg* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.fib6_config*, %struct.fib6_config** %6, align 8
  %31 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %30, i32 0, i32 6
  store i32 %29, i32* %31, align 8
  %32 = load %struct.in6_rtmsg*, %struct.in6_rtmsg** %5, align 8
  %33 = getelementptr inbounds %struct.in6_rtmsg, %struct.in6_rtmsg* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.fib6_config*, %struct.fib6_config** %6, align 8
  %36 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 4
  %37 = load %struct.in6_rtmsg*, %struct.in6_rtmsg** %5, align 8
  %38 = getelementptr inbounds %struct.in6_rtmsg, %struct.in6_rtmsg* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.fib6_config*, %struct.fib6_config** %6, align 8
  %41 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 8
  %42 = load %struct.net*, %struct.net** %4, align 8
  %43 = load %struct.fib6_config*, %struct.fib6_config** %6, align 8
  %44 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store %struct.net* %42, %struct.net** %45, align 8
  %46 = load %struct.fib6_config*, %struct.fib6_config** %6, align 8
  %47 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %46, i32 0, i32 2
  %48 = load %struct.in6_rtmsg*, %struct.in6_rtmsg** %5, align 8
  %49 = getelementptr inbounds %struct.in6_rtmsg, %struct.in6_rtmsg* %48, i32 0, i32 2
  %50 = call i32 @ipv6_addr_copy(i32* %47, i32* %49)
  %51 = load %struct.fib6_config*, %struct.fib6_config** %6, align 8
  %52 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %51, i32 0, i32 1
  %53 = load %struct.in6_rtmsg*, %struct.in6_rtmsg** %5, align 8
  %54 = getelementptr inbounds %struct.in6_rtmsg, %struct.in6_rtmsg* %53, i32 0, i32 1
  %55 = call i32 @ipv6_addr_copy(i32* %52, i32* %54)
  %56 = load %struct.fib6_config*, %struct.fib6_config** %6, align 8
  %57 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %56, i32 0, i32 0
  %58 = load %struct.in6_rtmsg*, %struct.in6_rtmsg** %5, align 8
  %59 = getelementptr inbounds %struct.in6_rtmsg, %struct.in6_rtmsg* %58, i32 0, i32 0
  %60 = call i32 @ipv6_addr_copy(i32* %57, i32* %59)
  ret void
}

declare dso_local i32 @memset(%struct.fib6_config*, i32, i32) #1

declare dso_local i32 @ipv6_addr_copy(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
