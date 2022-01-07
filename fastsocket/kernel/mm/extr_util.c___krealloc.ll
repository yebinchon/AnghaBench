; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_util.c___krealloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_util.c___krealloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZERO_SIZE_PTR = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @__krealloc(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %9, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp ne i64 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i8*, i8** @ZERO_SIZE_PTR, align 8
  store i8* %17, i8** %4, align 8
  br label %46

18:                                               ; preds = %3
  %19 = load i8*, i8** %5, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i8*, i8** %5, align 8
  %23 = call i64 @ksize(i8* %22)
  store i64 %23, i64* %9, align 8
  br label %24

24:                                               ; preds = %21, %18
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* %6, align 8
  %27 = icmp uge i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i8*, i8** %5, align 8
  store i8* %29, i8** %4, align 8
  br label %46

30:                                               ; preds = %24
  %31 = load i64, i64* %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i8* @kmalloc_track_caller(i64 %31, i32 %32)
  store i8* %33, i8** %8, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %30
  %37 = load i8*, i8** %5, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load i8*, i8** %8, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = load i64, i64* %9, align 8
  %43 = call i32 @memcpy(i8* %40, i8* %41, i64 %42)
  br label %44

44:                                               ; preds = %39, %36, %30
  %45 = load i8*, i8** %8, align 8
  store i8* %45, i8** %4, align 8
  br label %46

46:                                               ; preds = %44, %28, %16
  %47 = load i8*, i8** %4, align 8
  ret i8* %47
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @ksize(i8*) #1

declare dso_local i8* @kmalloc_track_caller(i64, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
