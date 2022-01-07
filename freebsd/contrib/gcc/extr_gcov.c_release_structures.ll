; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcov.c_release_structures.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcov.c_release_structures.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_12__*, %struct.TYPE_12__* }
%struct.TYPE_10__ = type { %struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_11__* }

@bbg_file_name = common dso_local global %struct.TYPE_12__* null, align 8
@da_file_name = common dso_local global %struct.TYPE_12__* null, align 8
@bbg_file_time = common dso_local global i64 0, align 8
@bbg_stamp = common dso_local global i64 0, align 8
@sources = common dso_local global %struct.TYPE_10__* null, align 8
@functions = common dso_local global %struct.TYPE_11__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @release_structures to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @release_structures() #0 {
  %1 = alloca %struct.TYPE_11__*, align 8
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** @bbg_file_name, align 8
  %8 = call i32 @free(%struct.TYPE_12__* %7)
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** @da_file_name, align 8
  %10 = call i32 @free(%struct.TYPE_12__* %9)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** @bbg_file_name, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** @da_file_name, align 8
  store i64 0, i64* @bbg_file_time, align 8
  store i64 0, i64* @bbg_stamp, align 8
  br label %11

11:                                               ; preds = %14, %0
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** @sources, align 8
  store %struct.TYPE_10__* %12, %struct.TYPE_10__** %2, align 8
  %13 = icmp ne %struct.TYPE_10__* %12, null
  br i1 %13, label %14, label %26

14:                                               ; preds = %11
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** @sources, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %21 = call i32 @free(%struct.TYPE_12__* %20)
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %25 = call i32 @free(%struct.TYPE_12__* %24)
  br label %11

26:                                               ; preds = %11
  br label %27

27:                                               ; preds = %63, %26
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** @functions, align 8
  store %struct.TYPE_11__* %28, %struct.TYPE_11__** %1, align 8
  %29 = icmp ne %struct.TYPE_11__* %28, null
  br i1 %29, label %30, label %72

30:                                               ; preds = %27
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 3
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  store %struct.TYPE_11__* %33, %struct.TYPE_11__** @functions, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %3, align 4
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %38, align 8
  store %struct.TYPE_12__* %39, %struct.TYPE_12__** %4, align 8
  br label %40

40:                                               ; preds = %60, %30
  %41 = load i32, i32* %3, align 4
  %42 = add i32 %41, -1
  store i32 %42, i32* %3, align 4
  %43 = icmp ne i32 %41, 0
  br i1 %43, label %44, label %63

44:                                               ; preds = %40
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %46, align 8
  store %struct.TYPE_12__* %47, %struct.TYPE_12__** %5, align 8
  br label %48

48:                                               ; preds = %57, %44
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %50 = icmp ne %struct.TYPE_12__* %49, null
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %53, align 8
  store %struct.TYPE_12__* %54, %struct.TYPE_12__** %6, align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %56 = call i32 @free(%struct.TYPE_12__* %55)
  br label %57

57:                                               ; preds = %51
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_12__* %58, %struct.TYPE_12__** %5, align 8
  br label %48

59:                                               ; preds = %48
  br label %60

60:                                               ; preds = %59
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 1
  store %struct.TYPE_12__* %62, %struct.TYPE_12__** %4, align 8
  br label %40

63:                                               ; preds = %40
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %65, align 8
  %67 = call i32 @free(%struct.TYPE_12__* %66)
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %69, align 8
  %71 = call i32 @free(%struct.TYPE_12__* %70)
  br label %27

72:                                               ; preds = %27
  ret void
}

declare dso_local i32 @free(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
