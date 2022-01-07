; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr-util/hooks/extr_apr_hooks.c_sort_hook.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr-util/hooks/extr_apr_hooks.c_sort_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i64 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_15__ = type { i8* }

@apr_hook_global_pool = common dso_local global i32 0, align 4
@apr_hook_debug_enabled = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"Sorting %s:\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_14__* (%struct.TYPE_14__*, i8*)* @sort_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_14__* @sort_hook(%struct.TYPE_14__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i32, i32* @apr_hook_global_pool, align 4
  %11 = call i32 @apr_pool_create(i32** %5, i32 %10)
  %12 = load i32*, i32** %5, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.TYPE_15__*
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.TYPE_16__* @prepare(i32* %12, %struct.TYPE_15__* %16, i32 %19)
  store %struct.TYPE_16__* %20, %struct.TYPE_16__** %6, align 8
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.TYPE_16__* @tsort(%struct.TYPE_16__* %21, i32 %24)
  store %struct.TYPE_16__* %25, %struct.TYPE_16__** %6, align 8
  %26 = load i32, i32* @apr_hook_global_pool, align 4
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call %struct.TYPE_14__* @apr_array_make(i32 %26, i32 %29, i32 8)
  store %struct.TYPE_14__* %30, %struct.TYPE_14__** %7, align 8
  %31 = load i64, i64* @apr_hook_debug_enabled, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %2
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %34)
  br label %36

36:                                               ; preds = %33, %2
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %63, %36
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %39 = icmp ne %struct.TYPE_16__* %38, null
  br i1 %39, label %40, label %69

40:                                               ; preds = %37
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %49 = call %struct.TYPE_15__* @apr_array_push(%struct.TYPE_14__* %48)
  store %struct.TYPE_15__* %49, %struct.TYPE_15__** %9, align 8
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @memcpy(%struct.TYPE_15__* %50, i32 %53, i32 8)
  %55 = load i64, i64* @apr_hook_debug_enabled, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %40
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %60)
  br label %62

62:                                               ; preds = %57, %40
  br label %63

63:                                               ; preds = %62
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %65, align 8
  store %struct.TYPE_16__* %66, %struct.TYPE_16__** %6, align 8
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %8, align 4
  br label %37

69:                                               ; preds = %37
  %70 = load i64, i64* @apr_hook_debug_enabled, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i32, i32* @stdout, align 4
  %74 = call i32 @fputc(i8 signext 10, i32 %73)
  br label %75

75:                                               ; preds = %72, %69
  %76 = load i32*, i32** %5, align 8
  %77 = call i32 @apr_pool_destroy(i32* %76)
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  ret %struct.TYPE_14__* %78
}

declare dso_local i32 @apr_pool_create(i32**, i32) #1

declare dso_local %struct.TYPE_16__* @prepare(i32*, %struct.TYPE_15__*, i32) #1

declare dso_local %struct.TYPE_16__* @tsort(%struct.TYPE_16__*, i32) #1

declare dso_local %struct.TYPE_14__* @apr_array_make(i32, i32, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_15__* @apr_array_push(%struct.TYPE_14__*) #1

declare dso_local i32 @memcpy(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @fputc(i8 signext, i32) #1

declare dso_local i32 @apr_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
