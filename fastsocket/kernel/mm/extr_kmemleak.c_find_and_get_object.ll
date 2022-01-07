; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_kmemleak.c_find_and_get_object.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_kmemleak.c_find_and_get_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmemleak_object = type { i32 }

@kmemleak_lock = common dso_local global i32 0, align 4
@min_addr = common dso_local global i64 0, align 8
@max_addr = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kmemleak_object* (i64, i32)* @find_and_get_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kmemleak_object* @find_and_get_object(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.kmemleak_object*, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.kmemleak_object* null, %struct.kmemleak_object** %6, align 8
  %7 = call i32 (...) @rcu_read_lock()
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @read_lock_irqsave(i32* @kmemleak_lock, i64 %8)
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @min_addr, align 8
  %12 = icmp uge i64 %10, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* @max_addr, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load i64, i64* %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call %struct.kmemleak_object* @lookup_object(i64 %18, i32 %19)
  store %struct.kmemleak_object* %20, %struct.kmemleak_object** %6, align 8
  br label %21

21:                                               ; preds = %17, %13, %2
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @read_unlock_irqrestore(i32* @kmemleak_lock, i64 %22)
  %24 = load %struct.kmemleak_object*, %struct.kmemleak_object** %6, align 8
  %25 = icmp ne %struct.kmemleak_object* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.kmemleak_object*, %struct.kmemleak_object** %6, align 8
  %28 = call i32 @get_object(%struct.kmemleak_object* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  store %struct.kmemleak_object* null, %struct.kmemleak_object** %6, align 8
  br label %31

31:                                               ; preds = %30, %26, %21
  %32 = call i32 (...) @rcu_read_unlock()
  %33 = load %struct.kmemleak_object*, %struct.kmemleak_object** %6, align 8
  ret %struct.kmemleak_object* %33
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @read_lock_irqsave(i32*, i64) #1

declare dso_local %struct.kmemleak_object* @lookup_object(i64, i32) #1

declare dso_local i32 @read_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @get_object(%struct.kmemleak_object*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
