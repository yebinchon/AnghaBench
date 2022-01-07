; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_files.c_search_path_head.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_files.c_search_path_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpp_dir = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__*, %struct.cpp_dir*, i64, %struct.cpp_dir*, %struct.TYPE_12__*, %struct.cpp_dir }
%struct.TYPE_10__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.cpp_dir* }

@IT_INCLUDE_NEXT = common dso_local global i32 0, align 4
@IT_CMDLINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"./\00", align 1
@CPP_DL_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"no include path in which to search for %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cpp_dir* (%struct.TYPE_11__*, i8*, i32, i32)* @search_path_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cpp_dir* @search_path_head(%struct.TYPE_11__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.cpp_dir*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cpp_dir*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = call i64 @IS_ABSOLUTE_PATH(i8* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 5
  store %struct.cpp_dir* %17, %struct.cpp_dir** %5, align 8
  br label %103

18:                                               ; preds = %4
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %22 = icmp eq %struct.TYPE_10__* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 4
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  br label %33

27:                                               ; preds = %18
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %31, align 8
  br label %33

33:                                               ; preds = %27, %23
  %34 = phi %struct.TYPE_12__* [ %26, %23 ], [ %32, %27 ]
  store %struct.TYPE_12__* %34, %struct.TYPE_12__** %11, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @IT_INCLUDE_NEXT, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %33
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = icmp ne %struct.TYPE_9__* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load %struct.cpp_dir*, %struct.cpp_dir** %47, align 8
  store %struct.cpp_dir* %48, %struct.cpp_dir** %10, align 8
  br label %93

49:                                               ; preds = %38, %33
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 3
  %55 = load %struct.cpp_dir*, %struct.cpp_dir** %54, align 8
  store %struct.cpp_dir* %55, %struct.cpp_dir** %10, align 8
  br label %92

56:                                               ; preds = %49
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @IT_CMDLINE, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %62 = call %struct.cpp_dir* @make_cpp_dir(%struct.TYPE_11__* %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.cpp_dir* %62, %struct.cpp_dir** %5, align 8
  br label %103

63:                                               ; preds = %56
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 1
  %71 = load %struct.cpp_dir*, %struct.cpp_dir** %70, align 8
  store %struct.cpp_dir* %71, %struct.cpp_dir** %10, align 8
  br label %90

72:                                               ; preds = %63
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %75 = call i8* @dir_name_of_file(%struct.TYPE_12__* %74)
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  %79 = icmp ne %struct.TYPE_10__* %78, null
  br i1 %79, label %80, label %86

80:                                               ; preds = %72
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  br label %87

86:                                               ; preds = %72
  br label %87

87:                                               ; preds = %86, %80
  %88 = phi i32 [ %85, %80 ], [ 0, %86 ]
  %89 = call %struct.cpp_dir* @make_cpp_dir(%struct.TYPE_11__* %73, i8* %75, i32 %88)
  store %struct.cpp_dir* %89, %struct.cpp_dir** %5, align 8
  br label %103

90:                                               ; preds = %68
  br label %91

91:                                               ; preds = %90
  br label %92

92:                                               ; preds = %91, %52
  br label %93

93:                                               ; preds = %92, %43
  %94 = load %struct.cpp_dir*, %struct.cpp_dir** %10, align 8
  %95 = icmp eq %struct.cpp_dir* %94, null
  br i1 %95, label %96, label %101

96:                                               ; preds = %93
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %98 = load i32, i32* @CPP_DL_ERROR, align 4
  %99 = load i8*, i8** %7, align 8
  %100 = call i32 @cpp_error(%struct.TYPE_11__* %97, i32 %98, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %99)
  br label %101

101:                                              ; preds = %96, %93
  %102 = load %struct.cpp_dir*, %struct.cpp_dir** %10, align 8
  store %struct.cpp_dir* %102, %struct.cpp_dir** %5, align 8
  br label %103

103:                                              ; preds = %101, %87, %60, %15
  %104 = load %struct.cpp_dir*, %struct.cpp_dir** %5, align 8
  ret %struct.cpp_dir* %104
}

declare dso_local i64 @IS_ABSOLUTE_PATH(i8*) #1

declare dso_local %struct.cpp_dir* @make_cpp_dir(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local i8* @dir_name_of_file(%struct.TYPE_12__*) #1

declare dso_local i32 @cpp_error(%struct.TYPE_11__*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
