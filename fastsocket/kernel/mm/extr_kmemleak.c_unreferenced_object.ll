; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_kmemleak.c_unreferenced_object.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_kmemleak.c_unreferenced_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmemleak_object = type { i32, i64 }

@OBJECT_ALLOCATED = common dso_local global i32 0, align 4
@jiffies_min_age = common dso_local global i64 0, align 8
@jiffies_last_scan = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kmemleak_object*)* @unreferenced_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unreferenced_object(%struct.kmemleak_object* %0) #0 {
  %2 = alloca %struct.kmemleak_object*, align 8
  store %struct.kmemleak_object* %0, %struct.kmemleak_object** %2, align 8
  %3 = load %struct.kmemleak_object*, %struct.kmemleak_object** %2, align 8
  %4 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @OBJECT_ALLOCATED, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %1
  %10 = load %struct.kmemleak_object*, %struct.kmemleak_object** %2, align 8
  %11 = call i64 @color_white(%struct.kmemleak_object* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %9
  %14 = load %struct.kmemleak_object*, %struct.kmemleak_object** %2, align 8
  %15 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @jiffies_min_age, align 8
  %18 = add nsw i64 %16, %17
  %19 = load i32, i32* @jiffies_last_scan, align 4
  %20 = call i64 @time_before_eq(i64 %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br label %22

22:                                               ; preds = %13, %9, %1
  %23 = phi i1 [ false, %9 ], [ false, %1 ], [ %21, %13 ]
  %24 = zext i1 %23 to i32
  ret i32 %24
}

declare dso_local i64 @color_white(%struct.kmemleak_object*) #1

declare dso_local i64 @time_before_eq(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
