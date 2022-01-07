; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/802/extr_tr.c_rif_check_expire.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/802/extr_tr.c_rif_check_expire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rif_cache = type { i32, %struct.rif_cache* }

@jiffies = common dso_local global i32 0, align 4
@sysctl_tr_rif_timeout = common dso_local global i32 0, align 4
@rif_lock = common dso_local global i32 0, align 4
@RIF_TABLE_SIZE = common dso_local global i32 0, align 4
@rif_table = common dso_local global %struct.rif_cache** null, align 8
@rif_timer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @rif_check_expire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rif_check_expire(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.rif_cache*, align 8
  %7 = alloca %struct.rif_cache**, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %9 = load i32, i32* @jiffies, align 4
  %10 = load i32, i32* @sysctl_tr_rif_timeout, align 4
  %11 = sdiv i32 %10, 2
  %12 = add nsw i32 %9, %11
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @spin_lock_irqsave(i32* @rif_lock, i64 %14)
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %59, %1
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @RIF_TABLE_SIZE, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %62

20:                                               ; preds = %16
  %21 = load %struct.rif_cache**, %struct.rif_cache*** @rif_table, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.rif_cache*, %struct.rif_cache** %21, i64 %23
  store %struct.rif_cache** %24, %struct.rif_cache*** %7, align 8
  br label %25

25:                                               ; preds = %57, %20
  %26 = load %struct.rif_cache**, %struct.rif_cache*** %7, align 8
  %27 = load %struct.rif_cache*, %struct.rif_cache** %26, align 8
  store %struct.rif_cache* %27, %struct.rif_cache** %6, align 8
  %28 = icmp ne %struct.rif_cache* %27, null
  br i1 %28, label %29, label %58

29:                                               ; preds = %25
  %30 = load %struct.rif_cache*, %struct.rif_cache** %6, align 8
  %31 = getelementptr inbounds %struct.rif_cache, %struct.rif_cache* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @sysctl_tr_rif_timeout, align 4
  %34 = add nsw i32 %32, %33
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %8, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load i32, i32* @jiffies, align 4
  %38 = call i64 @time_before_eq(i64 %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %29
  %41 = load %struct.rif_cache*, %struct.rif_cache** %6, align 8
  %42 = getelementptr inbounds %struct.rif_cache, %struct.rif_cache* %41, i32 0, i32 1
  %43 = load %struct.rif_cache*, %struct.rif_cache** %42, align 8
  %44 = load %struct.rif_cache**, %struct.rif_cache*** %7, align 8
  store %struct.rif_cache* %43, %struct.rif_cache** %44, align 8
  %45 = load %struct.rif_cache*, %struct.rif_cache** %6, align 8
  %46 = call i32 @kfree(%struct.rif_cache* %45)
  br label %57

47:                                               ; preds = %29
  %48 = load %struct.rif_cache*, %struct.rif_cache** %6, align 8
  %49 = getelementptr inbounds %struct.rif_cache, %struct.rif_cache* %48, i32 0, i32 1
  store %struct.rif_cache** %49, %struct.rif_cache*** %7, align 8
  %50 = load i64, i64* %8, align 8
  %51 = load i64, i64* %5, align 8
  %52 = call i64 @time_before(i64 %50, i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i64, i64* %8, align 8
  store i64 %55, i64* %5, align 8
  br label %56

56:                                               ; preds = %54, %47
  br label %57

57:                                               ; preds = %56, %40
  br label %25

58:                                               ; preds = %25
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %3, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %3, align 4
  br label %16

62:                                               ; preds = %16
  %63 = load i64, i64* %4, align 8
  %64 = call i32 @spin_unlock_irqrestore(i32* @rif_lock, i64 %63)
  %65 = load i64, i64* %5, align 8
  %66 = call i32 @mod_timer(i32* @rif_timer, i64 %65)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @time_before_eq(i64, i32) #1

declare dso_local i32 @kfree(%struct.rif_cache*) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
