; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/ztest/extr_ztest.c_vdev_walk_tree.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/ztest/extr_ztest.c_vdev_walk_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_10__**, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @vdev_walk_tree(%struct.TYPE_10__* %0, %struct.TYPE_10__* (%struct.TYPE_10__*, i8*)* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_10__* (%struct.TYPE_10__*, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_10__* (%struct.TYPE_10__*, i8*)* %1, %struct.TYPE_10__* (%struct.TYPE_10__*, i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %3
  %17 = load %struct.TYPE_10__* (%struct.TYPE_10__*, i8*)*, %struct.TYPE_10__* (%struct.TYPE_10__*, i8*)** %6, align 8
  %18 = icmp eq %struct.TYPE_10__* (%struct.TYPE_10__*, i8*)* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_10__* %20, %struct.TYPE_10__** %4, align 8
  br label %52

21:                                               ; preds = %16
  %22 = load %struct.TYPE_10__* (%struct.TYPE_10__*, i8*)*, %struct.TYPE_10__* (%struct.TYPE_10__*, i8*)** %6, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call %struct.TYPE_10__* %22(%struct.TYPE_10__* %23, i8* %24)
  store %struct.TYPE_10__* %25, %struct.TYPE_10__** %4, align 8
  br label %52

26:                                               ; preds = %3
  store i64 0, i64* %8, align 8
  br label %27

27:                                               ; preds = %48, %26
  %28 = load i64, i64* %8, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ult i64 %28, %31
  br i1 %32, label %33, label %51

33:                                               ; preds = %27
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %35, align 8
  %37 = load i64, i64* %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %36, i64 %37
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  store %struct.TYPE_10__* %39, %struct.TYPE_10__** %9, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %41 = load %struct.TYPE_10__* (%struct.TYPE_10__*, i8*)*, %struct.TYPE_10__* (%struct.TYPE_10__*, i8*)** %6, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = call %struct.TYPE_10__* @vdev_walk_tree(%struct.TYPE_10__* %40, %struct.TYPE_10__* (%struct.TYPE_10__*, i8*)* %41, i8* %42)
  store %struct.TYPE_10__* %43, %struct.TYPE_10__** %9, align 8
  %44 = icmp ne %struct.TYPE_10__* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %33
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  store %struct.TYPE_10__* %46, %struct.TYPE_10__** %4, align 8
  br label %52

47:                                               ; preds = %33
  br label %48

48:                                               ; preds = %47
  %49 = load i64, i64* %8, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %8, align 8
  br label %27

51:                                               ; preds = %27
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %4, align 8
  br label %52

52:                                               ; preds = %51, %45, %21, %19
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  ret %struct.TYPE_10__* %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
