; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gimplify.c_omp_is_private.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gimplify.c_omp_is_private.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gimplify_omp_ctx = type { %struct.gimplify_omp_ctx*, i64, i64, i32 }
%struct.TYPE_3__ = type { i32 }

@GOVD_SHARED = common dso_local global i32 0, align 4
@gimplify_omp_ctxp = common dso_local global %struct.gimplify_omp_ctx* null, align 8
@.str = private unnamed_addr constant [41 x i8] c"iteration variable %qs should be private\00", align 1
@GOVD_PRIVATE = common dso_local global i32 0, align 4
@GOVD_EXPLICIT = common dso_local global i32 0, align 4
@GOVD_FIRSTPRIVATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"iteration variable %qs should not be firstprivate\00", align 1
@GOVD_REDUCTION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"iteration variable %qs should not be reduction\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gimplify_omp_ctx*, i64)* @omp_is_private to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omp_is_private(%struct.gimplify_omp_ctx* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gimplify_omp_ctx*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  store %struct.gimplify_omp_ctx* %0, %struct.gimplify_omp_ctx** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.gimplify_omp_ctx*, %struct.gimplify_omp_ctx** %4, align 8
  %8 = getelementptr inbounds %struct.gimplify_omp_ctx, %struct.gimplify_omp_ctx* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = load i64, i64* %5, align 8
  %11 = trunc i64 %10 to i32
  %12 = call %struct.TYPE_3__* @splay_tree_lookup(i32 %9, i32 %11)
  store %struct.TYPE_3__* %12, %struct.TYPE_3__** %6, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %14 = icmp ne %struct.TYPE_3__* %13, null
  br i1 %14, label %15, label %85

15:                                               ; preds = %2
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @GOVD_SHARED, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %15
  %23 = load %struct.gimplify_omp_ctx*, %struct.gimplify_omp_ctx** %4, align 8
  %24 = load %struct.gimplify_omp_ctx*, %struct.gimplify_omp_ctx** @gimplify_omp_ctxp, align 8
  %25 = icmp eq %struct.gimplify_omp_ctx* %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @DECL_NAME(i64 %27)
  %29 = call i32 @IDENTIFIER_POINTER(i32 %28)
  %30 = call i32 @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @GOVD_PRIVATE, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  store i32 1, i32* %3, align 4
  br label %108

34:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %108

35:                                               ; preds = %15
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @GOVD_EXPLICIT, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %83

42:                                               ; preds = %35
  %43 = load %struct.gimplify_omp_ctx*, %struct.gimplify_omp_ctx** %4, align 8
  %44 = load %struct.gimplify_omp_ctx*, %struct.gimplify_omp_ctx** @gimplify_omp_ctxp, align 8
  %45 = icmp eq %struct.gimplify_omp_ctx* %43, %44
  br i1 %45, label %57, label %46

46:                                               ; preds = %42
  %47 = load %struct.gimplify_omp_ctx*, %struct.gimplify_omp_ctx** %4, align 8
  %48 = getelementptr inbounds %struct.gimplify_omp_ctx, %struct.gimplify_omp_ctx* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %83

51:                                               ; preds = %46
  %52 = load %struct.gimplify_omp_ctx*, %struct.gimplify_omp_ctx** @gimplify_omp_ctxp, align 8
  %53 = getelementptr inbounds %struct.gimplify_omp_ctx, %struct.gimplify_omp_ctx* %52, i32 0, i32 0
  %54 = load %struct.gimplify_omp_ctx*, %struct.gimplify_omp_ctx** %53, align 8
  %55 = load %struct.gimplify_omp_ctx*, %struct.gimplify_omp_ctx** %4, align 8
  %56 = icmp eq %struct.gimplify_omp_ctx* %54, %55
  br i1 %56, label %57, label %83

57:                                               ; preds = %51, %42
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @GOVD_FIRSTPRIVATE, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %57
  %65 = load i64, i64* %5, align 8
  %66 = call i32 @DECL_NAME(i64 %65)
  %67 = call i32 @IDENTIFIER_POINTER(i32 %66)
  %68 = call i32 @error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  br label %82

69:                                               ; preds = %57
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @GOVD_REDUCTION, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %69
  %77 = load i64, i64* %5, align 8
  %78 = call i32 @DECL_NAME(i64 %77)
  %79 = call i32 @IDENTIFIER_POINTER(i32 %78)
  %80 = call i32 @error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %79)
  br label %81

81:                                               ; preds = %76, %69
  br label %82

82:                                               ; preds = %81, %64
  br label %83

83:                                               ; preds = %82, %51, %46, %35
  br label %84

84:                                               ; preds = %83
  store i32 1, i32* %3, align 4
  br label %108

85:                                               ; preds = %2
  %86 = load %struct.gimplify_omp_ctx*, %struct.gimplify_omp_ctx** %4, align 8
  %87 = getelementptr inbounds %struct.gimplify_omp_ctx, %struct.gimplify_omp_ctx* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  store i32 0, i32* %3, align 4
  br label %108

91:                                               ; preds = %85
  %92 = load %struct.gimplify_omp_ctx*, %struct.gimplify_omp_ctx** %4, align 8
  %93 = getelementptr inbounds %struct.gimplify_omp_ctx, %struct.gimplify_omp_ctx* %92, i32 0, i32 0
  %94 = load %struct.gimplify_omp_ctx*, %struct.gimplify_omp_ctx** %93, align 8
  %95 = icmp ne %struct.gimplify_omp_ctx* %94, null
  br i1 %95, label %96, label %102

96:                                               ; preds = %91
  %97 = load %struct.gimplify_omp_ctx*, %struct.gimplify_omp_ctx** %4, align 8
  %98 = getelementptr inbounds %struct.gimplify_omp_ctx, %struct.gimplify_omp_ctx* %97, i32 0, i32 0
  %99 = load %struct.gimplify_omp_ctx*, %struct.gimplify_omp_ctx** %98, align 8
  %100 = load i64, i64* %5, align 8
  %101 = call i32 @omp_is_private(%struct.gimplify_omp_ctx* %99, i64 %100)
  store i32 %101, i32* %3, align 4
  br label %108

102:                                              ; preds = %91
  %103 = load i64, i64* %5, align 8
  %104 = call i32 @is_global_var(i64 %103)
  %105 = icmp ne i32 %104, 0
  %106 = xor i1 %105, true
  %107 = zext i1 %106 to i32
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %102, %96, %90, %84, %34, %26
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local %struct.TYPE_3__* @splay_tree_lookup(i32, i32) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @IDENTIFIER_POINTER(i32) #1

declare dso_local i32 @DECL_NAME(i64) #1

declare dso_local i32 @is_global_var(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
