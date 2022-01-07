; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_unwind-dw2-fde.c_binary_search_mixed_encoding_fdes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_unwind-dw2-fde.c_binary_search_mixed_encoding_fdes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8* }
%struct.object = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.fde_vector* }
%struct.fde_vector = type { i64, %struct.TYPE_6__** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (%struct.object*, i8*)* @binary_search_mixed_encoding_fdes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @binary_search_mixed_encoding_fdes(%struct.object* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.object*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.fde_vector*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.object* %0, %struct.object** %4, align 8
  store i8* %1, i8** %5, align 8
  %15 = load %struct.object*, %struct.object** %4, align 8
  %16 = getelementptr inbounds %struct.object, %struct.object* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.fde_vector*, %struct.fde_vector** %17, align 8
  store %struct.fde_vector* %18, %struct.fde_vector** %6, align 8
  store i64 0, i64* %7, align 8
  %19 = load %struct.fde_vector*, %struct.fde_vector** %6, align 8
  %20 = getelementptr inbounds %struct.fde_vector, %struct.fde_vector* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %8, align 8
  br label %22

22:                                               ; preds = %70, %2
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* %8, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %71

26:                                               ; preds = %22
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* %8, align 8
  %29 = add i64 %27, %28
  %30 = udiv i64 %29, 2
  store i64 %30, i64* %9, align 8
  %31 = load %struct.fde_vector*, %struct.fde_vector** %6, align 8
  %32 = getelementptr inbounds %struct.fde_vector, %struct.fde_vector* %31, i32 0, i32 1
  %33 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %32, align 8
  %34 = load i64, i64* %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %33, i64 %34
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  store %struct.TYPE_6__* %36, %struct.TYPE_6__** %10, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %38 = call i32 @get_fde_encoding(%struct.TYPE_6__* %37)
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* %14, align 4
  %41 = load %struct.object*, %struct.object** %4, align 8
  %42 = call i32 @base_from_object(i32 %40, %struct.object* %41)
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i8* @read_encoded_value_with_base(i32 %39, i32 %42, i8* %45, i64* %11)
  store i8* %46, i8** %13, align 8
  %47 = load i32, i32* %14, align 4
  %48 = and i32 %47, 15
  %49 = load i8*, i8** %13, align 8
  %50 = call i8* @read_encoded_value_with_base(i32 %48, i32 0, i8* %49, i64* %12)
  %51 = load i8*, i8** %5, align 8
  %52 = ptrtoint i8* %51 to i64
  %53 = load i64, i64* %11, align 8
  %54 = icmp slt i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %26
  %56 = load i64, i64* %9, align 8
  store i64 %56, i64* %8, align 8
  br label %70

57:                                               ; preds = %26
  %58 = load i8*, i8** %5, align 8
  %59 = ptrtoint i8* %58 to i64
  %60 = load i64, i64* %11, align 8
  %61 = load i64, i64* %12, align 8
  %62 = add nsw i64 %60, %61
  %63 = icmp sge i64 %59, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load i64, i64* %9, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %7, align 8
  br label %69

67:                                               ; preds = %57
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  store %struct.TYPE_6__* %68, %struct.TYPE_6__** %3, align 8
  br label %72

69:                                               ; preds = %64
  br label %70

70:                                               ; preds = %69, %55
  br label %22

71:                                               ; preds = %22
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  br label %72

72:                                               ; preds = %71, %67
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  ret %struct.TYPE_6__* %73
}

declare dso_local i32 @get_fde_encoding(%struct.TYPE_6__*) #1

declare dso_local i8* @read_encoded_value_with_base(i32, i32, i8*, i64*) #1

declare dso_local i32 @base_from_object(i32, %struct.object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
