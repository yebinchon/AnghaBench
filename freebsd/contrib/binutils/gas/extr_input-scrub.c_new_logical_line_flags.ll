; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_input-scrub.c_new_logical_line_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_input-scrub.c_new_logical_line_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@logical_input_line = common dso_local global i32 0, align 4
@physical_input_file = common dso_local global i8* null, align 8
@logical_input_file = common dso_local global i8* null, align 8
@physical_input_line = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @new_logical_line_flags(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %17 [
    i32 0, label %9
    i32 1, label %10
    i32 2, label %16
    i32 4, label %16
  ]

9:                                                ; preds = %3
  br label %19

10:                                               ; preds = %3
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, -1
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = call i32 (...) @abort() #3
  unreachable

15:                                               ; preds = %10
  br label %19

16:                                               ; preds = %3, %3
  br label %19

17:                                               ; preds = %3
  %18 = call i32 (...) @abort() #3
  unreachable

19:                                               ; preds = %16, %15, %9
  %20 = load i32, i32* %6, align 4
  %21 = icmp sge i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* @logical_input_line, align 4
  br label %42

24:                                               ; preds = %19
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %41

27:                                               ; preds = %24
  %28 = load i8*, i8** %5, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %41

30:                                               ; preds = %27
  %31 = load i8*, i8** %5, align 8
  %32 = load i8, i8* %31, align 1
  %33 = icmp ne i8 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %7, align 4
  %36 = and i32 %35, 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i8*, i8** @physical_input_file, align 8
  store i8* %39, i8** @logical_input_file, align 8
  %40 = load i32, i32* @physical_input_line, align 4
  store i32 %40, i32* @logical_input_line, align 4
  store i8* null, i8** %5, align 8
  br label %41

41:                                               ; preds = %38, %34, %30, %27, %24
  br label %42

42:                                               ; preds = %41, %22
  %43 = load i8*, i8** %5, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %55

45:                                               ; preds = %42
  %46 = load i8*, i8** @logical_input_file, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %45
  %49 = load i8*, i8** @logical_input_file, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = call i64 @strcmp(i8* %49, i8* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48, %45
  %54 = load i8*, i8** %5, align 8
  store i8* %54, i8** @logical_input_file, align 8
  store i32 1, i32* %4, align 4
  br label %56

55:                                               ; preds = %48, %42
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %55, %53
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #1

declare dso_local i64 @strcmp(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
