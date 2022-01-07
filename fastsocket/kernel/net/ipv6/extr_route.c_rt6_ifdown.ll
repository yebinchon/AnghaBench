; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_route.c_rt6_ifdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_route.c_rt6_ifdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.net_device = type { i32 }
%struct.arg_dev_net = type { %struct.net*, %struct.net_device* }

@fib6_ifdown = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt6_ifdown(%struct.net* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.net*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.arg_dev_net, align 8
  store %struct.net* %0, %struct.net** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %6 = getelementptr inbounds %struct.arg_dev_net, %struct.arg_dev_net* %5, i32 0, i32 0
  %7 = load %struct.net*, %struct.net** %3, align 8
  store %struct.net* %7, %struct.net** %6, align 8
  %8 = getelementptr inbounds %struct.arg_dev_net, %struct.arg_dev_net* %5, i32 0, i32 1
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  store %struct.net_device* %9, %struct.net_device** %8, align 8
  %10 = load %struct.net*, %struct.net** %3, align 8
  %11 = load i32, i32* @fib6_ifdown, align 4
  %12 = call i32 @fib6_clean_all(%struct.net* %10, i32 %11, i32 0, %struct.arg_dev_net* %5)
  %13 = load i32, i32* @fib6_ifdown, align 4
  %14 = call i32 @icmp6_clean_all(i32 %13, %struct.arg_dev_net* %5)
  ret void
}

declare dso_local i32 @fib6_clean_all(%struct.net*, i32, i32, %struct.arg_dev_net*) #1

declare dso_local i32 @icmp6_clean_all(i32, %struct.arg_dev_net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
