; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_debugobjects.c_fill_pool.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_debugobjects.c_fill_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debug_obj = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@__GFP_NORETRY = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@obj_pool_free = common dso_local global i64 0, align 8
@ODEBUG_POOL_MIN_LEVEL = common dso_local global i64 0, align 8
@obj_cache = common dso_local global i32 0, align 4
@pool_lock = common dso_local global i32 0, align 4
@obj_pool = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @fill_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_pool() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.debug_obj*, align 8
  %4 = alloca i64, align 8
  %5 = load i32, i32* @GFP_ATOMIC, align 4
  %6 = load i32, i32* @__GFP_NORETRY, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @__GFP_NOWARN, align 4
  %9 = or i32 %7, %8
  store i32 %9, i32* %2, align 4
  %10 = load i64, i64* @obj_pool_free, align 8
  %11 = load i64, i64* @ODEBUG_POOL_MIN_LEVEL, align 8
  %12 = icmp sge i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i64 @likely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %0
  %17 = load i64, i64* @obj_pool_free, align 8
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %1, align 4
  br label %56

19:                                               ; preds = %0
  %20 = load i32, i32* @obj_cache, align 4
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load i64, i64* @obj_pool_free, align 8
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %1, align 4
  br label %56

29:                                               ; preds = %19
  br label %30

30:                                               ; preds = %43, %29
  %31 = load i64, i64* @obj_pool_free, align 8
  %32 = load i64, i64* @ODEBUG_POOL_MIN_LEVEL, align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %34, label %53

34:                                               ; preds = %30
  %35 = load i32, i32* @obj_cache, align 4
  %36 = load i32, i32* %2, align 4
  %37 = call %struct.debug_obj* @kmem_cache_zalloc(i32 %35, i32 %36)
  store %struct.debug_obj* %37, %struct.debug_obj** %3, align 8
  %38 = load %struct.debug_obj*, %struct.debug_obj** %3, align 8
  %39 = icmp ne %struct.debug_obj* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %34
  %41 = load i64, i64* @obj_pool_free, align 8
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %1, align 4
  br label %56

43:                                               ; preds = %34
  %44 = load i64, i64* %4, align 8
  %45 = call i32 @spin_lock_irqsave(i32* @pool_lock, i64 %44)
  %46 = load %struct.debug_obj*, %struct.debug_obj** %3, align 8
  %47 = getelementptr inbounds %struct.debug_obj, %struct.debug_obj* %46, i32 0, i32 0
  %48 = call i32 @hlist_add_head(i32* %47, i32* @obj_pool)
  %49 = load i64, i64* @obj_pool_free, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* @obj_pool_free, align 8
  %51 = load i64, i64* %4, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* @pool_lock, i64 %51)
  br label %30

53:                                               ; preds = %30
  %54 = load i64, i64* @obj_pool_free, align 8
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %1, align 4
  br label %56

56:                                               ; preds = %53, %40, %26, %16
  %57 = load i32, i32* %1, align 4
  ret i32 %57
}

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.debug_obj* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @hlist_add_head(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
