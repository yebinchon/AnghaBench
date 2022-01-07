; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_fibheap.c_fibheap_replace_key_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_fibheap.c_fibheap_replace_key_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, %struct.TYPE_15__*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @fibheap_replace_key_data(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1, i64 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %17 = call i64 @fibheap_comp_data(%struct.TYPE_16__* %13, i64 %14, i8* %15, %struct.TYPE_15__* %16)
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  br label %72

20:                                               ; preds = %4
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 2
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %10, align 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %11, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 2
  store i8* %27, i8** %29, align 8
  %30 = load i64, i64* %8, align 8
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %34, align 8
  store %struct.TYPE_15__* %35, %struct.TYPE_15__** %12, align 8
  %36 = load i64, i64* %11, align 8
  %37 = load i64, i64* %8, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %20
  %40 = load i8*, i8** %10, align 8
  store i8* %40, i8** %5, align 8
  br label %72

41:                                               ; preds = %20
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %43 = icmp ne %struct.TYPE_15__* %42, null
  br i1 %43, label %44, label %58

44:                                               ; preds = %41
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %48 = call i64 @fibheap_compare(%struct.TYPE_16__* %45, %struct.TYPE_15__* %46, %struct.TYPE_15__* %47)
  %49 = icmp sle i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %44
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %54 = call i32 @fibheap_cut(%struct.TYPE_16__* %51, %struct.TYPE_15__* %52, %struct.TYPE_15__* %53)
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %57 = call i32 @fibheap_cascading_cut(%struct.TYPE_16__* %55, %struct.TYPE_15__* %56)
  br label %58

58:                                               ; preds = %50, %44, %41
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %62, align 8
  %64 = call i64 @fibheap_compare(%struct.TYPE_16__* %59, %struct.TYPE_15__* %60, %struct.TYPE_15__* %63)
  %65 = icmp sle i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %58
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  store %struct.TYPE_15__* %67, %struct.TYPE_15__** %69, align 8
  br label %70

70:                                               ; preds = %66, %58
  %71 = load i8*, i8** %10, align 8
  store i8* %71, i8** %5, align 8
  br label %72

72:                                               ; preds = %70, %39, %19
  %73 = load i8*, i8** %5, align 8
  ret i8* %73
}

declare dso_local i64 @fibheap_comp_data(%struct.TYPE_16__*, i64, i8*, %struct.TYPE_15__*) #1

declare dso_local i64 @fibheap_compare(%struct.TYPE_16__*, %struct.TYPE_15__*, %struct.TYPE_15__*) #1

declare dso_local i32 @fibheap_cut(%struct.TYPE_16__*, %struct.TYPE_15__*, %struct.TYPE_15__*) #1

declare dso_local i32 @fibheap_cascading_cut(%struct.TYPE_16__*, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
