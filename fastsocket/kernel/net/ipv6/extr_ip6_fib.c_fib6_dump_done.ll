; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_fib.c_fib6_dump_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_fib.c_fib6_dump_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netlink_callback = type { {}* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netlink_callback*)* @fib6_dump_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fib6_dump_done(%struct.netlink_callback* %0) #0 {
  %2 = alloca %struct.netlink_callback*, align 8
  store %struct.netlink_callback* %0, %struct.netlink_callback** %2, align 8
  %3 = load %struct.netlink_callback*, %struct.netlink_callback** %2, align 8
  %4 = call i32 @fib6_dump_end(%struct.netlink_callback* %3)
  %5 = load %struct.netlink_callback*, %struct.netlink_callback** %2, align 8
  %6 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %5, i32 0, i32 0
  %7 = bitcast {}** %6 to i32 (%struct.netlink_callback*)**
  %8 = load i32 (%struct.netlink_callback*)*, i32 (%struct.netlink_callback*)** %7, align 8
  %9 = icmp ne i32 (%struct.netlink_callback*)* %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.netlink_callback*, %struct.netlink_callback** %2, align 8
  %12 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %11, i32 0, i32 0
  %13 = bitcast {}** %12 to i32 (%struct.netlink_callback*)**
  %14 = load i32 (%struct.netlink_callback*)*, i32 (%struct.netlink_callback*)** %13, align 8
  %15 = load %struct.netlink_callback*, %struct.netlink_callback** %2, align 8
  %16 = call i32 %14(%struct.netlink_callback* %15)
  br label %18

17:                                               ; preds = %1
  br label %18

18:                                               ; preds = %17, %10
  %19 = phi i32 [ %16, %10 ], [ 0, %17 ]
  ret i32 %19
}

declare dso_local i32 @fib6_dump_end(%struct.netlink_callback*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
