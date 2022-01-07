; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/hash/extr_multihash.c_br_multihash_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/hash/extr_multihash.c_br_multihash_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, %struct.TYPE_7__** }
%struct.TYPE_7__ = type { i32 (i32*, i8*)*, i32 (i32*, i64, i32)*, i32 (i32*, i8*, i64)* }
%struct.TYPE_5__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_multihash_update(%struct.TYPE_6__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca %struct.TYPE_5__, align 4
  %13 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %14 = load i8*, i8** %5, align 8
  store i8* %14, i8** %7, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = and i64 %17, 127
  store i64 %18, i64* %8, align 8
  br label %19

19:                                               ; preds = %106, %3
  %20 = load i64, i64* %6, align 8
  %21 = icmp ugt i64 %20, 0
  br i1 %21, label %22, label %107

22:                                               ; preds = %19
  %23 = load i64, i64* %8, align 8
  %24 = sub i64 128, %23
  store i64 %24, i64* %9, align 8
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* %6, align 8
  %27 = icmp ugt i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i64, i64* %6, align 8
  store i64 %29, i64* %9, align 8
  br label %30

30:                                               ; preds = %28, %22
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %8, align 8
  %35 = add i64 %33, %34
  %36 = load i8*, i8** %7, align 8
  %37 = load i64, i64* %9, align 8
  %38 = call i32 @memcpy(i64 %35, i8* %36, i64 %37)
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* %8, align 8
  %41 = add i64 %40, %39
  store i64 %41, i64* %8, align 8
  %42 = load i64, i64* %9, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 %42
  store i8* %44, i8** %7, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* %6, align 8
  %47 = sub i64 %46, %45
  store i64 %47, i64* %6, align 8
  %48 = load i64, i64* %9, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, %48
  store i64 %52, i64* %50, align 8
  %53 = load i64, i64* %8, align 8
  %54 = icmp eq i64 %53, 128
  br i1 %54, label %55, label %106

55:                                               ; preds = %30
  store i32 1, i32* %10, align 4
  br label %56

56:                                               ; preds = %102, %55
  %57 = load i32, i32* %10, align 4
  %58 = icmp sle i32 %57, 6
  br i1 %58, label %59, label %105

59:                                               ; preds = %56
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %62, i64 %65
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  store %struct.TYPE_7__* %67, %struct.TYPE_7__** %11, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %69 = icmp ne %struct.TYPE_7__* %68, null
  br i1 %69, label %70, label %101

70:                                               ; preds = %59
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %72 = bitcast %struct.TYPE_6__* %71 to i8*
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @get_state_offset(i32 %73)
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %72, i64 %75
  store i8* %76, i8** %13, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 2
  %79 = load i32 (i32*, i8*, i64)*, i32 (i32*, i8*, i64)** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %81 = load i8*, i8** %13, align 8
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = sub nsw i64 %84, 128
  %86 = call i32 %79(i32* %80, i8* %81, i64 %85)
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  %89 = load i32 (i32*, i64, i32)*, i32 (i32*, i64, i32)** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i32 %89(i32* %90, i64 %93, i32 128)
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load i32 (i32*, i8*)*, i32 (i32*, i8*)** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %99 = load i8*, i8** %13, align 8
  %100 = call i32 %97(i32* %98, i8* %99)
  br label %101

101:                                              ; preds = %70, %59
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %10, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %10, align 4
  br label %56

105:                                              ; preds = %56
  store i64 0, i64* %8, align 8
  br label %106

106:                                              ; preds = %105, %30
  br label %19

107:                                              ; preds = %19
  ret void
}

declare dso_local i32 @memcpy(i64, i8*, i64) #1

declare dso_local i32 @get_state_offset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
