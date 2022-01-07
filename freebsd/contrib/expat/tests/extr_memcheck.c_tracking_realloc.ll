; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/expat/tests/extr_memcheck.c_tracking_realloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/expat/tests/extr_memcheck.c_tracking_realloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i64, %struct.TYPE_7__*, %struct.TYPE_7__* }

@.str = private unnamed_addr constant [48 x i8] c"Attempting to realloc unallocated memory at %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Reallocator failure\0A\00", align 1
@alloc_head = common dso_local global %struct.TYPE_7__* null, align 8
@alloc_tail = common dso_local global %struct.TYPE_7__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @tracking_realloc(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i64, i64* %5, align 8
  %11 = call i8* @tracking_malloc(i64 %10)
  store i8* %11, i8** %3, align 8
  br label %84

12:                                               ; preds = %2
  %13 = load i64, i64* %5, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @tracking_free(i8* %16)
  store i8* null, i8** %3, align 8
  br label %84

18:                                               ; preds = %12
  %19 = load i8*, i8** %4, align 8
  %20 = call %struct.TYPE_7__* @find_allocation(i8* %19)
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %6, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %22 = icmp eq %struct.TYPE_7__* %21, null
  br i1 %22, label %23, label %62

23:                                               ; preds = %18
  %24 = load i8*, i8** %4, align 8
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* %24)
  %26 = call %struct.TYPE_7__* @malloc(i32 32)
  store %struct.TYPE_7__* %26, %struct.TYPE_7__** %6, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %28 = icmp eq %struct.TYPE_7__* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i8* null, i8** %3, align 8
  br label %84

31:                                               ; preds = %23
  %32 = load i8*, i8** %4, align 8
  %33 = load i64, i64* %5, align 8
  %34 = call i8* @realloc(i8* %32, i64 %33)
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %31
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %43 = call i32 @free(%struct.TYPE_7__* %42)
  store i8* null, i8** %3, align 8
  br label %84

44:                                               ; preds = %31
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 2
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %46, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** @alloc_head, align 8
  %48 = icmp eq %struct.TYPE_7__* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 3
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %51, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* %52, %struct.TYPE_7__** @alloc_tail, align 8
  store %struct.TYPE_7__* %52, %struct.TYPE_7__** @alloc_head, align 8
  br label %61

53:                                               ; preds = %44
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** @alloc_tail, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 3
  store %struct.TYPE_7__* %54, %struct.TYPE_7__** %56, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** @alloc_tail, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 2
  store %struct.TYPE_7__* %57, %struct.TYPE_7__** %59, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* %60, %struct.TYPE_7__** @alloc_tail, align 8
  br label %61

61:                                               ; preds = %53, %49
  br label %77

62:                                               ; preds = %18
  %63 = load i8*, i8** %4, align 8
  %64 = load i64, i64* %5, align 8
  %65 = call i8* @realloc(i8* %63, i64 %64)
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  store i8* %65, i8** %67, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = icmp eq i8* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %62
  %73 = load i8*, i8** %4, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  store i8* %73, i8** %75, align 8
  store i8* null, i8** %3, align 8
  br label %84

76:                                               ; preds = %62
  br label %77

77:                                               ; preds = %76, %61
  %78 = load i64, i64* %5, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  store i64 %78, i64* %80, align 8
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  store i8* %83, i8** %3, align 8
  br label %84

84:                                               ; preds = %77, %72, %41, %29, %15, %9
  %85 = load i8*, i8** %3, align 8
  ret i8* %85
}

declare dso_local i8* @tracking_malloc(i64) #1

declare dso_local i32 @tracking_free(i8*) #1

declare dso_local %struct.TYPE_7__* @find_allocation(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local %struct.TYPE_7__* @malloc(i32) #1

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i32 @free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
