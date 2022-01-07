; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_route.c_rt6_purge_dflt_routers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_route.c_rt6_purge_dflt_routers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.rt6_info = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.rt6_info* }
%struct.fib6_table = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.rt6_info* }

@RT6_TABLE_DFLT = common dso_local global i32 0, align 4
@RTF_DEFAULT = common dso_local global i32 0, align 4
@RTF_ADDRCONF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt6_purge_dflt_routers(%struct.net* %0) #0 {
  %2 = alloca %struct.net*, align 8
  %3 = alloca %struct.rt6_info*, align 8
  %4 = alloca %struct.fib6_table*, align 8
  store %struct.net* %0, %struct.net** %2, align 8
  %5 = load %struct.net*, %struct.net** %2, align 8
  %6 = load i32, i32* @RT6_TABLE_DFLT, align 4
  %7 = call %struct.fib6_table* @fib6_get_table(%struct.net* %5, i32 %6)
  store %struct.fib6_table* %7, %struct.fib6_table** %4, align 8
  %8 = load %struct.fib6_table*, %struct.fib6_table** %4, align 8
  %9 = icmp eq %struct.fib6_table* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %53

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %32, %11
  %13 = load %struct.fib6_table*, %struct.fib6_table** %4, align 8
  %14 = getelementptr inbounds %struct.fib6_table, %struct.fib6_table* %13, i32 0, i32 0
  %15 = call i32 @read_lock_bh(i32* %14)
  %16 = load %struct.fib6_table*, %struct.fib6_table** %4, align 8
  %17 = getelementptr inbounds %struct.fib6_table, %struct.fib6_table* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.rt6_info*, %struct.rt6_info** %18, align 8
  store %struct.rt6_info* %19, %struct.rt6_info** %3, align 8
  br label %20

20:                                               ; preds = %43, %12
  %21 = load %struct.rt6_info*, %struct.rt6_info** %3, align 8
  %22 = icmp ne %struct.rt6_info* %21, null
  br i1 %22, label %23, label %49

23:                                               ; preds = %20
  %24 = load %struct.rt6_info*, %struct.rt6_info** %3, align 8
  %25 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @RTF_DEFAULT, align 4
  %28 = load i32, i32* @RTF_ADDRCONF, align 4
  %29 = or i32 %27, %28
  %30 = and i32 %26, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %23
  %33 = load %struct.rt6_info*, %struct.rt6_info** %3, align 8
  %34 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = call i32 @dst_hold(%struct.TYPE_6__* %35)
  %37 = load %struct.fib6_table*, %struct.fib6_table** %4, align 8
  %38 = getelementptr inbounds %struct.fib6_table, %struct.fib6_table* %37, i32 0, i32 0
  %39 = call i32 @read_unlock_bh(i32* %38)
  %40 = load %struct.rt6_info*, %struct.rt6_info** %3, align 8
  %41 = call i32 @ip6_del_rt(%struct.rt6_info* %40)
  br label %12

42:                                               ; preds = %23
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.rt6_info*, %struct.rt6_info** %3, align 8
  %45 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load %struct.rt6_info*, %struct.rt6_info** %47, align 8
  store %struct.rt6_info* %48, %struct.rt6_info** %3, align 8
  br label %20

49:                                               ; preds = %20
  %50 = load %struct.fib6_table*, %struct.fib6_table** %4, align 8
  %51 = getelementptr inbounds %struct.fib6_table, %struct.fib6_table* %50, i32 0, i32 0
  %52 = call i32 @read_unlock_bh(i32* %51)
  br label %53

53:                                               ; preds = %49, %10
  ret void
}

declare dso_local %struct.fib6_table* @fib6_get_table(%struct.net*, i32) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i32 @dst_hold(%struct.TYPE_6__*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

declare dso_local i32 @ip6_del_rt(%struct.rt6_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
