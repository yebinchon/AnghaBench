; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_locks.c_flock_locks_conflict.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_locks.c_flock_locks_conflict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_lock = type { i64, i32 }

@LOCK_MAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file_lock*, %struct.file_lock*)* @flock_locks_conflict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flock_locks_conflict(%struct.file_lock* %0, %struct.file_lock* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file_lock*, align 8
  %5 = alloca %struct.file_lock*, align 8
  store %struct.file_lock* %0, %struct.file_lock** %4, align 8
  store %struct.file_lock* %1, %struct.file_lock** %5, align 8
  %6 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %7 = call i32 @IS_FLOCK(%struct.file_lock* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %11 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %14 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %12, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %9, %2
  store i32 0, i32* %3, align 4
  br label %37

18:                                               ; preds = %9
  %19 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %20 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @LOCK_MAND, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %18
  %26 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %27 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @LOCK_MAND, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25, %18
  store i32 0, i32* %3, align 4
  br label %37

33:                                               ; preds = %25
  %34 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %35 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %36 = call i32 @locks_conflict(%struct.file_lock* %34, %struct.file_lock* %35)
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %33, %32, %17
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @IS_FLOCK(%struct.file_lock*) #1

declare dso_local i32 @locks_conflict(%struct.file_lock*, %struct.file_lock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
