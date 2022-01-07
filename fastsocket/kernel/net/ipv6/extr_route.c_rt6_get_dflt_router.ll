; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_route.c_rt6_get_dflt_router.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_route.c_rt6_get_dflt_router.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt6_info = type { i32, %struct.TYPE_5__, i32, %struct.net_device* }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.rt6_info* }
%struct.in6_addr = type { i32 }
%struct.net_device = type { i32 }
%struct.fib6_table = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.rt6_info* }

@RT6_TABLE_DFLT = common dso_local global i32 0, align 4
@RTF_ADDRCONF = common dso_local global i32 0, align 4
@RTF_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rt6_info* @rt6_get_dflt_router(%struct.in6_addr* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.rt6_info*, align 8
  %4 = alloca %struct.in6_addr*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.rt6_info*, align 8
  %7 = alloca %struct.fib6_table*, align 8
  store %struct.in6_addr* %0, %struct.in6_addr** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %5, align 8
  %9 = call i32 @dev_net(%struct.net_device* %8)
  %10 = load i32, i32* @RT6_TABLE_DFLT, align 4
  %11 = call %struct.fib6_table* @fib6_get_table(i32 %9, i32 %10)
  store %struct.fib6_table* %11, %struct.fib6_table** %7, align 8
  %12 = load %struct.fib6_table*, %struct.fib6_table** %7, align 8
  %13 = icmp eq %struct.fib6_table* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store %struct.rt6_info* null, %struct.rt6_info** %3, align 8
  br label %71

15:                                               ; preds = %2
  %16 = load %struct.fib6_table*, %struct.fib6_table** %7, align 8
  %17 = getelementptr inbounds %struct.fib6_table, %struct.fib6_table* %16, i32 0, i32 0
  %18 = call i32 @write_lock_bh(i32* %17)
  %19 = load %struct.fib6_table*, %struct.fib6_table** %7, align 8
  %20 = getelementptr inbounds %struct.fib6_table, %struct.fib6_table* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.rt6_info*, %struct.rt6_info** %21, align 8
  store %struct.rt6_info* %22, %struct.rt6_info** %6, align 8
  br label %23

23:                                               ; preds = %52, %15
  %24 = load %struct.rt6_info*, %struct.rt6_info** %6, align 8
  %25 = icmp ne %struct.rt6_info* %24, null
  br i1 %25, label %26, label %58

26:                                               ; preds = %23
  %27 = load %struct.net_device*, %struct.net_device** %5, align 8
  %28 = load %struct.rt6_info*, %struct.rt6_info** %6, align 8
  %29 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %28, i32 0, i32 3
  %30 = load %struct.net_device*, %struct.net_device** %29, align 8
  %31 = icmp eq %struct.net_device* %27, %30
  br i1 %31, label %32, label %51

32:                                               ; preds = %26
  %33 = load %struct.rt6_info*, %struct.rt6_info** %6, align 8
  %34 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @RTF_ADDRCONF, align 4
  %37 = load i32, i32* @RTF_DEFAULT, align 4
  %38 = or i32 %36, %37
  %39 = and i32 %35, %38
  %40 = load i32, i32* @RTF_ADDRCONF, align 4
  %41 = load i32, i32* @RTF_DEFAULT, align 4
  %42 = or i32 %40, %41
  %43 = icmp eq i32 %39, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %32
  %45 = load %struct.rt6_info*, %struct.rt6_info** %6, align 8
  %46 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %45, i32 0, i32 2
  %47 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %48 = call i64 @ipv6_addr_equal(i32* %46, %struct.in6_addr* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %58

51:                                               ; preds = %44, %32, %26
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.rt6_info*, %struct.rt6_info** %6, align 8
  %54 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load %struct.rt6_info*, %struct.rt6_info** %56, align 8
  store %struct.rt6_info* %57, %struct.rt6_info** %6, align 8
  br label %23

58:                                               ; preds = %50, %23
  %59 = load %struct.rt6_info*, %struct.rt6_info** %6, align 8
  %60 = icmp ne %struct.rt6_info* %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load %struct.rt6_info*, %struct.rt6_info** %6, align 8
  %63 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = call i32 @dst_hold(%struct.TYPE_6__* %64)
  br label %66

66:                                               ; preds = %61, %58
  %67 = load %struct.fib6_table*, %struct.fib6_table** %7, align 8
  %68 = getelementptr inbounds %struct.fib6_table, %struct.fib6_table* %67, i32 0, i32 0
  %69 = call i32 @write_unlock_bh(i32* %68)
  %70 = load %struct.rt6_info*, %struct.rt6_info** %6, align 8
  store %struct.rt6_info* %70, %struct.rt6_info** %3, align 8
  br label %71

71:                                               ; preds = %66, %14
  %72 = load %struct.rt6_info*, %struct.rt6_info** %3, align 8
  ret %struct.rt6_info* %72
}

declare dso_local %struct.fib6_table* @fib6_get_table(i32, i32) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i64 @ipv6_addr_equal(i32*, %struct.in6_addr*) #1

declare dso_local i32 @dst_hold(%struct.TYPE_6__*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
