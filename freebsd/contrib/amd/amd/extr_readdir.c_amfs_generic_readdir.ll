; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_readdir.c_amfs_generic_readdir.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_readdir.c_amfs_generic_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_13__ = type { i64 }

@.str = private unnamed_addr constant [15 x i8] c"fullybrowsable\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"browsable\00", align 1
@nfs_dispatcher = common dso_local global i64 0, align 8
@nfs_program_2 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amfs_generic_readdir(%struct.TYPE_14__* %0, i64 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_13__, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %20 = icmp ne %struct.TYPE_11__* %19, null
  br i1 %20, label %21, label %48

21:                                               ; preds = %5
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %21
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  store i64 %37, i64* %38, align 8
  %39 = call i64 @amu_hasmntopt(%struct.TYPE_13__* %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %30
  store i32 2, i32* %12, align 4
  br label %47

42:                                               ; preds = %30
  %43 = call i64 @amu_hasmntopt(%struct.TYPE_13__* %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 1, i32* %12, align 4
  br label %46

46:                                               ; preds = %45, %42
  br label %47

47:                                               ; preds = %46, %41
  br label %48

48:                                               ; preds = %47, %21, %5
  %49 = load i32, i32* %12, align 4
  %50 = icmp eq i32 %49, 2
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %13, align 4
  %52 = load i64, i64* @nfs_dispatcher, align 8
  %53 = load i64, i64* @nfs_program_2, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %73

55:                                               ; preds = %48
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %55
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %60 = load i64, i64* %8, align 8
  %61 = load i64, i64* %9, align 8
  %62 = load i64, i64* %10, align 8
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %13, align 4
  %65 = call i32 @amfs_readdir_browsable(%struct.TYPE_14__* %59, i64 %60, i64 %61, i64 %62, i32 %63, i32 %64)
  store i32 %65, i32* %6, align 4
  br label %93

66:                                               ; preds = %55
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %68 = load i64, i64* %8, align 8
  %69 = load i64, i64* %9, align 8
  %70 = load i64, i64* %10, align 8
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @amfs_readdir(%struct.TYPE_14__* %67, i64 %68, i64 %69, i64 %70, i32 %71)
  store i32 %72, i32* %6, align 4
  br label %93

73:                                               ; preds = %48
  %74 = load i32, i32* %12, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %73
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %78 = load i64, i64* %8, align 8
  %79 = trunc i64 %78 to i32
  %80 = load i64, i64* %9, align 8
  %81 = load i64, i64* %10, align 8
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %13, align 4
  %84 = call i32 @amfs_readdir3_browsable(%struct.TYPE_14__* %77, i32 %79, i64 %80, i64 %81, i32 %82, i32 %83)
  store i32 %84, i32* %6, align 4
  br label %93

85:                                               ; preds = %73
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %87 = load i64, i64* %8, align 8
  %88 = trunc i64 %87 to i32
  %89 = load i64, i64* %9, align 8
  %90 = load i64, i64* %10, align 8
  %91 = load i32, i32* %11, align 4
  %92 = call i32 @amfs_readdir3(%struct.TYPE_14__* %86, i32 %88, i64 %89, i64 %90, i32 %91)
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %85, %76, %66, %58
  %94 = load i32, i32* %6, align 4
  ret i32 %94
}

declare dso_local i64 @amu_hasmntopt(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @amfs_readdir_browsable(%struct.TYPE_14__*, i64, i64, i64, i32, i32) #1

declare dso_local i32 @amfs_readdir(%struct.TYPE_14__*, i64, i64, i64, i32) #1

declare dso_local i32 @amfs_readdir3_browsable(%struct.TYPE_14__*, i32, i64, i64, i32, i32) #1

declare dso_local i32 @amfs_readdir3(%struct.TYPE_14__*, i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
