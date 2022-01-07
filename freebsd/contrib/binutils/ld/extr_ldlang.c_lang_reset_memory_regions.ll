; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_lang_reset_memory_regions.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_lang_reset_memory_regions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32*, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_13__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8*, i8*, %struct.TYPE_9__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i64, %struct.TYPE_11__* }

@lang_memory_region_list = common dso_local global %struct.TYPE_10__* null, align 8
@lang_output_section_statement = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@FALSE = common dso_local global i8* null, align 8
@output_bfd = common dso_local global %struct.TYPE_12__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lang_reset_memory_regions() #0 {
  %1 = alloca %struct.TYPE_10__*, align 8
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = load %struct.TYPE_10__*, %struct.TYPE_10__** @lang_memory_region_list, align 8
  store %struct.TYPE_10__* %4, %struct.TYPE_10__** %1, align 8
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** @lang_memory_region_list, align 8
  store %struct.TYPE_10__* %5, %struct.TYPE_10__** %1, align 8
  br label %6

6:                                                ; preds = %17, %0
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %8 = icmp ne %struct.TYPE_10__* %7, null
  br i1 %8, label %9, label %21

9:                                                ; preds = %6
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 4
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  store i32* null, i32** %16, align 8
  br label %17

17:                                               ; preds = %9
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  store %struct.TYPE_10__* %20, %struct.TYPE_10__** %1, align 8
  br label %6

21:                                               ; preds = %6
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @lang_output_section_statement, i32 0, i32 0), align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %3, align 8
  br label %24

24:                                               ; preds = %34, %21
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %26 = icmp ne %struct.TYPE_9__* %25, null
  br i1 %26, label %27, label %38

27:                                               ; preds = %24
  %28 = load i8*, i8** @FALSE, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  %31 = load i8*, i8** @FALSE, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  br label %34

34:                                               ; preds = %27
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  store %struct.TYPE_9__* %37, %struct.TYPE_9__** %3, align 8
  br label %24

38:                                               ; preds = %24
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** @output_bfd, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %40, align 8
  store %struct.TYPE_11__* %41, %struct.TYPE_11__** %2, align 8
  br label %42

42:                                               ; preds = %53, %38
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %44 = icmp ne %struct.TYPE_11__* %43, null
  br i1 %44, label %45, label %57

45:                                               ; preds = %42
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  store i64 0, i64* %52, align 8
  br label %53

53:                                               ; preds = %45
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %55, align 8
  store %struct.TYPE_11__* %56, %struct.TYPE_11__** %2, align 8
  br label %42

57:                                               ; preds = %42
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
