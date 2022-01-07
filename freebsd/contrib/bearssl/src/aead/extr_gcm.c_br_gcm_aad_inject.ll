; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/aead/extr_gcm.c_br_gcm_aad_inject.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/aead/extr_gcm.c_br_gcm_aad_inject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i64, i32, i32, i32 (i32, i32, i8*, i64)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_gcm_aad_inject(%struct.TYPE_3__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = and i64 %12, 15
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %69

16:                                               ; preds = %3
  %17 = load i64, i64* %7, align 8
  %18 = sub i64 16, %17
  store i64 %18, i64* %9, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* %9, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %16
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load i64, i64* %7, align 8
  %27 = getelementptr i8, i8* %25, i64 %26
  %28 = load i8*, i8** %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @memcpy(i8* %27, i8* %28, i64 %29)
  %31 = load i64, i64* %6, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, %31
  store i64 %35, i64* %33, align 8
  br label %99

36:                                               ; preds = %16
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load i64, i64* %7, align 8
  %41 = getelementptr i8, i8* %39, i64 %40
  %42 = load i8*, i8** %5, align 8
  %43 = load i64, i64* %9, align 8
  %44 = call i32 @memcpy(i8* %41, i8* %42, i64 %43)
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 4
  %47 = load i32 (i32, i32, i8*, i64)*, i32 (i32, i32, i8*, i64)** %46, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 %47(i32 %50, i32 %53, i8* %56, i64 16)
  %58 = load i8*, i8** %5, align 8
  %59 = load i64, i64* %9, align 8
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  store i8* %60, i8** %5, align 8
  %61 = load i64, i64* %9, align 8
  %62 = load i64, i64* %6, align 8
  %63 = sub i64 %62, %61
  store i64 %63, i64* %6, align 8
  %64 = load i64, i64* %9, align 8
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, %64
  store i64 %68, i64* %66, align 8
  br label %69

69:                                               ; preds = %36, %3
  %70 = load i64, i64* %6, align 8
  %71 = and i64 %70, -16
  store i64 %71, i64* %8, align 8
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 4
  %74 = load i32 (i32, i32, i8*, i64)*, i32 (i32, i32, i8*, i64)** %73, align 8
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load i8*, i8** %5, align 8
  %82 = load i64, i64* %8, align 8
  %83 = call i32 %74(i32 %77, i32 %80, i8* %81, i64 %82)
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = load i8*, i8** %5, align 8
  %88 = load i64, i64* %8, align 8
  %89 = getelementptr inbounds i8, i8* %87, i64 %88
  %90 = load i64, i64* %6, align 8
  %91 = load i64, i64* %8, align 8
  %92 = sub i64 %90, %91
  %93 = call i32 @memcpy(i8* %86, i8* %89, i64 %92)
  %94 = load i64, i64* %6, align 8
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %97, %94
  store i64 %98, i64* %96, align 8
  br label %99

99:                                               ; preds = %69, %22
  ret void
}

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
