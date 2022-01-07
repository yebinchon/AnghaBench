; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/flex/extr_filter.c_filter_create_int.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/flex/extr_filter.c_filter_create_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filter = type { i32 (%struct.filter*)*, %struct.filter*, i8*, i32*, i64 }

@.str = private unnamed_addr constant [39 x i8] c"flex_alloc failed in filter_create_int\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.filter* @filter_create_int(%struct.filter* %0, i32 (%struct.filter*)* %1, i8* %2) #0 {
  %4 = alloca %struct.filter*, align 8
  %5 = alloca i32 (%struct.filter*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.filter*, align 8
  store %struct.filter* %0, %struct.filter** %4, align 8
  store i32 (%struct.filter*)* %1, i32 (%struct.filter*)** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = call i64 @flex_alloc(i32 40)
  %9 = inttoptr i64 %8 to %struct.filter*
  store %struct.filter* %9, %struct.filter** %7, align 8
  %10 = load %struct.filter*, %struct.filter** %7, align 8
  %11 = icmp ne %struct.filter* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @flexerror(i32 %13)
  br label %15

15:                                               ; preds = %12, %3
  %16 = load %struct.filter*, %struct.filter** %7, align 8
  %17 = call i32 @memset(%struct.filter* %16, i32 0, i32 40)
  %18 = load %struct.filter*, %struct.filter** %7, align 8
  %19 = getelementptr inbounds %struct.filter, %struct.filter* %18, i32 0, i32 1
  store %struct.filter* null, %struct.filter** %19, align 8
  %20 = load %struct.filter*, %struct.filter** %7, align 8
  %21 = getelementptr inbounds %struct.filter, %struct.filter* %20, i32 0, i32 4
  store i64 0, i64* %21, align 8
  %22 = load %struct.filter*, %struct.filter** %7, align 8
  %23 = getelementptr inbounds %struct.filter, %struct.filter* %22, i32 0, i32 3
  store i32* null, i32** %23, align 8
  %24 = load i32 (%struct.filter*)*, i32 (%struct.filter*)** %5, align 8
  %25 = load %struct.filter*, %struct.filter** %7, align 8
  %26 = getelementptr inbounds %struct.filter, %struct.filter* %25, i32 0, i32 0
  store i32 (%struct.filter*)* %24, i32 (%struct.filter*)** %26, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load %struct.filter*, %struct.filter** %7, align 8
  %29 = getelementptr inbounds %struct.filter, %struct.filter* %28, i32 0, i32 2
  store i8* %27, i8** %29, align 8
  %30 = load %struct.filter*, %struct.filter** %4, align 8
  %31 = icmp ne %struct.filter* %30, null
  br i1 %31, label %32, label %46

32:                                               ; preds = %15
  br label %33

33:                                               ; preds = %38, %32
  %34 = load %struct.filter*, %struct.filter** %4, align 8
  %35 = getelementptr inbounds %struct.filter, %struct.filter* %34, i32 0, i32 1
  %36 = load %struct.filter*, %struct.filter** %35, align 8
  %37 = icmp ne %struct.filter* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load %struct.filter*, %struct.filter** %4, align 8
  %40 = getelementptr inbounds %struct.filter, %struct.filter* %39, i32 0, i32 1
  %41 = load %struct.filter*, %struct.filter** %40, align 8
  store %struct.filter* %41, %struct.filter** %4, align 8
  br label %33

42:                                               ; preds = %33
  %43 = load %struct.filter*, %struct.filter** %7, align 8
  %44 = load %struct.filter*, %struct.filter** %4, align 8
  %45 = getelementptr inbounds %struct.filter, %struct.filter* %44, i32 0, i32 1
  store %struct.filter* %43, %struct.filter** %45, align 8
  br label %46

46:                                               ; preds = %42, %15
  %47 = load %struct.filter*, %struct.filter** %7, align 8
  ret %struct.filter* %47
}

declare dso_local i64 @flex_alloc(i32) #1

declare dso_local i32 @flexerror(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @memset(%struct.filter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
