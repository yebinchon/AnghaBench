; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_print-rtl.c_print_rtl_single.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_print-rtl.c_print_rtl_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@outfile = common dso_local global i32* null, align 8
@sawclose = common dso_local global i64 0, align 8
@flag_dump_unnumbered = common dso_local global i32 0, align 4
@print_rtx_head = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @print_rtl_single(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32*, i32** %4, align 8
  store i32* %6, i32** @outfile, align 8
  store i64 0, i64* @sawclose, align 8
  %7 = load i32, i32* @flag_dump_unnumbered, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @NOTE_P(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4
  %15 = call i64 @NOTE_LINE_NUMBER(i32 %14)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %13, %9, %2
  %18 = load i32, i32* @print_rtx_head, align 4
  %19 = load i32*, i32** @outfile, align 8
  %20 = call i32 @fputs(i32 %18, i32* %19)
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @print_rtx(i32 %21)
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @putc(i8 signext 10, i32* %23)
  store i32 1, i32* %3, align 4
  br label %26

25:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %25, %17
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @NOTE_P(i32) #1

declare dso_local i64 @NOTE_LINE_NUMBER(i32) #1

declare dso_local i32 @fputs(i32, i32*) #1

declare dso_local i32 @print_rtx(i32) #1

declare dso_local i32 @putc(i8 signext, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
