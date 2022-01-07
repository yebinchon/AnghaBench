; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgloop.c_find_common_loop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgloop.c_find_common_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { i64, %struct.loop*, %struct.loop** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.loop* @find_common_loop(%struct.loop* %0, %struct.loop* %1) #0 {
  %3 = alloca %struct.loop*, align 8
  %4 = alloca %struct.loop*, align 8
  %5 = alloca %struct.loop*, align 8
  store %struct.loop* %0, %struct.loop** %4, align 8
  store %struct.loop* %1, %struct.loop** %5, align 8
  %6 = load %struct.loop*, %struct.loop** %4, align 8
  %7 = icmp ne %struct.loop* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = load %struct.loop*, %struct.loop** %5, align 8
  store %struct.loop* %9, %struct.loop** %3, align 8
  br label %64

10:                                               ; preds = %2
  %11 = load %struct.loop*, %struct.loop** %5, align 8
  %12 = icmp ne %struct.loop* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = load %struct.loop*, %struct.loop** %4, align 8
  store %struct.loop* %14, %struct.loop** %3, align 8
  br label %64

15:                                               ; preds = %10
  %16 = load %struct.loop*, %struct.loop** %4, align 8
  %17 = getelementptr inbounds %struct.loop, %struct.loop* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.loop*, %struct.loop** %5, align 8
  %20 = getelementptr inbounds %struct.loop, %struct.loop* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ult i64 %18, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %15
  %24 = load %struct.loop*, %struct.loop** %5, align 8
  %25 = getelementptr inbounds %struct.loop, %struct.loop* %24, i32 0, i32 2
  %26 = load %struct.loop**, %struct.loop*** %25, align 8
  %27 = load %struct.loop*, %struct.loop** %4, align 8
  %28 = getelementptr inbounds %struct.loop, %struct.loop* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.loop*, %struct.loop** %26, i64 %29
  %31 = load %struct.loop*, %struct.loop** %30, align 8
  store %struct.loop* %31, %struct.loop** %5, align 8
  br label %50

32:                                               ; preds = %15
  %33 = load %struct.loop*, %struct.loop** %4, align 8
  %34 = getelementptr inbounds %struct.loop, %struct.loop* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.loop*, %struct.loop** %5, align 8
  %37 = getelementptr inbounds %struct.loop, %struct.loop* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ugt i64 %35, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %32
  %41 = load %struct.loop*, %struct.loop** %4, align 8
  %42 = getelementptr inbounds %struct.loop, %struct.loop* %41, i32 0, i32 2
  %43 = load %struct.loop**, %struct.loop*** %42, align 8
  %44 = load %struct.loop*, %struct.loop** %5, align 8
  %45 = getelementptr inbounds %struct.loop, %struct.loop* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.loop*, %struct.loop** %43, i64 %46
  %48 = load %struct.loop*, %struct.loop** %47, align 8
  store %struct.loop* %48, %struct.loop** %4, align 8
  br label %49

49:                                               ; preds = %40, %32
  br label %50

50:                                               ; preds = %49, %23
  br label %51

51:                                               ; preds = %55, %50
  %52 = load %struct.loop*, %struct.loop** %4, align 8
  %53 = load %struct.loop*, %struct.loop** %5, align 8
  %54 = icmp ne %struct.loop* %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %51
  %56 = load %struct.loop*, %struct.loop** %4, align 8
  %57 = getelementptr inbounds %struct.loop, %struct.loop* %56, i32 0, i32 1
  %58 = load %struct.loop*, %struct.loop** %57, align 8
  store %struct.loop* %58, %struct.loop** %4, align 8
  %59 = load %struct.loop*, %struct.loop** %5, align 8
  %60 = getelementptr inbounds %struct.loop, %struct.loop* %59, i32 0, i32 1
  %61 = load %struct.loop*, %struct.loop** %60, align 8
  store %struct.loop* %61, %struct.loop** %5, align 8
  br label %51

62:                                               ; preds = %51
  %63 = load %struct.loop*, %struct.loop** %4, align 8
  store %struct.loop* %63, %struct.loop** %3, align 8
  br label %64

64:                                               ; preds = %62, %13, %8
  %65 = load %struct.loop*, %struct.loop** %3, align 8
  ret %struct.loop* %65
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
