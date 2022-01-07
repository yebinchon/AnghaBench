; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_locks.c_locks_copy_private.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_locks.c_locks_copy_private.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_lock = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (%struct.file_lock*, %struct.file_lock*)* }
%struct.TYPE_3__ = type { i32 (%struct.file_lock*, %struct.file_lock*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.file_lock*, %struct.file_lock*)* @locks_copy_private to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @locks_copy_private(%struct.file_lock* %0, %struct.file_lock* %1) #0 {
  %3 = alloca %struct.file_lock*, align 8
  %4 = alloca %struct.file_lock*, align 8
  store %struct.file_lock* %0, %struct.file_lock** %3, align 8
  store %struct.file_lock* %1, %struct.file_lock** %4, align 8
  %5 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %6 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %5, i32 0, i32 1
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = icmp ne %struct.TYPE_3__* %7, null
  br i1 %8, label %9, label %31

9:                                                ; preds = %2
  %10 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %11 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32 (%struct.file_lock*, %struct.file_lock*)*, i32 (%struct.file_lock*, %struct.file_lock*)** %13, align 8
  %15 = icmp ne i32 (%struct.file_lock*, %struct.file_lock*)* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %9
  %17 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %18 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32 (%struct.file_lock*, %struct.file_lock*)*, i32 (%struct.file_lock*, %struct.file_lock*)** %20, align 8
  %22 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %23 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %24 = call i32 %21(%struct.file_lock* %22, %struct.file_lock* %23)
  br label %25

25:                                               ; preds = %16, %9
  %26 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %27 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %30 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %29, i32 0, i32 1
  store %struct.TYPE_3__* %28, %struct.TYPE_3__** %30, align 8
  br label %31

31:                                               ; preds = %25, %2
  %32 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %33 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = icmp ne %struct.TYPE_4__* %34, null
  br i1 %35, label %36, label %58

36:                                               ; preds = %31
  %37 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %38 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32 (%struct.file_lock*, %struct.file_lock*)*, i32 (%struct.file_lock*, %struct.file_lock*)** %40, align 8
  %42 = icmp ne i32 (%struct.file_lock*, %struct.file_lock*)* %41, null
  br i1 %42, label %43, label %52

43:                                               ; preds = %36
  %44 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %45 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32 (%struct.file_lock*, %struct.file_lock*)*, i32 (%struct.file_lock*, %struct.file_lock*)** %47, align 8
  %49 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %50 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %51 = call i32 %48(%struct.file_lock* %49, %struct.file_lock* %50)
  br label %52

52:                                               ; preds = %43, %36
  %53 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %54 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %57 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %56, i32 0, i32 0
  store %struct.TYPE_4__* %55, %struct.TYPE_4__** %57, align 8
  br label %58

58:                                               ; preds = %52, %31
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
