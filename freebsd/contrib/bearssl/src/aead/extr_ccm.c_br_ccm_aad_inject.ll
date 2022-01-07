; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/aead/extr_ccm.c_br_ccm_aad_inject.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/aead/extr_ccm.c_br_ccm_aad_inject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i8*, i32, %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_6__**, i32, i8*, i64)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_ccm_aad_inject(%struct.TYPE_5__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i8*, i8** %5, align 8
  store i8* %10, i8** %7, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* %8, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %67

16:                                               ; preds = %3
  %17 = load i64, i64* %8, align 8
  %18 = sub i64 8, %17
  store i64 %18, i64* %9, align 8
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp ugt i64 %19, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %16
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = load i64, i64* %8, align 8
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  %28 = load i8*, i8** %7, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @memcpy(i8* %27, i8* %28, i64 %29)
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* %6, align 8
  %33 = add i64 %31, %32
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  br label %100

36:                                               ; preds = %16
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = load i64, i64* %8, align 8
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  %42 = load i8*, i8** %7, align 8
  %43 = load i64, i64* %9, align 8
  %44 = call i32 @memcpy(i8* %41, i8* %42, i64 %43)
  %45 = load i64, i64* %9, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 %45
  store i8* %47, i8** %7, align 8
  %48 = load i64, i64* %9, align 8
  %49 = load i64, i64* %6, align 8
  %50 = sub i64 %49, %48
  store i64 %50, i64* %6, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 3
  %53 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %52, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32 (%struct.TYPE_6__**, i32, i8*, i64)*, i32 (%struct.TYPE_6__**, i32, i8*, i64)** %55, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 3
  %59 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %58, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 %56(%struct.TYPE_6__** %59, i32 %62, i8* %65, i64 8)
  br label %67

67:                                               ; preds = %36, %3
  %68 = load i64, i64* %6, align 8
  %69 = and i64 %68, 15
  store i64 %69, i64* %8, align 8
  %70 = load i64, i64* %8, align 8
  %71 = load i64, i64* %6, align 8
  %72 = sub i64 %71, %70
  store i64 %72, i64* %6, align 8
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 3
  %75 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %74, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32 (%struct.TYPE_6__**, i32, i8*, i64)*, i32 (%struct.TYPE_6__**, i32, i8*, i64)** %77, align 8
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 3
  %81 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %80, align 8
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load i8*, i8** %7, align 8
  %86 = load i64, i64* %6, align 8
  %87 = call i32 %78(%struct.TYPE_6__** %81, i32 %84, i8* %85, i64 %86)
  %88 = load i64, i64* %6, align 8
  %89 = load i8*, i8** %7, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 %88
  store i8* %90, i8** %7, align 8
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = load i8*, i8** %7, align 8
  %95 = load i64, i64* %8, align 8
  %96 = call i32 @memcpy(i8* %93, i8* %94, i64 %95)
  %97 = load i64, i64* %8, align 8
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  store i64 %97, i64* %99, align 8
  br label %100

100:                                              ; preds = %67, %22
  ret void
}

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
