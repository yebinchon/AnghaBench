; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_fib.c_fib6_run_gc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_fib.c_fib6_run_gc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64 }
%struct.net = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@fib6_gc_lock = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@gc_args = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@fib6_age = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fib6_run_gc(i64 %0, %struct.net* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store %struct.net* %1, %struct.net** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = call i32 @spin_lock_bh(i32* @fib6_gc_lock)
  br label %23

11:                                               ; preds = %3
  %12 = call i32 @spin_trylock_bh(i32* @fib6_gc_lock)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %11
  %15 = load %struct.net*, %struct.net** %5, align 8
  %16 = getelementptr inbounds %struct.net, %struct.net* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* @jiffies, align 8
  %19 = load i64, i64* @HZ, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @mod_timer(i32* %17, i64 %20)
  br label %64

22:                                               ; preds = %11
  br label %23

23:                                               ; preds = %22, %9
  %24 = load i64, i64* %4, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i64, i64* %4, align 8
  %28 = trunc i64 %27 to i32
  br label %35

29:                                               ; preds = %23
  %30 = load %struct.net*, %struct.net** %5, align 8
  %31 = getelementptr inbounds %struct.net, %struct.net* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  br label %35

35:                                               ; preds = %29, %26
  %36 = phi i32 [ %28, %26 ], [ %34, %29 ]
  store i32 %36, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gc_args, i32 0, i32 0), align 8
  %37 = call i64 (...) @icmp6_dst_gc()
  store i64 %37, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gc_args, i32 0, i32 1), align 8
  %38 = load %struct.net*, %struct.net** %5, align 8
  %39 = load i32, i32* @fib6_age, align 4
  %40 = call i32 @fib6_clean_all(%struct.net* %38, i32 %39, i32 0, i32* null)
  %41 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gc_args, i32 0, i32 1), align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %35
  %44 = load %struct.net*, %struct.net** %5, align 8
  %45 = getelementptr inbounds %struct.net, %struct.net* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i64, i64* @jiffies, align 8
  %48 = load %struct.net*, %struct.net** %5, align 8
  %49 = getelementptr inbounds %struct.net, %struct.net* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %47, %53
  %55 = call i64 @round_jiffies(i64 %54)
  %56 = call i32 @mod_timer(i32* %46, i64 %55)
  br label %62

57:                                               ; preds = %35
  %58 = load %struct.net*, %struct.net** %5, align 8
  %59 = getelementptr inbounds %struct.net, %struct.net* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = call i32 @del_timer(i32* %60)
  br label %62

62:                                               ; preds = %57, %43
  %63 = call i32 @spin_unlock_bh(i32* @fib6_gc_lock)
  br label %64

64:                                               ; preds = %62, %14
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_trylock_bh(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @icmp6_dst_gc(...) #1

declare dso_local i32 @fib6_clean_all(%struct.net*, i32, i32, i32*) #1

declare dso_local i64 @round_jiffies(i64) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
