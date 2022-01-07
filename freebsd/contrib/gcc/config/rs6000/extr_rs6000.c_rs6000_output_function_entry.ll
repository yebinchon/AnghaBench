; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_output_function_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_output_function_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DEFAULT_ABI = common dso_local global i32 0, align 4
@DOT_SYMBOLS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"L.\00", align 1
@TARGET_AIX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rs6000_output_function_entry(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = getelementptr inbounds i8, i8* %5, i64 0
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp ne i32 %8, 46
  br i1 %9, label %10, label %26

10:                                               ; preds = %2
  %11 = load i32, i32* @DEFAULT_ABI, align 4
  switch i32 %11, label %12 [
    i32 130, label %14
    i32 128, label %24
    i32 129, label %24
  ]

12:                                               ; preds = %10
  %13 = call i32 (...) @gcc_unreachable()
  br label %14

14:                                               ; preds = %10, %12
  %15 = load i32, i32* @DOT_SYMBOLS, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @putc(i8 signext 46, i32* %18)
  br label %23

20:                                               ; preds = %14
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @ASM_OUTPUT_INTERNAL_LABEL_PREFIX(i32* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %20, %17
  br label %25

24:                                               ; preds = %10, %10
  br label %25

25:                                               ; preds = %24, %23
  br label %26

26:                                               ; preds = %25, %2
  %27 = load i64, i64* @TARGET_AIX, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i32*, i32** %3, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @RS6000_OUTPUT_BASENAME(i32* %30, i8* %31)
  br label %37

33:                                               ; preds = %26
  %34 = load i32*, i32** %3, align 8
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 @assemble_name(i32* %34, i8* %35)
  br label %37

37:                                               ; preds = %33, %29
  ret void
}

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @putc(i8 signext, i32*) #1

declare dso_local i32 @ASM_OUTPUT_INTERNAL_LABEL_PREFIX(i32*, i8*) #1

declare dso_local i32 @RS6000_OUTPUT_BASENAME(i32*, i8*) #1

declare dso_local i32 @assemble_name(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
