; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/extr_error.c_error_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/extr_error.c_error_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i8*, void (%struct.TYPE_6__*, i8*, i64)*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*, i8*, i64, void (%struct.TYPE_6__*, i8*, i64)*)* @error_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @error_init(%struct.TYPE_6__* %0, i8* %1, i8* %2, i64 %3, void (%struct.TYPE_6__*, i8*, i64)* %4) #0 {
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca void (%struct.TYPE_6__*, i8*, i64)*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store void (%struct.TYPE_6__*, i8*, i64)* %4, void (%struct.TYPE_6__*, i8*, i64)** %10, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %5
  %15 = load i64, i64* %9, align 8
  %16 = icmp eq i64 %15, 0
  br label %17

17:                                               ; preds = %14, %5
  %18 = phi i1 [ true, %5 ], [ %16, %14 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @PRE(i32 %19)
  %21 = load i64, i64* %9, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = load i8*, i8** %8, align 8
  %25 = icmp eq i8* %24, null
  br label %26

26:                                               ; preds = %23, %17
  %27 = phi i1 [ true, %17 ], [ %25, %23 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @PRE(i32 %28)
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load void (%struct.TYPE_6__*, i8*, i64)*, void (%struct.TYPE_6__*, i8*, i64)** %10, align 8
  %36 = icmp eq void (%struct.TYPE_6__*, i8*, i64)* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %26
  br label %40

38:                                               ; preds = %26
  %39 = load void (%struct.TYPE_6__*, i8*, i64)*, void (%struct.TYPE_6__*, i8*, i64)** %10, align 8
  br label %40

40:                                               ; preds = %38, %37
  %41 = phi void (%struct.TYPE_6__*, i8*, i64)* [ @error_format, %37 ], [ %39, %38 ]
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  store void (%struct.TYPE_6__*, i8*, i64)* %41, void (%struct.TYPE_6__*, i8*, i64)** %43, align 8
  store i32 1, i32* %11, align 4
  %44 = load i8*, i8** %8, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 3
  store i32* null, i32** %48, align 8
  br label %67

49:                                               ; preds = %40
  %50 = load i64, i64* %9, align 8
  %51 = call i32* @malloc(i64 %50)
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 3
  store i32* %51, i32** %53, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 3
  %56 = load i32*, i32** %55, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %49
  store i32 0, i32* %11, align 4
  br label %66

59:                                               ; preds = %49
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 3
  %62 = load i32*, i32** %61, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = load i64, i64* %9, align 8
  %65 = call i32 @memcpy(i32* %62, i8* %63, i64 %64)
  br label %66

66:                                               ; preds = %59, %58
  br label %67

67:                                               ; preds = %66, %46
  %68 = load i32, i32* %11, align 4
  ret i32 %68
}

declare dso_local i32 @PRE(i32) #1

declare dso_local void @error_format(%struct.TYPE_6__*, i8*, i64) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
