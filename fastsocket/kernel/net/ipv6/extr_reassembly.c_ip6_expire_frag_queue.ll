; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_reassembly.c_ip6_expire_frag_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_reassembly.c_ip6_expire_frag_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.frag_queue = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.inet_frags = type { i32 }

@INET_FRAG_COMPLETE = common dso_local global i32 0, align 4
@IPSTATS_MIB_REASMTIMEOUT = common dso_local global i32 0, align 4
@IPSTATS_MIB_REASMFAILS = common dso_local global i32 0, align 4
@INET_FRAG_FIRST_IN = common dso_local global i32 0, align 4
@ICMPV6_TIME_EXCEED = common dso_local global i32 0, align 4
@ICMPV6_EXC_FRAGTIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ip6_expire_frag_queue(%struct.net* %0, %struct.frag_queue* %1, %struct.inet_frags* %2) #0 {
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.frag_queue*, align 8
  %6 = alloca %struct.inet_frags*, align 8
  %7 = alloca %struct.net_device*, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.frag_queue* %1, %struct.frag_queue** %5, align 8
  store %struct.inet_frags* %2, %struct.inet_frags** %6, align 8
  store %struct.net_device* null, %struct.net_device** %7, align 8
  %8 = load %struct.frag_queue*, %struct.frag_queue** %5, align 8
  %9 = getelementptr inbounds %struct.frag_queue, %struct.frag_queue* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.frag_queue*, %struct.frag_queue** %5, align 8
  %13 = getelementptr inbounds %struct.frag_queue, %struct.frag_queue* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @INET_FRAG_COMPLETE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %75

20:                                               ; preds = %3
  %21 = load %struct.frag_queue*, %struct.frag_queue** %5, align 8
  %22 = getelementptr inbounds %struct.frag_queue, %struct.frag_queue* %21, i32 0, i32 0
  %23 = load %struct.inet_frags*, %struct.inet_frags** %6, align 8
  %24 = call i32 @inet_frag_kill(%struct.TYPE_4__* %22, %struct.inet_frags* %23)
  %25 = load %struct.net*, %struct.net** %4, align 8
  %26 = load %struct.frag_queue*, %struct.frag_queue** %5, align 8
  %27 = getelementptr inbounds %struct.frag_queue, %struct.frag_queue* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call %struct.net_device* @dev_get_by_index(%struct.net* %25, i32 %28)
  store %struct.net_device* %29, %struct.net_device** %7, align 8
  %30 = load %struct.net_device*, %struct.net_device** %7, align 8
  %31 = icmp ne %struct.net_device* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %20
  br label %75

33:                                               ; preds = %20
  %34 = call i32 (...) @rcu_read_lock()
  %35 = load %struct.net*, %struct.net** %4, align 8
  %36 = load %struct.net_device*, %struct.net_device** %7, align 8
  %37 = call i32 @__in6_dev_get(%struct.net_device* %36)
  %38 = load i32, i32* @IPSTATS_MIB_REASMTIMEOUT, align 4
  %39 = call i32 @IP6_INC_STATS_BH(%struct.net* %35, i32 %37, i32 %38)
  %40 = load %struct.net*, %struct.net** %4, align 8
  %41 = load %struct.net_device*, %struct.net_device** %7, align 8
  %42 = call i32 @__in6_dev_get(%struct.net_device* %41)
  %43 = load i32, i32* @IPSTATS_MIB_REASMFAILS, align 4
  %44 = call i32 @IP6_INC_STATS_BH(%struct.net* %40, i32 %42, i32 %43)
  %45 = call i32 (...) @rcu_read_unlock()
  %46 = load %struct.frag_queue*, %struct.frag_queue** %5, align 8
  %47 = getelementptr inbounds %struct.frag_queue, %struct.frag_queue* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @INET_FRAG_FIRST_IN, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %33
  %54 = load %struct.frag_queue*, %struct.frag_queue** %5, align 8
  %55 = getelementptr inbounds %struct.frag_queue, %struct.frag_queue* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = icmp ne %struct.TYPE_5__* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %53, %33
  br label %75

60:                                               ; preds = %53
  %61 = load %struct.net_device*, %struct.net_device** %7, align 8
  %62 = load %struct.frag_queue*, %struct.frag_queue** %5, align 8
  %63 = getelementptr inbounds %struct.frag_queue, %struct.frag_queue* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  store %struct.net_device* %61, %struct.net_device** %66, align 8
  %67 = load %struct.frag_queue*, %struct.frag_queue** %5, align 8
  %68 = getelementptr inbounds %struct.frag_queue, %struct.frag_queue* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = load i32, i32* @ICMPV6_TIME_EXCEED, align 4
  %72 = load i32, i32* @ICMPV6_EXC_FRAGTIME, align 4
  %73 = load %struct.net_device*, %struct.net_device** %7, align 8
  %74 = call i32 @icmpv6_send(%struct.TYPE_5__* %70, i32 %71, i32 %72, i32 0, %struct.net_device* %73)
  br label %75

75:                                               ; preds = %60, %59, %32, %19
  %76 = load %struct.net_device*, %struct.net_device** %7, align 8
  %77 = icmp ne %struct.net_device* %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load %struct.net_device*, %struct.net_device** %7, align 8
  %80 = call i32 @dev_put(%struct.net_device* %79)
  br label %81

81:                                               ; preds = %78, %75
  %82 = load %struct.frag_queue*, %struct.frag_queue** %5, align 8
  %83 = getelementptr inbounds %struct.frag_queue, %struct.frag_queue* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = call i32 @spin_unlock(i32* %84)
  %86 = load %struct.frag_queue*, %struct.frag_queue** %5, align 8
  %87 = getelementptr inbounds %struct.frag_queue, %struct.frag_queue* %86, i32 0, i32 0
  %88 = load %struct.inet_frags*, %struct.inet_frags** %6, align 8
  %89 = call i32 @inet_frag_put(%struct.TYPE_4__* %87, %struct.inet_frags* %88)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @inet_frag_kill(%struct.TYPE_4__*, %struct.inet_frags*) #1

declare dso_local %struct.net_device* @dev_get_by_index(%struct.net*, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @IP6_INC_STATS_BH(%struct.net*, i32, i32) #1

declare dso_local i32 @__in6_dev_get(%struct.net_device*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @icmpv6_send(%struct.TYPE_5__*, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @inet_frag_put(%struct.TYPE_4__*, %struct.inet_frags*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
