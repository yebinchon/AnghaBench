; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/byacc/extr_output.c_output_trailing_text.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/byacc/extr_output.c_output_trailing_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@line = common dso_local global i64 0, align 8
@input_file = common dso_local global i32* null, align 8
@cptr = common dso_local global i32* null, align 8
@lineno = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@code_file = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @output_trailing_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_trailing_text() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = load i64, i64* @line, align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %66

7:                                                ; preds = %0
  %8 = load i32*, i32** @input_file, align 8
  store i32* %8, i32** %3, align 8
  %9 = load i32*, i32** @cptr, align 8
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* %1, align 4
  %12 = icmp eq i32 %11, 10
  br i1 %12, label %13, label %28

13:                                               ; preds = %7
  %14 = load i32, i32* @lineno, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* @lineno, align 4
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @getc(i32* %16)
  store i32 %17, i32* %1, align 4
  %18 = load i32, i32* @EOF, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %66

21:                                               ; preds = %13
  %22 = call i32 (...) @write_input_lineno()
  %23 = load i32, i32* @code_file, align 4
  %24 = load i32, i32* %1, align 4
  %25 = trunc i32 %24 to i8
  %26 = call i32 @putc_code(i32 %23, i8 signext %25)
  %27 = load i32, i32* %1, align 4
  store i32 %27, i32* %2, align 4
  br label %45

28:                                               ; preds = %7
  %29 = call i32 (...) @write_input_lineno()
  br label %30

30:                                               ; preds = %35, %28
  %31 = load i32, i32* @code_file, align 4
  %32 = load i32, i32* %1, align 4
  %33 = trunc i32 %32 to i8
  %34 = call i32 @putc_code(i32 %31, i8 signext %33)
  br label %35

35:                                               ; preds = %30
  %36 = load i32*, i32** @cptr, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** @cptr, align 8
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %1, align 4
  %39 = icmp ne i32 %38, 10
  br i1 %39, label %30, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @code_file, align 4
  %42 = load i32, i32* %1, align 4
  %43 = trunc i32 %42 to i8
  %44 = call i32 @putc_code(i32 %41, i8 signext %43)
  store i32 10, i32* %2, align 4
  br label %45

45:                                               ; preds = %40, %21
  br label %46

46:                                               ; preds = %51, %45
  %47 = load i32*, i32** %3, align 8
  %48 = call i32 @getc(i32* %47)
  store i32 %48, i32* %1, align 4
  %49 = load i32, i32* @EOF, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load i32, i32* @code_file, align 4
  %53 = load i32, i32* %1, align 4
  %54 = trunc i32 %53 to i8
  %55 = call i32 @putc_code(i32 %52, i8 signext %54)
  %56 = load i32, i32* %1, align 4
  store i32 %56, i32* %2, align 4
  br label %46

57:                                               ; preds = %46
  %58 = load i32, i32* %2, align 4
  %59 = icmp ne i32 %58, 10
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32, i32* @code_file, align 4
  %62 = call i32 @putc_code(i32 %61, i8 signext 10)
  br label %63

63:                                               ; preds = %60, %57
  %64 = load i32, i32* @code_file, align 4
  %65 = call i32 @write_code_lineno(i32 %64)
  br label %66

66:                                               ; preds = %63, %20, %6
  ret void
}

declare dso_local i32 @getc(i32*) #1

declare dso_local i32 @write_input_lineno(...) #1

declare dso_local i32 @putc_code(i32, i8 signext) #1

declare dso_local i32 @write_code_lineno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
