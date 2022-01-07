; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_debugobjects.c_free_object.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_debugobjects.c_free_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debug_obj = type { i32 }

@pool_lock = common dso_local global i32 0, align 4
@obj_pool_free = common dso_local global i64 0, align 8
@ODEBUG_POOL_SIZE = common dso_local global i64 0, align 8
@obj_cache = common dso_local global i64 0, align 8
@debug_obj_work = common dso_local global i32 0, align 4
@obj_pool = common dso_local global i32 0, align 4
@obj_pool_used = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.debug_obj*)* @free_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_object(%struct.debug_obj* %0) #0 {
  %2 = alloca %struct.debug_obj*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.debug_obj* %0, %struct.debug_obj** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load i64, i64* %3, align 8
  %6 = call i32 @spin_lock_irqsave(i32* @pool_lock, i64 %5)
  %7 = load i64, i64* @obj_pool_free, align 8
  %8 = load i64, i64* @ODEBUG_POOL_SIZE, align 8
  %9 = icmp sgt i64 %7, %8
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load i64, i64* @obj_cache, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = call i32 @work_pending(i32* @debug_obj_work)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %4, align 4
  br label %18

18:                                               ; preds = %13, %10, %1
  %19 = load %struct.debug_obj*, %struct.debug_obj** %2, align 8
  %20 = getelementptr inbounds %struct.debug_obj, %struct.debug_obj* %19, i32 0, i32 0
  %21 = call i32 @hlist_add_head(i32* %20, i32* @obj_pool)
  %22 = load i64, i64* @obj_pool_free, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* @obj_pool_free, align 8
  %24 = load i32, i32* @obj_pool_used, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* @obj_pool_used, align 4
  %26 = load i64, i64* %3, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* @pool_lock, i64 %26)
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %18
  %31 = call i32 @schedule_work(i32* @debug_obj_work)
  br label %32

32:                                               ; preds = %30, %18
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @work_pending(i32*) #1

declare dso_local i32 @hlist_add_head(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
