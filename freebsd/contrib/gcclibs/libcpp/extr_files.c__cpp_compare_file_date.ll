; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_files.c__cpp_compare_file_date.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_files.c__cpp_compare_file_date.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_11__, i64 }
%struct.TYPE_11__ = type { i64 }
%struct.cpp_dir = type { i32 }

@IT_INCLUDE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_cpp_compare_file_date(%struct.TYPE_15__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.cpp_dir*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @IT_INCLUDE, align 4
  %14 = call %struct.cpp_dir* @search_path_head(%struct.TYPE_15__* %10, i8* %11, i32 %12, i32 %13)
  store %struct.cpp_dir* %14, %struct.cpp_dir** %9, align 8
  %15 = load %struct.cpp_dir*, %struct.cpp_dir** %9, align 8
  %16 = icmp ne %struct.cpp_dir* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %56

18:                                               ; preds = %3
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load %struct.cpp_dir*, %struct.cpp_dir** %9, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call %struct.TYPE_16__* @_cpp_find_file(%struct.TYPE_15__* %19, i8* %20, %struct.cpp_dir* %21, i32 0, i32 %22)
  store %struct.TYPE_16__* %23, %struct.TYPE_16__** %8, align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  store i32 -1, i32* %4, align 4
  br label %56

29:                                               ; preds = %18
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, -1
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @close(i32 %37)
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  store i32 -1, i32* %40, align 8
  br label %41

41:                                               ; preds = %34, %29
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp sgt i64 %45, %53
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %41, %28, %17
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local %struct.cpp_dir* @search_path_head(%struct.TYPE_15__*, i8*, i32, i32) #1

declare dso_local %struct.TYPE_16__* @_cpp_find_file(%struct.TYPE_15__*, i8*, %struct.cpp_dir*, i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
