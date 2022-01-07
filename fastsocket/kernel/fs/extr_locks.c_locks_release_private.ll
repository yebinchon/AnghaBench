; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_locks.c_locks_release_private.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_locks.c_locks_release_private.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_lock = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (%struct.file_lock*)* }
%struct.TYPE_3__ = type { i32 (%struct.file_lock*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @locks_release_private(%struct.file_lock* %0) #0 {
  %2 = alloca %struct.file_lock*, align 8
  store %struct.file_lock* %0, %struct.file_lock** %2, align 8
  %3 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %4 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %3, i32 0, i32 1
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = icmp ne %struct.TYPE_3__* %5, null
  br i1 %6, label %7, label %25

7:                                                ; preds = %1
  %8 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %9 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32 (%struct.file_lock*)*, i32 (%struct.file_lock*)** %11, align 8
  %13 = icmp ne i32 (%struct.file_lock*)* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %7
  %15 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %16 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32 (%struct.file_lock*)*, i32 (%struct.file_lock*)** %18, align 8
  %20 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %21 = call i32 %19(%struct.file_lock* %20)
  br label %22

22:                                               ; preds = %14, %7
  %23 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %24 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %23, i32 0, i32 1
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %24, align 8
  br label %25

25:                                               ; preds = %22, %1
  %26 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %27 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = icmp ne %struct.TYPE_4__* %28, null
  br i1 %29, label %30, label %48

30:                                               ; preds = %25
  %31 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %32 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32 (%struct.file_lock*)*, i32 (%struct.file_lock*)** %34, align 8
  %36 = icmp ne i32 (%struct.file_lock*)* %35, null
  br i1 %36, label %37, label %45

37:                                               ; preds = %30
  %38 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %39 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32 (%struct.file_lock*)*, i32 (%struct.file_lock*)** %41, align 8
  %43 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %44 = call i32 %42(%struct.file_lock* %43)
  br label %45

45:                                               ; preds = %37, %30
  %46 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %47 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %46, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %47, align 8
  br label %48

48:                                               ; preds = %45, %25
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
