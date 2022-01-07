; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_sysctl_net_ipv6.c_ipv6_sysctl_net_exit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_sysctl_net_ipv6.c_ipv6_sysctl_net_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.ctl_table* }
%struct.ctl_table = type { %struct.ctl_table* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net*)* @ipv6_sysctl_net_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipv6_sysctl_net_exit(%struct.net* %0) #0 {
  %2 = alloca %struct.net*, align 8
  %3 = alloca %struct.ctl_table*, align 8
  %4 = alloca %struct.ctl_table*, align 8
  %5 = alloca %struct.ctl_table*, align 8
  store %struct.net* %0, %struct.net** %2, align 8
  %6 = load %struct.net*, %struct.net** %2, align 8
  %7 = getelementptr inbounds %struct.net, %struct.net* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.ctl_table*, %struct.ctl_table** %11, align 8
  store %struct.ctl_table* %12, %struct.ctl_table** %3, align 8
  %13 = load %struct.ctl_table*, %struct.ctl_table** %3, align 8
  %14 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %13, i64 0
  %15 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %14, i32 0, i32 0
  %16 = load %struct.ctl_table*, %struct.ctl_table** %15, align 8
  store %struct.ctl_table* %16, %struct.ctl_table** %4, align 8
  %17 = load %struct.ctl_table*, %struct.ctl_table** %3, align 8
  %18 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %17, i64 1
  %19 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %18, i32 0, i32 0
  %20 = load %struct.ctl_table*, %struct.ctl_table** %19, align 8
  store %struct.ctl_table* %20, %struct.ctl_table** %5, align 8
  %21 = load %struct.net*, %struct.net** %2, align 8
  %22 = getelementptr inbounds %struct.net, %struct.net* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = call i32 @unregister_net_sysctl_table(%struct.TYPE_6__* %25)
  %27 = load %struct.ctl_table*, %struct.ctl_table** %3, align 8
  %28 = call i32 @kfree(%struct.ctl_table* %27)
  %29 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %30 = call i32 @kfree(%struct.ctl_table* %29)
  %31 = load %struct.ctl_table*, %struct.ctl_table** %5, align 8
  %32 = call i32 @kfree(%struct.ctl_table* %31)
  ret void
}

declare dso_local i32 @unregister_net_sysctl_table(%struct.TYPE_6__*) #1

declare dso_local i32 @kfree(%struct.ctl_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
