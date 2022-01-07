; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_lockdep.c_lockdep_init_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_lockdep.c_lockdep_init_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lockdep_map = type { i8*, %struct.lock_class_key*, i32, i32* }
%struct.lock_class_key = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"BUG: key %p not in .data!\0A\00", align 1
@debug_locks = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lockdep_init_map(%struct.lockdep_map* %0, i8* %1, %struct.lock_class_key* %2, i32 %3) #0 {
  %5 = alloca %struct.lockdep_map*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.lock_class_key*, align 8
  %8 = alloca i32, align 4
  store %struct.lockdep_map* %0, %struct.lockdep_map** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.lock_class_key* %2, %struct.lock_class_key** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.lockdep_map*, %struct.lockdep_map** %5, align 8
  %10 = getelementptr inbounds %struct.lockdep_map, %struct.lockdep_map* %9, i32 0, i32 3
  store i32* null, i32** %10, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = icmp ne i8* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @DEBUG_LOCKS_WARN_ON(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load %struct.lockdep_map*, %struct.lockdep_map** %5, align 8
  %19 = getelementptr inbounds %struct.lockdep_map, %struct.lockdep_map* %18, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %19, align 8
  br label %57

20:                                               ; preds = %4
  %21 = load i8*, i8** %6, align 8
  %22 = load %struct.lockdep_map*, %struct.lockdep_map** %5, align 8
  %23 = getelementptr inbounds %struct.lockdep_map, %struct.lockdep_map* %22, i32 0, i32 0
  store i8* %21, i8** %23, align 8
  %24 = load %struct.lock_class_key*, %struct.lock_class_key** %7, align 8
  %25 = icmp ne %struct.lock_class_key* %24, null
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i64 @DEBUG_LOCKS_WARN_ON(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  br label %57

31:                                               ; preds = %20
  %32 = load %struct.lock_class_key*, %struct.lock_class_key** %7, align 8
  %33 = call i32 @static_obj(%struct.lock_class_key* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load %struct.lock_class_key*, %struct.lock_class_key** %7, align 8
  %37 = call i32 @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), %struct.lock_class_key* %36)
  %38 = call i64 @DEBUG_LOCKS_WARN_ON(i32 1)
  br label %57

39:                                               ; preds = %31
  %40 = load %struct.lock_class_key*, %struct.lock_class_key** %7, align 8
  %41 = load %struct.lockdep_map*, %struct.lockdep_map** %5, align 8
  %42 = getelementptr inbounds %struct.lockdep_map, %struct.lockdep_map* %41, i32 0, i32 1
  store %struct.lock_class_key* %40, %struct.lock_class_key** %42, align 8
  %43 = load i32, i32* @debug_locks, align 4
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  br label %57

50:                                               ; preds = %39
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load %struct.lockdep_map*, %struct.lockdep_map** %5, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @register_lock_class(%struct.lockdep_map* %54, i32 %55, i32 1)
  br label %57

57:                                               ; preds = %17, %30, %35, %49, %53, %50
  ret void
}

declare dso_local i64 @DEBUG_LOCKS_WARN_ON(i32) #1

declare dso_local i32 @static_obj(%struct.lock_class_key*) #1

declare dso_local i32 @printk(i8*, %struct.lock_class_key*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @register_lock_class(%struct.lockdep_map*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
