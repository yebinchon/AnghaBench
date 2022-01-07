; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_locks.c_lease_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_locks.c_lease_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.file = type { i32 }
%struct.file_lock = type { i32*, i32*, i32, i64, i32, %struct.file*, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@FL_LEASE = common dso_local global i32 0, align 4
@OFFSET_MAX = common dso_local global i32 0, align 4
@lease_manager_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, %struct.file_lock*)* @lease_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lease_init(%struct.file* %0, i32 %1, %struct.file_lock* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.file_lock*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.file_lock* %2, %struct.file_lock** %7, align 8
  %8 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %9 = load i32, i32* %6, align 4
  %10 = call i64 @assign_type(%struct.file_lock* %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %41

15:                                               ; preds = %3
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %20 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %19, i32 0, i32 7
  store i32 %18, i32* %20, align 4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %25 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %24, i32 0, i32 6
  store i32 %23, i32* %25, align 8
  %26 = load %struct.file*, %struct.file** %5, align 8
  %27 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %28 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %27, i32 0, i32 5
  store %struct.file* %26, %struct.file** %28, align 8
  %29 = load i32, i32* @FL_LEASE, align 4
  %30 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %31 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 8
  %32 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %33 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %32, i32 0, i32 3
  store i64 0, i64* %33, align 8
  %34 = load i32, i32* @OFFSET_MAX, align 4
  %35 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %36 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %38 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %37, i32 0, i32 1
  store i32* null, i32** %38, align 8
  %39 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %40 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %39, i32 0, i32 0
  store i32* @lease_manager_ops, i32** %40, align 8
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %15, %12
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i64 @assign_type(%struct.file_lock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
