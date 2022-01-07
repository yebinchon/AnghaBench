; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_unwind-dw2-fde.c_end_fde_sort.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_unwind-dw2-fde.c_end_fde_sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i64 }
%struct.fde_accumulator = type { %struct.TYPE_11__*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }

@fde_mixed_encoding_compare = common dso_local global i32 0, align 4
@DW_EH_PE_absptr = common dso_local global i64 0, align 8
@fde_unencoded_compare = common dso_local global i32 0, align 4
@fde_single_encoding_compare = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.object*, %struct.fde_accumulator*, i64)* @end_fde_sort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @end_fde_sort(%struct.object* %0, %struct.fde_accumulator* %1, i64 %2) #0 {
  %4 = alloca %struct.object*, align 8
  %5 = alloca %struct.fde_accumulator*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.object* %0, %struct.object** %4, align 8
  store %struct.fde_accumulator* %1, %struct.fde_accumulator** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.fde_accumulator*, %struct.fde_accumulator** %5, align 8
  %9 = getelementptr inbounds %struct.fde_accumulator, %struct.fde_accumulator* %8, i32 0, i32 0
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %11 = icmp ne %struct.TYPE_11__* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %3
  %13 = load %struct.fde_accumulator*, %struct.fde_accumulator** %5, align 8
  %14 = getelementptr inbounds %struct.fde_accumulator, %struct.fde_accumulator* %13, i32 0, i32 0
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %6, align 8
  %19 = icmp eq i64 %17, %18
  br label %20

20:                                               ; preds = %12, %3
  %21 = phi i1 [ true, %3 ], [ %19, %12 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @gcc_assert(i32 %22)
  %24 = load %struct.object*, %struct.object** %4, align 8
  %25 = getelementptr inbounds %struct.object, %struct.object* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  %31 = load i32, i32* @fde_mixed_encoding_compare, align 4
  store i32 %31, i32* %7, align 4
  br label %45

32:                                               ; preds = %20
  %33 = load %struct.object*, %struct.object** %4, align 8
  %34 = getelementptr inbounds %struct.object, %struct.object* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @DW_EH_PE_absptr, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i32, i32* @fde_unencoded_compare, align 4
  store i32 %41, i32* %7, align 4
  br label %44

42:                                               ; preds = %32
  %43 = load i32, i32* @fde_single_encoding_compare, align 4
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %42, %40
  br label %45

45:                                               ; preds = %44, %30
  %46 = load %struct.fde_accumulator*, %struct.fde_accumulator** %5, align 8
  %47 = getelementptr inbounds %struct.fde_accumulator, %struct.fde_accumulator* %46, i32 0, i32 1
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %49 = icmp ne %struct.TYPE_11__* %48, null
  br i1 %49, label %50, label %94

50:                                               ; preds = %45
  %51 = load %struct.object*, %struct.object** %4, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.fde_accumulator*, %struct.fde_accumulator** %5, align 8
  %54 = getelementptr inbounds %struct.fde_accumulator, %struct.fde_accumulator* %53, i32 0, i32 0
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %54, align 8
  %56 = load %struct.fde_accumulator*, %struct.fde_accumulator** %5, align 8
  %57 = getelementptr inbounds %struct.fde_accumulator, %struct.fde_accumulator* %56, i32 0, i32 1
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %57, align 8
  %59 = call i32 @fde_split(%struct.object* %51, i32 %52, %struct.TYPE_11__* %55, %struct.TYPE_11__* %58)
  %60 = load %struct.fde_accumulator*, %struct.fde_accumulator** %5, align 8
  %61 = getelementptr inbounds %struct.fde_accumulator, %struct.fde_accumulator* %60, i32 0, i32 0
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.fde_accumulator*, %struct.fde_accumulator** %5, align 8
  %66 = getelementptr inbounds %struct.fde_accumulator, %struct.fde_accumulator* %65, i32 0, i32 1
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = add i64 %64, %69
  %71 = load i64, i64* %6, align 8
  %72 = icmp eq i64 %70, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @gcc_assert(i32 %73)
  %75 = load %struct.object*, %struct.object** %4, align 8
  %76 = load i32, i32* %7, align 4
  %77 = load %struct.fde_accumulator*, %struct.fde_accumulator** %5, align 8
  %78 = getelementptr inbounds %struct.fde_accumulator, %struct.fde_accumulator* %77, i32 0, i32 1
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %78, align 8
  %80 = call i32 @frame_heapsort(%struct.object* %75, i32 %76, %struct.TYPE_11__* %79)
  %81 = load %struct.object*, %struct.object** %4, align 8
  %82 = load i32, i32* %7, align 4
  %83 = load %struct.fde_accumulator*, %struct.fde_accumulator** %5, align 8
  %84 = getelementptr inbounds %struct.fde_accumulator, %struct.fde_accumulator* %83, i32 0, i32 0
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %84, align 8
  %86 = load %struct.fde_accumulator*, %struct.fde_accumulator** %5, align 8
  %87 = getelementptr inbounds %struct.fde_accumulator, %struct.fde_accumulator* %86, i32 0, i32 1
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %87, align 8
  %89 = call i32 @fde_merge(%struct.object* %81, i32 %82, %struct.TYPE_11__* %85, %struct.TYPE_11__* %88)
  %90 = load %struct.fde_accumulator*, %struct.fde_accumulator** %5, align 8
  %91 = getelementptr inbounds %struct.fde_accumulator, %struct.fde_accumulator* %90, i32 0, i32 1
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %91, align 8
  %93 = call i32 @free(%struct.TYPE_11__* %92)
  br label %101

94:                                               ; preds = %45
  %95 = load %struct.object*, %struct.object** %4, align 8
  %96 = load i32, i32* %7, align 4
  %97 = load %struct.fde_accumulator*, %struct.fde_accumulator** %5, align 8
  %98 = getelementptr inbounds %struct.fde_accumulator, %struct.fde_accumulator* %97, i32 0, i32 0
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %98, align 8
  %100 = call i32 @frame_heapsort(%struct.object* %95, i32 %96, %struct.TYPE_11__* %99)
  br label %101

101:                                              ; preds = %94, %50
  ret void
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @fde_split(%struct.object*, i32, %struct.TYPE_11__*, %struct.TYPE_11__*) #1

declare dso_local i32 @frame_heapsort(%struct.object*, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @fde_merge(%struct.object*, i32, %struct.TYPE_11__*, %struct.TYPE_11__*) #1

declare dso_local i32 @free(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
