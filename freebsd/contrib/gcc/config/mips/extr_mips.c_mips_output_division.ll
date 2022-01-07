; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_output_division.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_output_division.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_FIX_R4000 = common dso_local global i64 0, align 8
@TARGET_FIX_R4400 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"nop\00", align 1
@TARGET_CHECK_ZERO_DIV = common dso_local global i64 0, align 8
@TARGET_MIPS16 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"bnez\09%2,1f\0A\09break\097\0A1:\00", align 1
@GENERATE_DIVIDE_TRAPS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"teq\09%2,%.,7\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"%(bne\09%2,%.,1f\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"break\097%)\0A1:\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mips_output_division(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i8*, i8** %3, align 8
  store i8* %6, i8** %5, align 8
  %7 = load i64, i64* @TARGET_FIX_R4000, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i64, i64* @TARGET_FIX_R4400, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %9, %2
  %13 = load i8*, i8** %5, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @output_asm_insn(i8* %13, i32* %14)
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %16

16:                                               ; preds = %12, %9
  %17 = load i64, i64* @TARGET_CHECK_ZERO_DIV, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %41

19:                                               ; preds = %16
  %20 = load i64, i64* @TARGET_MIPS16, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i8*, i8** %5, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @output_asm_insn(i8* %23, i32* %24)
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %40

26:                                               ; preds = %19
  %27 = load i64, i64* @GENERATE_DIVIDE_TRAPS, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i8*, i8** %5, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @output_asm_insn(i8* %30, i32* %31)
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %39

33:                                               ; preds = %26
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @output_asm_insn(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32* %34)
  %36 = load i8*, i8** %5, align 8
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @output_asm_insn(i8* %36, i32* %37)
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8** %5, align 8
  br label %39

39:                                               ; preds = %33, %29
  br label %40

40:                                               ; preds = %39, %22
  br label %41

41:                                               ; preds = %40, %16
  %42 = load i8*, i8** %5, align 8
  ret i8* %42
}

declare dso_local i32 @output_asm_insn(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
