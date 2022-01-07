; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/extr_error.c_atf_error_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/extr_error.c_atf_error_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }

@error_on_flight = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @atf_error_new(i8* %0, i8* %1, i64 %2, void (%struct.TYPE_9__*, i8*, i64)* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca void (%struct.TYPE_9__*, i8*, i64)*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store void (%struct.TYPE_9__*, i8*, i64)* %3, void (%struct.TYPE_9__*, i8*, i64)** %8, align 8
  %10 = load i32, i32* @error_on_flight, align 4
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @PRE(i32 %13)
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i64, i64* %7, align 8
  %19 = icmp eq i64 %18, 0
  br label %20

20:                                               ; preds = %17, %4
  %21 = phi i1 [ true, %4 ], [ %19, %17 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @PRE(i32 %22)
  %24 = load i64, i64* %7, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load i8*, i8** %6, align 8
  %28 = icmp eq i8* %27, null
  br label %29

29:                                               ; preds = %26, %20
  %30 = phi i1 [ true, %20 ], [ %28, %26 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @PRE(i32 %31)
  %33 = call %struct.TYPE_9__* @malloc(i32 4)
  store %struct.TYPE_9__* %33, %struct.TYPE_9__** %9, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %35 = icmp eq %struct.TYPE_9__* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = call %struct.TYPE_9__* (...) @atf_no_memory_error()
  store %struct.TYPE_9__* %37, %struct.TYPE_9__** %9, align 8
  br label %54

38:                                               ; preds = %29
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = load i64, i64* %7, align 8
  %43 = load void (%struct.TYPE_9__*, i8*, i64)*, void (%struct.TYPE_9__*, i8*, i64)** %8, align 8
  %44 = call i32 @error_init(%struct.TYPE_9__* %39, i8* %40, i8* %41, i64 %42, void (%struct.TYPE_9__*, i8*, i64)* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %38
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %48 = call i32 @free(%struct.TYPE_9__* %47)
  %49 = call %struct.TYPE_9__* (...) @atf_no_memory_error()
  store %struct.TYPE_9__* %49, %struct.TYPE_9__** %9, align 8
  br label %53

50:                                               ; preds = %38
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  store i32 1, i32* %52, align 4
  store i32 1, i32* @error_on_flight, align 4
  br label %53

53:                                               ; preds = %50, %46
  br label %54

54:                                               ; preds = %53, %36
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %56 = icmp ne %struct.TYPE_9__* %55, null
  %57 = zext i1 %56 to i32
  %58 = call i32 @INV(i32 %57)
  %59 = load i32, i32* @error_on_flight, align 4
  %60 = call i32 @POST(i32 %59)
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  ret %struct.TYPE_9__* %61
}

declare dso_local i32 @PRE(i32) #1

declare dso_local %struct.TYPE_9__* @malloc(i32) #1

declare dso_local %struct.TYPE_9__* @atf_no_memory_error(...) #1

declare dso_local i32 @error_init(%struct.TYPE_9__*, i8*, i8*, i64, void (%struct.TYPE_9__*, i8*, i64)*) #1

declare dso_local i32 @free(%struct.TYPE_9__*) #1

declare dso_local i32 @INV(i32) #1

declare dso_local i32 @POST(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
