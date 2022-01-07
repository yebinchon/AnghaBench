; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_locks.c_posix_same_owner.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_locks.c_posix_same_owner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_lock = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.file_lock*, %struct.file_lock*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file_lock*, %struct.file_lock*)* @posix_same_owner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @posix_same_owner(%struct.file_lock* %0, %struct.file_lock* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file_lock*, align 8
  %5 = alloca %struct.file_lock*, align 8
  store %struct.file_lock* %0, %struct.file_lock** %4, align 8
  store %struct.file_lock* %1, %struct.file_lock** %5, align 8
  %6 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %7 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = icmp ne %struct.TYPE_2__* %8, null
  br i1 %9, label %10, label %38

10:                                               ; preds = %2
  %11 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %12 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64 (%struct.file_lock*, %struct.file_lock*)*, i64 (%struct.file_lock*, %struct.file_lock*)** %14, align 8
  %16 = icmp ne i64 (%struct.file_lock*, %struct.file_lock*)* %15, null
  br i1 %16, label %17, label %38

17:                                               ; preds = %10
  %18 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %19 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %22 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = icmp eq %struct.TYPE_2__* %20, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %17
  %26 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %27 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64 (%struct.file_lock*, %struct.file_lock*)*, i64 (%struct.file_lock*, %struct.file_lock*)** %29, align 8
  %31 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %32 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %33 = call i64 %30(%struct.file_lock* %31, %struct.file_lock* %32)
  %34 = icmp ne i64 %33, 0
  br label %35

35:                                               ; preds = %25, %17
  %36 = phi i1 [ false, %17 ], [ %34, %25 ]
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %3, align 4
  br label %47

38:                                               ; preds = %10, %2
  %39 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %40 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %43 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %41, %44
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %38, %35
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
