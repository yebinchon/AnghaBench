; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_route.c___ip6_del_rt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_route.c___ip6_del_rt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt6_info = type { %struct.TYPE_4__, %struct.fib6_table*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.fib6_table = type { i32 }
%struct.nl_info = type { i32 }
%struct.net = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.rt6_info* }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt6_info*, %struct.nl_info*)* @__ip6_del_rt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ip6_del_rt(%struct.rt6_info* %0, %struct.nl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rt6_info*, align 8
  %5 = alloca %struct.nl_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fib6_table*, align 8
  %8 = alloca %struct.net*, align 8
  store %struct.rt6_info* %0, %struct.rt6_info** %4, align 8
  store %struct.nl_info* %1, %struct.nl_info** %5, align 8
  %9 = load %struct.rt6_info*, %struct.rt6_info** %4, align 8
  %10 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.net* @dev_net(i32 %11)
  store %struct.net* %12, %struct.net** %8, align 8
  %13 = load %struct.rt6_info*, %struct.rt6_info** %4, align 8
  %14 = load %struct.net*, %struct.net** %8, align 8
  %15 = getelementptr inbounds %struct.net, %struct.net* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.rt6_info*, %struct.rt6_info** %16, align 8
  %18 = icmp eq %struct.rt6_info* %13, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOENT, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %40

22:                                               ; preds = %2
  %23 = load %struct.rt6_info*, %struct.rt6_info** %4, align 8
  %24 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %23, i32 0, i32 1
  %25 = load %struct.fib6_table*, %struct.fib6_table** %24, align 8
  store %struct.fib6_table* %25, %struct.fib6_table** %7, align 8
  %26 = load %struct.fib6_table*, %struct.fib6_table** %7, align 8
  %27 = getelementptr inbounds %struct.fib6_table, %struct.fib6_table* %26, i32 0, i32 0
  %28 = call i32 @write_lock_bh(i32* %27)
  %29 = load %struct.rt6_info*, %struct.rt6_info** %4, align 8
  %30 = load %struct.nl_info*, %struct.nl_info** %5, align 8
  %31 = call i32 @fib6_del(%struct.rt6_info* %29, %struct.nl_info* %30)
  store i32 %31, i32* %6, align 4
  %32 = load %struct.rt6_info*, %struct.rt6_info** %4, align 8
  %33 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = call i32 @dst_release(i32* %34)
  %36 = load %struct.fib6_table*, %struct.fib6_table** %7, align 8
  %37 = getelementptr inbounds %struct.fib6_table, %struct.fib6_table* %36, i32 0, i32 0
  %38 = call i32 @write_unlock_bh(i32* %37)
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %22, %19
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.net* @dev_net(i32) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @fib6_del(%struct.rt6_info*, %struct.nl_info*) #1

declare dso_local i32 @dst_release(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
