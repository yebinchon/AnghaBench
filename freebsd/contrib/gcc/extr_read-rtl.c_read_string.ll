; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_read-rtl.c_read_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_read-rtl.c_read_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@read_rtx_lineno = common dso_local global i32 0, align 4
@string_obstack = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"expected `\22' or `{', found `%c'\00", align 1
@read_rtx_filename = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i32)* @read_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @read_string(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @read_skip_spaces(i32* %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp eq i32 %11, 40
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @read_skip_spaces(i32* %14)
  store i32 %15, i32* %7, align 4
  br label %16

16:                                               ; preds = %13, %2
  %17 = load i32, i32* @read_rtx_lineno, align 4
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp eq i32 %18, 34
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32*, i32** %3, align 8
  %22 = call i8* @read_quoted_string(i32* %21)
  store i8* %22, i8** %5, align 8
  br label %39

23:                                               ; preds = %16
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %24, 123
  br i1 %25, label %26, label %34

26:                                               ; preds = %23
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = call i32 @obstack_1grow(i32* @string_obstack, i8 signext 42)
  br label %31

31:                                               ; preds = %29, %26
  %32 = load i32*, i32** %3, align 8
  %33 = call i8* @read_braced_string(i32* %32)
  store i8* %33, i8** %5, align 8
  br label %38

34:                                               ; preds = %23
  %35 = load i32*, i32** %3, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @fatal_with_file_and_line(i32* %35, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %34, %31
  br label %39

39:                                               ; preds = %38, %20
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %39
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @read_skip_spaces(i32* %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 41
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load i32*, i32** %3, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @fatal_expected_char(i32* %48, i8 signext 41, i32 %49)
  br label %51

51:                                               ; preds = %47, %42
  br label %52

52:                                               ; preds = %51, %39
  %53 = load i8*, i8** %5, align 8
  %54 = load i32, i32* @read_rtx_filename, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @set_rtx_ptr_loc(i8* %53, i32 %54, i32 %55)
  %57 = load i8*, i8** %5, align 8
  ret i8* %57
}

declare dso_local i32 @read_skip_spaces(i32*) #1

declare dso_local i8* @read_quoted_string(i32*) #1

declare dso_local i32 @obstack_1grow(i32*, i8 signext) #1

declare dso_local i8* @read_braced_string(i32*) #1

declare dso_local i32 @fatal_with_file_and_line(i32*, i8*, i32) #1

declare dso_local i32 @fatal_expected_char(i32*, i8 signext, i32) #1

declare dso_local i32 @set_rtx_ptr_loc(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
