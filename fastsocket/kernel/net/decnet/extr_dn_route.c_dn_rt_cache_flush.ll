; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_route.c_dn_rt_cache_flush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_route.c_dn_rt_cache_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@jiffies = common dso_local global i64 0, align 8
@dn_rt_min_delay = common dso_local global i64 0, align 8
@dn_rt_flush_lock = common dso_local global i32 0, align 4
@dn_rt_flush_timer = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@dn_rt_deadline = common dso_local global i64 0, align 8
@dn_rt_max_delay = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dn_rt_cache_flush(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i64, i64* @jiffies, align 8
  store i64 %6, i64* %3, align 8
  %7 = call i32 (...) @in_interrupt()
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %2, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i64, i64* @dn_rt_min_delay, align 8
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %2, align 4
  br label %16

16:                                               ; preds = %13, %1
  %17 = call i32 @spin_lock_bh(i32* @dn_rt_flush_lock)
  %18 = call i64 @del_timer(%struct.TYPE_4__* @dn_rt_flush_timer)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %48

20:                                               ; preds = %16
  %21 = load i32, i32* %2, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %48

23:                                               ; preds = %20
  %24 = load i64, i64* @dn_rt_deadline, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %48

26:                                               ; preds = %23
  %27 = load i64, i64* @dn_rt_deadline, align 8
  %28 = load i64, i64* %3, align 8
  %29 = sub i64 %27, %28
  store i64 %29, i64* %5, align 8
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %26
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* @dn_rt_max_delay, align 8
  %35 = load i64, i64* @dn_rt_min_delay, align 8
  %36 = sub nsw i64 %34, %35
  %37 = icmp slt i64 %33, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i64 0, i64* %5, align 8
  br label %39

39:                                               ; preds = %38, %32, %26
  %40 = load i32, i32* %2, align 4
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* %5, align 8
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i64, i64* %5, align 8
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %44, %39
  br label %48

48:                                               ; preds = %47, %23, %20, %16
  %49 = load i32, i32* %2, align 4
  %50 = icmp sle i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = call i32 @spin_unlock_bh(i32* @dn_rt_flush_lock)
  %53 = call i32 @dn_run_flush(i32 0)
  br label %68

54:                                               ; preds = %48
  %55 = load i64, i64* @dn_rt_deadline, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i64, i64* %3, align 8
  %59 = load i64, i64* @dn_rt_max_delay, align 8
  %60 = add i64 %58, %59
  store i64 %60, i64* @dn_rt_deadline, align 8
  br label %61

61:                                               ; preds = %57, %54
  %62 = load i64, i64* %3, align 8
  %63 = load i32, i32* %2, align 4
  %64 = sext i32 %63 to i64
  %65 = add i64 %62, %64
  store i64 %65, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dn_rt_flush_timer, i32 0, i32 0), align 8
  %66 = call i32 @add_timer(%struct.TYPE_4__* @dn_rt_flush_timer)
  %67 = call i32 @spin_unlock_bh(i32* @dn_rt_flush_lock)
  br label %68

68:                                               ; preds = %61, %51
  ret void
}

declare dso_local i32 @in_interrupt(...) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @del_timer(%struct.TYPE_4__*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @dn_run_flush(i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
