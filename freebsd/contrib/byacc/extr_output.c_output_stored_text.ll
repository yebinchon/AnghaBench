; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/byacc/extr_output.c_output_stored_text.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/byacc/extr_output.c_output_stored_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@text_file = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"text_file\00", align 1
@EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @output_stored_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_stored_text(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** @text_file, align 8
  %6 = call i32 @rewind(i32* %5)
  %7 = load i32*, i32** @text_file, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 @open_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %1
  %12 = load i32*, i32** @text_file, align 8
  store i32* %12, i32** %4, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @getc(i32* %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* @EOF, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  br label %34

18:                                               ; preds = %11
  %19 = load i32*, i32** %2, align 8
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @putc_code(i32* %19, i32 %20)
  br label %22

22:                                               ; preds = %27, %18
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @getc(i32* %23)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* @EOF, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32*, i32** %2, align 8
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @putc_code(i32* %28, i32 %29)
  br label %22

31:                                               ; preds = %22
  %32 = load i32*, i32** %2, align 8
  %33 = call i32 @write_code_lineno(i32* %32)
  br label %34

34:                                               ; preds = %31, %17
  ret void
}

declare dso_local i32 @rewind(i32*) #1

declare dso_local i32 @open_error(i8*) #1

declare dso_local i32 @getc(i32*) #1

declare dso_local i32 @putc_code(i32*, i32) #1

declare dso_local i32 @write_code_lineno(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
