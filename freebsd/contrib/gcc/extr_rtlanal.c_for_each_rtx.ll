; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlanal.c_for_each_rtx.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlanal.c_for_each_rtx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_RTX = common dso_local global i64 0, align 8
@non_rtx_starting_operands = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @for_each_rtx(i64* %0, i32 (i64*, i8*)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i32 (i64*, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64* %0, i64** %5, align 8
  store i32 (i64*, i8*)* %1, i32 (i64*, i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i32 (i64*, i8*)*, i32 (i64*, i8*)** %6, align 8
  %11 = load i64*, i64** %5, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call i32 %10(i64* %11, i8* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %46

17:                                               ; preds = %3
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %4, align 4
  br label %46

22:                                               ; preds = %17
  br label %23

23:                                               ; preds = %22
  %24 = load i64*, i64** %5, align 8
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @NULL_RTX, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %46

29:                                               ; preds = %23
  %30 = load i32*, i32** @non_rtx_starting_operands, align 8
  %31 = load i64*, i64** %5, align 8
  %32 = load i64, i64* %31, align 8
  %33 = call i64 @GET_CODE(i64 %32)
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %46

39:                                               ; preds = %29
  %40 = load i64*, i64** %5, align 8
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load i32 (i64*, i8*)*, i32 (i64*, i8*)** %6, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 @for_each_rtx_1(i64 %41, i32 %42, i32 (i64*, i8*)* %43, i8* %44)
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %39, %38, %28, %20, %16
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i32 @for_each_rtx_1(i64, i32, i32 (i64*, i8*)*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
