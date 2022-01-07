; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_unwind-dw2-fde.c_binary_search_single_encoding_fdes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_unwind-dw2-fde.c_binary_search_single_encoding_fdes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8* }
%struct.object = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.fde_vector* }
%struct.fde_vector = type { i64, %struct.TYPE_9__** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_9__* (%struct.object*, i8*)* @binary_search_single_encoding_fdes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_9__* @binary_search_single_encoding_fdes(%struct.object* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.object*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.fde_vector*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  store %struct.object* %0, %struct.object** %4, align 8
  store i8* %1, i8** %5, align 8
  %16 = load %struct.object*, %struct.object** %4, align 8
  %17 = getelementptr inbounds %struct.object, %struct.object* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.fde_vector*, %struct.fde_vector** %18, align 8
  store %struct.fde_vector* %19, %struct.fde_vector** %6, align 8
  %20 = load %struct.object*, %struct.object** %4, align 8
  %21 = getelementptr inbounds %struct.object, %struct.object* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.object*, %struct.object** %4, align 8
  %27 = call i64 @base_from_object(i32 %25, %struct.object* %26)
  store i64 %27, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %28 = load %struct.fde_vector*, %struct.fde_vector** %6, align 8
  %29 = getelementptr inbounds %struct.fde_vector, %struct.fde_vector* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %10, align 8
  br label %31

31:                                               ; preds = %75, %2
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* %10, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %76

35:                                               ; preds = %31
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* %10, align 8
  %38 = add i64 %36, %37
  %39 = udiv i64 %38, 2
  store i64 %39, i64* %11, align 8
  %40 = load %struct.fde_vector*, %struct.fde_vector** %6, align 8
  %41 = getelementptr inbounds %struct.fde_vector, %struct.fde_vector* %40, i32 0, i32 1
  %42 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %41, align 8
  %43 = load i64, i64* %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %42, i64 %43
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %44, align 8
  store %struct.TYPE_9__* %45, %struct.TYPE_9__** %12, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load i64, i64* %8, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i8* @read_encoded_value_with_base(i32 %46, i64 %47, i8* %50, i64* %13)
  store i8* %51, i8** %15, align 8
  %52 = load i32, i32* %7, align 4
  %53 = and i32 %52, 15
  %54 = load i8*, i8** %15, align 8
  %55 = call i8* @read_encoded_value_with_base(i32 %53, i64 0, i8* %54, i64* %14)
  %56 = load i8*, i8** %5, align 8
  %57 = ptrtoint i8* %56 to i64
  %58 = load i64, i64* %13, align 8
  %59 = icmp slt i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %35
  %61 = load i64, i64* %11, align 8
  store i64 %61, i64* %10, align 8
  br label %75

62:                                               ; preds = %35
  %63 = load i8*, i8** %5, align 8
  %64 = ptrtoint i8* %63 to i64
  %65 = load i64, i64* %13, align 8
  %66 = load i64, i64* %14, align 8
  %67 = add nsw i64 %65, %66
  %68 = icmp sge i64 %64, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = load i64, i64* %11, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %9, align 8
  br label %74

72:                                               ; preds = %62
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  store %struct.TYPE_9__* %73, %struct.TYPE_9__** %3, align 8
  br label %77

74:                                               ; preds = %69
  br label %75

75:                                               ; preds = %74, %60
  br label %31

76:                                               ; preds = %31
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  br label %77

77:                                               ; preds = %76, %72
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  ret %struct.TYPE_9__* %78
}

declare dso_local i64 @base_from_object(i32, %struct.object*) #1

declare dso_local i8* @read_encoded_value_with_base(i32, i64, i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
