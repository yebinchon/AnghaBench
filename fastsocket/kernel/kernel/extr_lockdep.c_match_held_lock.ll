; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_lockdep.c_match_held_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_lockdep.c_match_held_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lock_class = type { i32 }
%struct.held_lock = type { i32, i32, i64, %struct.lockdep_map* }
%struct.lockdep_map = type { %struct.lock_class* }

@lock_classes = common dso_local global %struct.lock_class* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.held_lock*, %struct.lockdep_map*)* @match_held_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_held_lock(%struct.held_lock* %0, %struct.lockdep_map* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.held_lock*, align 8
  %5 = alloca %struct.lockdep_map*, align 8
  %6 = alloca %struct.lock_class*, align 8
  store %struct.held_lock* %0, %struct.held_lock** %4, align 8
  store %struct.lockdep_map* %1, %struct.lockdep_map** %5, align 8
  %7 = load %struct.held_lock*, %struct.held_lock** %4, align 8
  %8 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %7, i32 0, i32 3
  %9 = load %struct.lockdep_map*, %struct.lockdep_map** %8, align 8
  %10 = load %struct.lockdep_map*, %struct.lockdep_map** %5, align 8
  %11 = icmp eq %struct.lockdep_map* %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %61

13:                                               ; preds = %2
  %14 = load %struct.held_lock*, %struct.held_lock** %4, align 8
  %15 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %60

18:                                               ; preds = %13
  %19 = load %struct.lockdep_map*, %struct.lockdep_map** %5, align 8
  %20 = getelementptr inbounds %struct.lockdep_map, %struct.lockdep_map* %19, i32 0, i32 0
  %21 = load %struct.lock_class*, %struct.lock_class** %20, align 8
  store %struct.lock_class* %21, %struct.lock_class** %6, align 8
  %22 = load %struct.lock_class*, %struct.lock_class** %6, align 8
  %23 = icmp ne %struct.lock_class* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load %struct.lockdep_map*, %struct.lockdep_map** %5, align 8
  %26 = call %struct.lock_class* @look_up_lock_class(%struct.lockdep_map* %25, i32 0)
  store %struct.lock_class* %26, %struct.lock_class** %6, align 8
  br label %27

27:                                               ; preds = %24, %18
  %28 = load %struct.lock_class*, %struct.lock_class** %6, align 8
  %29 = icmp ne %struct.lock_class* %28, null
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i64 @DEBUG_LOCKS_WARN_ON(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %61

35:                                               ; preds = %27
  %36 = load %struct.held_lock*, %struct.held_lock** %4, align 8
  %37 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i64 @DEBUG_LOCKS_WARN_ON(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %61

45:                                               ; preds = %35
  %46 = load %struct.held_lock*, %struct.held_lock** %4, align 8
  %47 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = load %struct.lock_class*, %struct.lock_class** %6, align 8
  %51 = load %struct.lock_class*, %struct.lock_class** @lock_classes, align 8
  %52 = ptrtoint %struct.lock_class* %50 to i64
  %53 = ptrtoint %struct.lock_class* %51 to i64
  %54 = sub i64 %52, %53
  %55 = sdiv exact i64 %54, 4
  %56 = add nsw i64 %55, 1
  %57 = icmp eq i64 %49, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %45
  store i32 1, i32* %3, align 4
  br label %61

59:                                               ; preds = %45
  br label %60

60:                                               ; preds = %59, %13
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %58, %44, %34, %12
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.lock_class* @look_up_lock_class(%struct.lockdep_map*, i32) #1

declare dso_local i64 @DEBUG_LOCKS_WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
