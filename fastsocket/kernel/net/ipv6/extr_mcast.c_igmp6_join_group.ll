; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_mcast.c_igmp6_join_group.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_mcast.c_igmp6_join_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifmcaddr6 = type { i32, i32, i32, %struct.TYPE_5__, %struct.TYPE_4__*, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@MAF_NOREPORT = common dso_local global i32 0, align 4
@ICMPV6_MGM_REPORT = common dso_local global i32 0, align 4
@IGMP6_UNSOLICITED_IVAL = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@MAF_TIMER_RUNNING = common dso_local global i32 0, align 4
@MAF_LAST_REPORTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifmcaddr6*)* @igmp6_join_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igmp6_join_group(%struct.ifmcaddr6* %0) #0 {
  %2 = alloca %struct.ifmcaddr6*, align 8
  %3 = alloca i64, align 8
  store %struct.ifmcaddr6* %0, %struct.ifmcaddr6** %2, align 8
  %4 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %5 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @MAF_NOREPORT, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %64

11:                                               ; preds = %1
  %12 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %13 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %12, i32 0, i32 5
  %14 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %15 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %14, i32 0, i32 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @ICMPV6_MGM_REPORT, align 4
  %20 = call i32 @igmp6_send(i32* %13, i32 %18, i32 %19)
  %21 = call i64 (...) @net_random()
  %22 = load i64, i64* @IGMP6_UNSOLICITED_IVAL, align 8
  %23 = urem i64 %21, %22
  store i64 %23, i64* %3, align 8
  %24 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %25 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %24, i32 0, i32 1
  %26 = call i32 @spin_lock_bh(i32* %25)
  %27 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %28 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %27, i32 0, i32 3
  %29 = call i64 @del_timer(%struct.TYPE_5__* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %11
  %32 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %33 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %32, i32 0, i32 2
  %34 = call i32 @atomic_dec(i32* %33)
  %35 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %36 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @jiffies, align 8
  %40 = sub i64 %38, %39
  store i64 %40, i64* %3, align 8
  br label %41

41:                                               ; preds = %31, %11
  %42 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %43 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %42, i32 0, i32 3
  %44 = load i64, i64* @jiffies, align 8
  %45 = load i64, i64* %3, align 8
  %46 = add i64 %44, %45
  %47 = call i32 @mod_timer(%struct.TYPE_5__* %43, i64 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %41
  %50 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %51 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %50, i32 0, i32 2
  %52 = call i32 @atomic_inc(i32* %51)
  br label %53

53:                                               ; preds = %49, %41
  %54 = load i32, i32* @MAF_TIMER_RUNNING, align 4
  %55 = load i32, i32* @MAF_LAST_REPORTER, align 4
  %56 = or i32 %54, %55
  %57 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %58 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 8
  %61 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %62 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %61, i32 0, i32 1
  %63 = call i32 @spin_unlock_bh(i32* %62)
  br label %64

64:                                               ; preds = %53, %10
  ret void
}

declare dso_local i32 @igmp6_send(i32*, i32, i32) #1

declare dso_local i64 @net_random(...) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @del_timer(%struct.TYPE_5__*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @mod_timer(%struct.TYPE_5__*, i64) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
