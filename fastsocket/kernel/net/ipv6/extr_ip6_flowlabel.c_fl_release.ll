; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_flowlabel.c_fl_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_flowlabel.c_fl_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.ip6_flowlabel = type { i64, i64, i64, i64, %struct.ipv6_txoptions*, i32 }
%struct.ipv6_txoptions = type { i32 }

@ip6_fl_lock = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@IPV6_FL_S_EXCL = common dso_local global i64 0, align 8
@ip6_fl_gc_timer = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip6_flowlabel*)* @fl_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fl_release(%struct.ip6_flowlabel* %0) #0 {
  %2 = alloca %struct.ip6_flowlabel*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.ipv6_txoptions*, align 8
  store %struct.ip6_flowlabel* %0, %struct.ip6_flowlabel** %2, align 8
  %5 = call i32 @write_lock_bh(i32* @ip6_fl_lock)
  %6 = load i64, i64* @jiffies, align 8
  %7 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %2, align 8
  %8 = getelementptr inbounds %struct.ip6_flowlabel, %struct.ip6_flowlabel* %7, i32 0, i32 0
  store i64 %6, i64* %8, align 8
  %9 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %2, align 8
  %10 = getelementptr inbounds %struct.ip6_flowlabel, %struct.ip6_flowlabel* %9, i32 0, i32 5
  %11 = call i64 @atomic_dec_and_test(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %65

13:                                               ; preds = %1
  %14 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %2, align 8
  %15 = getelementptr inbounds %struct.ip6_flowlabel, %struct.ip6_flowlabel* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %2, align 8
  %18 = getelementptr inbounds %struct.ip6_flowlabel, %struct.ip6_flowlabel* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = add i64 %16, %19
  store i64 %20, i64* %3, align 8
  %21 = load i64, i64* %3, align 8
  %22 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %2, align 8
  %23 = getelementptr inbounds %struct.ip6_flowlabel, %struct.ip6_flowlabel* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = call i64 @time_after(i64 %21, i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %13
  %28 = load i64, i64* %3, align 8
  %29 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %2, align 8
  %30 = getelementptr inbounds %struct.ip6_flowlabel, %struct.ip6_flowlabel* %29, i32 0, i32 2
  store i64 %28, i64* %30, align 8
  br label %31

31:                                               ; preds = %27, %13
  %32 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %2, align 8
  %33 = getelementptr inbounds %struct.ip6_flowlabel, %struct.ip6_flowlabel* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %3, align 8
  %35 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %2, align 8
  %36 = getelementptr inbounds %struct.ip6_flowlabel, %struct.ip6_flowlabel* %35, i32 0, i32 4
  %37 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %36, align 8
  %38 = icmp ne %struct.ipv6_txoptions* %37, null
  br i1 %38, label %39, label %53

39:                                               ; preds = %31
  %40 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %2, align 8
  %41 = getelementptr inbounds %struct.ip6_flowlabel, %struct.ip6_flowlabel* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @IPV6_FL_S_EXCL, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %39
  %46 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %2, align 8
  %47 = getelementptr inbounds %struct.ip6_flowlabel, %struct.ip6_flowlabel* %46, i32 0, i32 4
  %48 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %47, align 8
  store %struct.ipv6_txoptions* %48, %struct.ipv6_txoptions** %4, align 8
  %49 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %2, align 8
  %50 = getelementptr inbounds %struct.ip6_flowlabel, %struct.ip6_flowlabel* %49, i32 0, i32 4
  store %struct.ipv6_txoptions* null, %struct.ipv6_txoptions** %50, align 8
  %51 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %4, align 8
  %52 = call i32 @kfree(%struct.ipv6_txoptions* %51)
  br label %53

53:                                               ; preds = %45, %39, %31
  %54 = call i32 @timer_pending(%struct.TYPE_4__* @ip6_fl_gc_timer)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ip6_fl_gc_timer, i32 0, i32 0), align 8
  %58 = load i64, i64* %3, align 8
  %59 = call i64 @time_after(i64 %57, i64 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56, %53
  %62 = load i64, i64* %3, align 8
  %63 = call i32 @mod_timer(%struct.TYPE_4__* @ip6_fl_gc_timer, i64 %62)
  br label %64

64:                                               ; preds = %61, %56
  br label %65

65:                                               ; preds = %64, %1
  %66 = call i32 @write_unlock_bh(i32* @ip6_fl_lock)
  ret void
}

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @kfree(%struct.ipv6_txoptions*) #1

declare dso_local i32 @timer_pending(%struct.TYPE_4__*) #1

declare dso_local i32 @mod_timer(%struct.TYPE_4__*, i64) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
