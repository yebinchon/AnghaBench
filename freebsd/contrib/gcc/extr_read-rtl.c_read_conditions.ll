; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_read-rtl.c_read_conditions.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_read-rtl.c_read_conditions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @read_conditions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_conditions(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @read_skip_spaces(i32* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 91
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @fatal_expected_char(i32* %13, i8 signext 91, i32 %14)
  br label %16

16:                                               ; preds = %12, %2
  br label %17

17:                                               ; preds = %56, %16
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @read_skip_spaces(i32* %18)
  store i32 %19, i32* %5, align 4
  %20 = icmp ne i32 %19, 93
  br i1 %20, label %21, label %60

21:                                               ; preds = %17
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 40
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @fatal_expected_char(i32* %25, i8 signext 40, i32 %26)
  br label %28

28:                                               ; preds = %24, %21
  %29 = load i8*, i8** %4, align 8
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @read_name(i8* %29, i32* %30)
  %32 = load i32*, i32** %3, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @validate_const_int(i32* %32, i8* %33)
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 @atoi(i8* %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @read_skip_spaces(i32* %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 34
  br i1 %40, label %41, label %45

41:                                               ; preds = %28
  %42 = load i32*, i32** %3, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @fatal_expected_char(i32* %42, i8 signext 34, i32 %43)
  br label %45

45:                                               ; preds = %41, %28
  %46 = load i32*, i32** %3, align 8
  %47 = call i8* @read_quoted_string(i32* %46)
  store i8* %47, i8** %6, align 8
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 @read_skip_spaces(i32* %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 41
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = load i32*, i32** %3, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @fatal_expected_char(i32* %53, i8 signext 41, i32 %54)
  br label %56

56:                                               ; preds = %52, %45
  %57 = load i8*, i8** %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @add_c_test(i8* %57, i32 %58)
  br label %17

60:                                               ; preds = %17
  %61 = load i32*, i32** %3, align 8
  %62 = call i32 @read_skip_spaces(i32* %61)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 41
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load i32*, i32** %3, align 8
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @fatal_expected_char(i32* %66, i8 signext 41, i32 %67)
  br label %69

69:                                               ; preds = %65, %60
  ret void
}

declare dso_local i32 @read_skip_spaces(i32*) #1

declare dso_local i32 @fatal_expected_char(i32*, i8 signext, i32) #1

declare dso_local i32 @read_name(i8*, i32*) #1

declare dso_local i32 @validate_const_int(i32*, i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i8* @read_quoted_string(i32*) #1

declare dso_local i32 @add_c_test(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
