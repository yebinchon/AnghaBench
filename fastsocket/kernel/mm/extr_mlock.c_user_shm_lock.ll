; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mlock.c_user_shm_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mlock.c_user_shm_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.user_struct = type { i64 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_6__* null, align 8
@RLIMIT_MEMLOCK = common dso_local global i64 0, align 8
@RLIM_INFINITY = common dso_local global i64 0, align 8
@shmlock_user_lock = common dso_local global i32 0, align 4
@CAP_IPC_LOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @user_shm_lock(i64 %0, %struct.user_struct* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.user_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store %struct.user_struct* %1, %struct.user_struct** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* @PAGE_SIZE, align 8
  %10 = add i64 %8, %9
  %11 = sub i64 %10, 1
  %12 = load i64, i64* @PAGE_SHIFT, align 8
  %13 = lshr i64 %11, %12
  store i64 %13, i64* %6, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = load i64, i64* @RLIMIT_MEMLOCK, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %5, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* @RLIM_INFINITY, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  br label %27

27:                                               ; preds = %26, %2
  %28 = load i64, i64* @PAGE_SHIFT, align 8
  %29 = load i64, i64* %5, align 8
  %30 = lshr i64 %29, %28
  store i64 %30, i64* %5, align 8
  %31 = call i32 @spin_lock(i32* @shmlock_user_lock)
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %47, label %34

34:                                               ; preds = %27
  %35 = load i64, i64* %6, align 8
  %36 = load %struct.user_struct*, %struct.user_struct** %4, align 8
  %37 = getelementptr inbounds %struct.user_struct, %struct.user_struct* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add i64 %35, %38
  %40 = load i64, i64* %5, align 8
  %41 = icmp ugt i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %34
  %43 = load i32, i32* @CAP_IPC_LOCK, align 4
  %44 = call i32 @capable(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  br label %55

47:                                               ; preds = %42, %34, %27
  %48 = load %struct.user_struct*, %struct.user_struct** %4, align 8
  %49 = call i32 @get_uid(%struct.user_struct* %48)
  %50 = load i64, i64* %6, align 8
  %51 = load %struct.user_struct*, %struct.user_struct** %4, align 8
  %52 = getelementptr inbounds %struct.user_struct, %struct.user_struct* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add i64 %53, %50
  store i64 %54, i64* %52, align 8
  store i32 1, i32* %7, align 4
  br label %55

55:                                               ; preds = %47, %46
  %56 = call i32 @spin_unlock(i32* @shmlock_user_lock)
  %57 = load i32, i32* %7, align 4
  ret i32 %57
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @get_uid(%struct.user_struct*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
