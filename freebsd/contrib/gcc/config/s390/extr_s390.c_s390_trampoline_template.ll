; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_trampoline_template.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_trampoline_template.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Pmode = common dso_local global i32 0, align 4
@TARGET_64BIT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"basr\09%1,0\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"lmg\09%0,%1,14(%1)\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"br\09%1\00", align 1
@TRAMPOLINE_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"lm\09%0,%1,6(%1)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @s390_trampoline_template(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca [2 x i32], align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32, i32* @Pmode, align 4
  %5 = call i32 @gen_rtx_REG(i32 %4, i32 0)
  %6 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  store i32 %5, i32* %6, align 4
  %7 = load i32, i32* @Pmode, align 4
  %8 = call i32 @gen_rtx_REG(i32 %7, i32 1)
  %9 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  store i32 %8, i32* %9, align 4
  %10 = load i64, i64* @TARGET_64BIT, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %1
  %13 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %14 = call i32 @output_asm_insn(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %13)
  %15 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %16 = call i32 @output_asm_insn(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32* %15)
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %18 = call i32 @output_asm_insn(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* %17)
  %19 = load i32*, i32** %2, align 8
  %20 = load i32, i32* @TRAMPOLINE_SIZE, align 4
  %21 = sub nsw i32 %20, 10
  %22 = call i32 @ASM_OUTPUT_SKIP(i32* %19, i32 %21)
  br label %34

23:                                               ; preds = %1
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %25 = call i32 @output_asm_insn(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %24)
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %27 = call i32 @output_asm_insn(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32* %26)
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %29 = call i32 @output_asm_insn(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* %28)
  %30 = load i32*, i32** %2, align 8
  %31 = load i32, i32* @TRAMPOLINE_SIZE, align 4
  %32 = sub nsw i32 %31, 8
  %33 = call i32 @ASM_OUTPUT_SKIP(i32* %30, i32 %32)
  br label %34

34:                                               ; preds = %23, %12
  ret void
}

declare dso_local i32 @gen_rtx_REG(i32, i32) #1

declare dso_local i32 @output_asm_insn(i8*, i32*) #1

declare dso_local i32 @ASM_OUTPUT_SKIP(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
